import 'package:drift/drift.dart';
import 'package:flexofast_basis_data_dashboard/entity/barang_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/client_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/gudang_entity.dart';

enum TipeTransaksi { masuk, keluar } // 1 masuk, 2 keluar

class TransaksiEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get idGudang => integer().references(GudangEntity, #id)();
  IntColumn get idBarang => integer().references(BarangEntity, #id)();
  IntColumn get idClient => integer().references(ClientEntity, #id)();
  IntColumn get volume => integer()();
  TextColumn get alamat => text()();
  IntColumn get tipe => intEnum<TipeTransaksi>()();
  DateTimeColumn get createdAt => dateTime().nullable()();
}
