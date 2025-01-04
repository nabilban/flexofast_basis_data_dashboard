import 'package:drift/drift.dart';
import 'package:flexofast_basis_data_dashboard/database/datasource.dart';
import 'package:flexofast_basis_data_dashboard/entity/barang_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/client_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/gudang_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/persetujuan_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/transaksi_entity.dart';

part 'transaksi_dao.g.dart';

@DriftAccessor(tables: [
  TransaksiEntity,
  GudangEntity,
  ClientEntity,
  BarangEntity,
  PersetujuanEntity
])
class TransaksiDao extends DatabaseAccessor<Datasource>
    with _$TransaksiDaoMixin {
  TransaksiDao(super.db);

  static final TransaksiDao instance = TransaksiDao(Datasource.instance);

  Future<List<TransaksiEntityData>> getAllTransaksi() async {
    final result = await select(db.transaksiEntity).get();
    return result;
  }

  Future<void> insertTransaksiDanPersetujuan(
      TransaksiEntityCompanion transaksi) async {
    final result = transaction(() async {
      final idTransaksi = await into(db.transaksiEntity).insert(transaksi);
      final persetujuan = PersetujuanEntityCompanion(
        idTransaksi: Value(idTransaksi),
        createdAt: Value(DateTime.now()),
      );
      await into(db.persetujuanEntity).insert(persetujuan);
    });
    return result;
  }

  Future<PersetujuanEntityData> getPersetujuanByTransaksi(
      int idTransaksi) async {
    final result = await (select(db.persetujuanEntity)
          ..where((tbl) => tbl.idTransaksi.equals(idTransaksi)))
        .getSingle();
    return result;
  }

  Future<void> persetujuanTransaksi(int idPegawai, int idTransaksi) async {
    final result = transaction(() async {
      final persetujuan = await getPersetujuanByTransaksi(idTransaksi);
      final updatedPersetujuan =
          persetujuan.copyWith(idPegawai: Value(idPegawai));
      await update(db.persetujuanEntity).replace(updatedPersetujuan);
    });
    return result;
  }

  Future<List<TransaksiEntityData>> getAllUnacceptedTransaksi() async {
    final persetujuanNoPegawai = await (select(db.persetujuanEntity)
          ..where((tbl) => tbl.idPegawai.isNull()))
        .get();
    final transaksiIds =
        persetujuanNoPegawai.map((e) => e.idTransaksi).toList();

    final result = await (select(db.transaksiEntity)
          ..where((tbl) => tbl.id.isIn(transaksiIds)))
        .get();

    return result;
  }

  Future<List<int>> getAllAcceptedTransaksiId() async {
    final persetujuanNoPegawai = await (select(db.persetujuanEntity)
          ..where((tbl) => tbl.idPegawai.isNotNull()))
        .get();

    final transaksiIds =
        persetujuanNoPegawai.map((e) => e.idTransaksi).toList();

    return transaksiIds;
  }

  Future<List<TransaksiEntityData>> getAllTransaksiByClientId(
      int clientId) async {
    final result = await (select(db.transaksiEntity)
          ..where((tbl) => tbl.idClient.equals(clientId)))
        .get();

    return result;
  }
}
