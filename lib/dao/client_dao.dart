import 'package:drift/drift.dart';
import 'package:flexofast_basis_data_dashboard/datasource/datasource.dart';
import 'package:flexofast_basis_data_dashboard/entity/client_entity.dart';
part 'client_dao.g.dart';

@DriftAccessor(tables: [ClientEntity])
class ClientDao extends DatabaseAccessor<Datasource> with _$ClientDaoMixin {
  ClientDao(super.db);

  static ClientDao instance = ClientDao(Datasource.instance);

  Future<List<ClientEntityData>> getAllClient() async {
    final result = await select(db.clientEntity).get();
    return result;
  }

  Future<ClientEntityData> getClientById(int id) async {
    final result = await (select(db.clientEntity)
          ..where((tbl) => tbl.id.equals(id)))
        .getSingle();
    return result;
  }

  Future<int> insertClient(ClientEntityCompanion client) async {
    final result = await into(db.clientEntity).insert(client);
    return result;
  }

  Future updateClient(ClientEntityData client) async {
    await update(db.clientEntity).replace(client);
  }

  Future deleteClient(int id) async {
    await (delete(db.clientEntity)..where((tbl) => tbl.id.equals(id))).go();
  }
}
