import 'package:drift/drift.dart';
import 'package:flexofast_basis_data_dashboard/entity/tagihan_entity.dart';

class PembayaranEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get idTagihan => integer().references(TagihanEntity, #id)();
  IntColumn get jumlahBayar => integer()();
  DateTimeColumn get createdAt => dateTime().nullable()();
}
