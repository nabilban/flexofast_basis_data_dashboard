import 'package:drift/drift.dart';
import 'package:flexofast_basis_data_dashboard/database/datasource.dart';
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

      await insertTagihan(TagihanEntityCompanion(
          idSewa: Value(createdSewaId),
          biaya: Value(biaya),
          batasWaktu: Value(DateTime.now().add(1.days))));

      return getTagihanBySewaId(createdSewaId);
    });

    return result;
  }

  Future<TagihanEntityData> getTagihanBySewaId(int id) async {
    final result = await (select(db.tagihanEntity)
          ..where((tbl) => tbl.idSewa.equals(id)))
        .getSingle();
    return result;
  }

  Future<TagihanEntityData> getTagihanByIdSewa(int id) async {
    final result = await (select(db.tagihanEntity)
          ..where((tbl) => tbl.idSewa.equals(id)))
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
      int idSewa, PembayaranEntityCompanion pembayaran) async {
    final result = transaction(
      () async {
        final pembayaranId = await into(db.pembayaranEntity).insert(pembayaran);

        final tagihan = await getTagihanBySewaId(idSewa);
        await updateTagihan(
            tagihan.copyWith(idPembayaran: Value(pembayaranId)));
        return (select(db.pembayaranEntity)
              ..where((tbl) => tbl.id.equals(pembayaranId)))
            .getSingle();
      },
    );

    return result;
  }

  Future<DetailSewaViewData?> getDetailSewa(int id) async {
    final query = select(sewaEntity).join([
      innerJoin(gudangEntity, gudangEntity.id.equalsExp(sewaEntity.idGudang)),
      innerJoin(clientEntity, clientEntity.id.equalsExp(sewaEntity.idClient)),
      innerJoin(tagihanEntity, tagihanEntity.idSewa.equalsExp(sewaEntity.id)),
    ])
      ..where(sewaEntity.id.equals(id));

    final result = await query.get();

    if (result.isEmpty) {
      return null;
    }

    final data = result[0];

    return DetailSewaViewData(
      id: id,
      tanggalMulai: data.readTable(sewaEntity).tanggalMulai,
      tanggalAkhir: data.readTable(sewaEntity).tanggalAkhir,
      nama: data.readTable(clientEntity).nama,
      noHandphone: data.readTable(clientEntity).noHandphone,
      tipe: data.readTable(gudangEntity).tipe,
      alamat: data.readTable(gudangEntity).alamat,
      volume: data.readTable(gudangEntity).volume,
      biaya: data.readTable(tagihanEntity).biaya,
    );
  }

  Future<List<SewaEntityData>> getSewaByClient(int id) async {
    final result = await (select(db.sewaEntity)
          ..where((tbl) => tbl.idClient.equals(id)))
        .get();
    return result;
  }
}
