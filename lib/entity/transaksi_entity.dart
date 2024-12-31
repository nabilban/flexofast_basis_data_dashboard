import 'package:drift/drift.dart';

enum TipeTransaksi { masuk, keluar } // 1 masuk, 2 keluar

class TransaksiEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get idGudang => integer()();
  IntColumn get idBarang => integer()();
  IntColumn get alamat => integer()();
  IntColumn get tipe => intEnum<TipeTransaksi>()();
  DateTimeColumn get createdAt => dateTime().nullable()();
}
