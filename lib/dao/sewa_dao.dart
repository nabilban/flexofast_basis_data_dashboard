import 'package:drift/drift.dart';
import 'package:flexofast_basis_data_dashboard/datasource/datasource.dart';
import 'package:flexofast_basis_data_dashboard/entity/client_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/gudang_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/pembayaran_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/sewa_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/tagihan_entity.dart';
import 'package:time/time.dart';
part 'sewa_dao.g.dart';

@DriftAccessor(tables: [
  ClientEntity,
  GudangEntity,
  SewaEntity,
  PembayaranEntity,
  TagihanEntity,
])
class SewaDao extends DatabaseAccessor<Datasource> with _$SewaDaoMixin {
  SewaDao(super.db);

  static final SewaDao instance = SewaDao(Datasource.instance);

  Future<List<SewaEntityData>> getAllSewa() async {
    final result = await select(db.sewaEntity).get();
    return result;
  }

  Future<TagihanEntityData> createSewaAndGenerateTagihan(
      SewaEntityCompanion sewa) async {
    final result = transaction(() async {
      final gudangYangDisewa = await (select(db.gudangEntity)
            ..where((tbl) => tbl.id.equals(sewa.idGudang.value)))
          .getSingle();

      final sewaHari =
          sewa.tanggalAkhir.value.difference(sewa.tanggalMulai.value).inDays;
      final biaya = gudangYangDisewa.harga * sewaHari;

      final createdSewaId = await into(db.sewaEntity).insert(sewa);

      final tagihanId = await insertTagihan(TagihanEntityCompanion.insert(
          idSewa: createdSewaId,
          biaya: biaya,
          batasWaktu: DateTime.now().add(1.days)));

      return getTagihanById(tagihanId);
    });

    return result;
  }

  Future<TagihanEntityData> getTagihanBySewaId(int id) async {
    final result = await (select(db.tagihanEntity)
          ..where((tbl) => tbl.idSewa.equals(id)))
        .getSingle();
    return result;
  }

  Future<TagihanEntityData> getTagihanById(int id) async {
    final result = await (select(db.tagihanEntity)
          ..where((tbl) => tbl.id.equals(id)))
        .getSingle();
    return result;
  }

  Future<int> insertTagihan(TagihanEntityCompanion tagihan) async {
    final result = await into(db.tagihanEntity).insert(tagihan);
    return result;
  }

  Future updateTagihan(TagihanEntityData tagihan) async {
    await update(db.tagihanEntity).replace(tagihan);
  }

  Future<PembayaranEntityData> insertPembayaran(
      int idTagihan, PembayaranEntityCompanion pembayaran) async {
    final result = transaction(
      () async {
        final pembayaranId = await into(db.pembayaranEntity).insert(pembayaran);
        final tagihan = await getTagihanById(idTagihan);
        await updateTagihan(
            tagihan.copyWith(idPembayaran: Value(pembayaranId)));
        return (select(db.pembayaranEntity)
              ..where((tbl) => tbl.id.equals(pembayaranId)))
            .getSingle();
      },
    );

    return result;
  }
}
