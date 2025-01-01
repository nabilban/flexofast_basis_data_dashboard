import 'package:drift/drift.dart';

class PembayaranEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get jumlahBayar => integer()();
  DateTimeColumn get createdAt => dateTime().nullable()();
}
