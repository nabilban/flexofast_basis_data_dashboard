import 'package:drift/drift.dart';

class GudangEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get tipe => text()();
  IntColumn get volume => integer()();
  TextColumn get alamat => text()();
  IntColumn get harga => integer()();
  DateTimeColumn get createdAt => dateTime().nullable()();
}
