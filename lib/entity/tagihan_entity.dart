import 'package:drift/drift.dart';
import 'package:flexofast_basis_data_dashboard/entity/sewa_entity.dart';

class TagihanEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get idSewa => integer().references(SewaEntity, #id)();
  IntColumn get idPembayaran => integer()();
  IntColumn get biaya => integer()();
  DateTimeColumn get batasWaktu => dateTime()();
  DateTimeColumn get createdAt => dateTime().nullable()();
}
