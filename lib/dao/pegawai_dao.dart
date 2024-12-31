import 'package:drift/drift.dart';
import 'package:flexofast_basis_data_dashboard/datasource/datasource.dart';
import 'package:flexofast_basis_data_dashboard/entity/pegawai_entity.dart';
part 'pegawai_dao.g.dart';

@DriftAccessor(tables: [PegawaiEntity])
class PegawaiDao extends DatabaseAccessor<Datasource> with _$PegawaiDaoMixin {
  PegawaiDao(super.db);

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
}
