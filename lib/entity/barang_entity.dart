import 'package:drift/drift.dart';

class BarangEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get harga => integer()();
}
