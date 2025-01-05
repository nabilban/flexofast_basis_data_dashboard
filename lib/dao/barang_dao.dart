import 'package:drift/drift.dart';
import 'package:flexofast_basis_data_dashboard/database/datasource.dart';
import 'package:flexofast_basis_data_dashboard/entity/barang_entity.dart';
part 'barang_dao.g.dart';

@DriftAccessor(tables: [BarangEntity])
class BarangDao extends DatabaseAccessor<Datasource> with _$BarangDaoMixin {
  BarangDao(super.db);

  static final BarangDao instance = BarangDao(Datasource.instance);

  Future<List<BarangEntityData>> getAllBarang() async {
    final result = await select(db.barangEntity).get();
    return result;
  }

  Future<BarangEntityData> getBarangById(int id) async {
    final result = await (select(db.barangEntity)
          ..where((tbl) => tbl.id.equals(id)))
        .getSingle();
    return result;
  }

  Future<int> insertBarang(BarangEntityCompanion barang) async {
    final data = BarangEntityCompanion.insert(
        nama: barang.nama.value, createdAt: Value(DateTime.now()));

    final result = await into(db.barangEntity).insert(data);
    return result;
  }

  Future updateBarang(BarangEntityData barang) async {
    await update(db.barangEntity).replace(barang);
  }

  Future deleteBarang(int id) async {
    await (delete(db.barangEntity)..where((tbl) => tbl.id.equals(id))).go();
  }
}
