import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:flexofast_basis_data_dashboard/database/view/detail_sewa_view.dart';
import 'package:flexofast_basis_data_dashboard/entity/barang_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/client_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/distributor_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/gudang_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/pabrik_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/pegawai_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/pembayaran_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/persetujuan_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/sewa_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/tagihan_entity.dart';
import 'package:flexofast_basis_data_dashboard/entity/transaksi_entity.dart';

part 'datasource.g.dart';

@DriftDatabase(
  tables: [
    ClientEntity,
    DistributorEntity,
    GudangEntity,
    PabrikEntity,
    PegawaiEntity,
    PembayaranEntity,
    PersetujuanEntity,
    SewaEntity,
    TagihanEntity,
    TransaksiEntity,
    BarangEntity
  ],
  views: [
    DetailSewaView,
  ],
)
class Datasource extends _$Datasource {
  Datasource() : super(_openConnection());

  static Datasource instance = Datasource();

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(name: 'flexofast_db');
  }
}
