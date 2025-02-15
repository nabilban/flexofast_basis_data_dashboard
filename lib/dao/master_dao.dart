import 'package:drift/drift.dart';
import 'package:flexofast_basis_data_dashboard/database/datasource.dart';
import 'package:flexofast_basis_data_dashboard/entity/distributor_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/gudang_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/pabrik_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/sewa_entity.dart';
part 'master_dao.g.dart';

@DriftAccessor(
    tables: [GudangEntity, DistributorEntity, PabrikEntity, SewaEntity])
class MasterDao extends DatabaseAccessor<Datasource> with _$MasterDaoMixin {
  MasterDao(super.db);

  static final MasterDao instance = MasterDao(Datasource.instance);

  Future<List<GudangEntityData>> getAvailableGudang() async {
    final gudangs = await select(db.gudangEntity).get();
    final sewas = await select(db.sewaEntity).get();

    final gudangPernahTersewa = gudangs
        .where((gudang) {
          return sewas.any((sewa) => sewa.idGudang == gudang.id);
        })
        .toSet()
        .toList();

    final gudangBelumPernahTersewa = gudangs
        .where((gudang) => !gudangPernahTersewa.contains(gudang))
        .toList();

    final today = DateTime.now();

    final onGoings = sewas.where((sewa) {
      return sewa.tanggalMulai.isBefore(today) &&
          today.isBefore(sewa.tanggalAkhir);
    }).toList();

    final gudangTidakDisewa = gudangPernahTersewa.where((gudang) {
      return !onGoings.any((sewa) => sewa.idGudang == gudang.id);
    }).toList();

    return [...gudangBelumPernahTersewa, ...gudangTidakDisewa];
  }

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
    final data = GudangEntityCompanion.insert(
      tipe: gudang.tipe.value,
      volume: gudang.volume.value,
      alamat: gudang.alamat.value,
      harga: gudang.harga.value,
      createdAt: Value(DateTime.now()),
    );
    final result = await into(db.gudangEntity).insert(data);
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
    final data = DistributorEntityCompanion.insert(
      nama: distributor.nama.value,
      alamat: distributor.alamat.value,
      createdAt: Value(DateTime.now()),
    );
    final result = await into(db.distributorEntity).insert(data);
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
    final data = PabrikEntityCompanion.insert(
      nama: pabrik.nama.value,
      alamat: pabrik.alamat.value,
      createdAt: Value(DateTime.now()),
    );
    final result = await into(db.pabrikEntity).insert(data);
    return result;
  }

  Future updatePabrik(PabrikEntityCompanion pabrik) async {
    await update(db.pabrikEntity).replace(pabrik);
  }

  Future deletePabrik(int id) async {
    await (delete(db.pabrikEntity)..where((tbl) => tbl.id.equals(id))).go();
  }
}
