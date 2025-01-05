import 'package:drift/drift.dart';
import 'package:flexofast_basis_data_dashboard/database/datasource.dart';
import 'package:flexofast_basis_data_dashboard/entity/pegawai_entity.dart';
part 'pegawai_dao.g.dart';

@DriftAccessor(tables: [PegawaiEntity])
class PegawaiDao extends DatabaseAccessor<Datasource> with _$PegawaiDaoMixin {
  PegawaiDao(super.db);

  static PegawaiDao instance = PegawaiDao(Datasource.instance);

  Future<List<PegawaiEntityData>> getAllPegawai() async {
    final result = await select(db.pegawaiEntity).get();
    return result;
  }

  Future<PegawaiEntityData> getPegawaiById(int id) async {
    final result = await (select(db.pegawaiEntity)
          ..where((tbl) => tbl.id.equals(id)))
        .getSingle();
    return result;
  }

  Future<void> insertPegawai(PegawaiEntityCompanion pegawai) async {
    final data = PegawaiEntityCompanion.insert(
      nama: pegawai.nama.value,
      createdAt: Value(DateTime.now()),
    );
    await into(db.pegawaiEntity).insert(data);
  }

  Future<void> updatePegawai(PegawaiEntityData pegawai) async {
    await update(db.pegawaiEntity).replace(pegawai);
  }

  Future<void> deletePegawai(PegawaiEntityData pegawai) async {
    await delete(db.pegawaiEntity).delete(pegawai);
  }
}
