import 'package:drift/drift.dart';

class DistributorEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nama => text()();
  TextColumn get alamat => text()();
}
