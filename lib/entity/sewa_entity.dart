import 'package:drift/drift.dart';
import 'package:flexofast_basis_data_dashboard/entity/client_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/gudang_entity.dart';

class SewaEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get idClient => integer().references(ClientEntity, #id)();
  IntColumn get idGudang => integer().references(GudangEntity, #id)();
  DateTimeColumn get tanggalMulai => dateTime()();
  DateTimeColumn get tanggalAkhir => dateTime()();
  DateTimeColumn get createdAt => dateTime().nullable()();
}
