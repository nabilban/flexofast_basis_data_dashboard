import 'package:drift/drift.dart';

class BarangEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nama => text()();
  DateTimeColumn get createdAt => dateTime().nullable()();
}
