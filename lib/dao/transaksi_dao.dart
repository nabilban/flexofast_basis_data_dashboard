import 'package:drift/drift.dart';
import 'package:flexofast_basis_data_dashboard/database/datasource.dart';
import 'package:flexofast_basis_data_dashboard/entity/barang_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/client_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/gudang_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/transaksi_entity.dart';

part 'transaksi_dao.g.dart';

@DriftAccessor(
    tables: [TransaksiEntity, GudangEntity, ClientEntity, BarangEntity])
class TransaksiDao extends DatabaseAccessor<Datasource>
    with _$TransaksiDaoMixin {
  TransaksiDao(super.db);

  static final TransaksiDao instance = TransaksiDao(Datasource.instance);

  Future<List<TransaksiEntityData>> getAllTransaksi() async {
    final result = await select(db.transaksiEntity).get();
    return result;
  }

  Future<TransaksiEntityData?> getTransaksiById(int id) async {
    final result = await (select(db.transaksiEntity)
          ..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
    return result;
  }

  Future<void> insertTransaksi(TransaksiEntityCompanion transaksi) async {
    await into(db.transaksiEntity).insert(transaksi);
  }
}
