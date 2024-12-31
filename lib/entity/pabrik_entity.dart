import 'package:drift/drift.dart';

class PabrikEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nama => text()();
  TextColumn get alamat => text()();
  DateTimeColumn get createdAt => dateTime().nullable()();
}
