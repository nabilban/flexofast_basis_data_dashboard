import 'package:drift/drift.dart';
import 'package:flexofast_basis_data_dashboard/database/datasource.dart';
import 'package:flexofast_basis_data_dashboard/entity/distributor_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/gudang_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/pabrik_entity.dart';
part 'master_dao.g.dart';

@DriftAccessor(tables: [GudangEntity, DistributorEntity, PabrikEntity])
class MasterDao extends DatabaseAccessor<Datasource> with _$MasterDaoMixin {
  MasterDao(super.db);

  static final MasterDao instance = MasterDao(Datasource.instance);

  Future<List<GudangEntityData>> getAllGudang() async {
    final result = await select(db.gudangEntity).get();
    return result;
  }

  Future<GudangEntityData> getGudangById(int id) async {
    final result = await (select(db.gudangEntity)
          ..where((tbl) => tbl.id.equals(id)))
        .getSingle();
    return result;
  }

  Future<int> insertGudang(GudangEntityCompanion gudang) async {
    final result = await into(db.gudangEntity).insert(gudang);
    return result;
  }

  Future updateGudang(GudangEntityData gudang) async {
    await update(db.gudangEntity).replace(gudang);
  }

  Future deleteGudang(int id) async {
    await (delete(db.gudangEntity)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<List<DistributorEntityData>> getAllDistributor() async {
    final result = await select(db.distributorEntity).get();
    return result;
  }

  Future<DistributorEntityData> getDistributorById(int id) async {
    final result = await (select(db.distributorEntity)
          ..where((tbl) => tbl.id.equals(id)))
        .getSingle();
    return result;
  }

  Future<int> insertDistributor(DistributorEntityCompanion distributor) async {
    final result = await into(db.distributorEntity).insert(distributor);
    return result;
  }

  Future updateDistributor(DistributorEntityCompanion distributor) async {
    await update(db.distributorEntity).replace(distributor);
  }

  Future deleteDistributor(int id) async {
    await (delete(db.distributorEntity)..where((tbl) => tbl.id.equals(id)))
        .go();
  }

  Future<List<PabrikEntityData>> getAllPabrik() async {
    final result = await select(db.pabrikEntity).get();
    return result;
  }

  Future<PabrikEntityData> getPabrikById(int id) async {
    final result = await (select(db.pabrikEntity)
          ..where((tbl) => tbl.id.equals(id)))
        .getSingle();
    return result;
  }

  Future<int> insertPabrik(PabrikEntityCompanion pabrik) async {
    final result = await into(db.pabrikEntity).insert(pabrik);
    return result;
  }

  Future updatePabrik(PabrikEntityCompanion pabrik) async {
    await update(db.pabrikEntity).replace(pabrik);
  }

  Future deletePabrik(int id) async {
    await (delete(db.pabrikEntity)..where((tbl) => tbl.id.equals(id))).go();
  }
}
