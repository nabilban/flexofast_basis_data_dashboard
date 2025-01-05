import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
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
import 'package:path_provider/path_provider.dart';

import 'package:path/path.dart' as p;

import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

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
  Datasource() : super(_openConnectionStatic());

  static Datasource instance = Datasource();

  @override
  int get schemaVersion => 1;

  static LazyDatabase _openConnectionStatic() {
    return LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'flexofast.db'));

      if (Platform.isAndroid) {
        await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
      }
      final cachebase = (await getTemporaryDirectory()).path;
      sqlite3.tempDirectory = cachebase;
      return NativeDatabase.createInBackground(file);
    });
  }
}
