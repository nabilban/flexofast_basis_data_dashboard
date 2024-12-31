import 'package:drift/drift.dart';

class PegawaiEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nama => text()();
  TextColumn get noHandphone => text()();
  TextColumn get alamat => text().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
}
