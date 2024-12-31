import 'package:drift/drift.dart';
import 'package:flexofast_basis_data_dashboard/entity/pegawai_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/transaksi_entity.dart';

class PersetujuanEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get idPegawai => integer().references(PegawaiEntity, #id)();
  IntColumn get idTransaksi => integer().references(TransaksiEntity, #id)();
  DateTimeColumn get createdAt => dateTime().nullable()();
}
