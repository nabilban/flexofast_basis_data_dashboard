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

  // static Future<QueryExecutor> _openConnection() async {
  //   final Directory appDocumentsDir = await getApplicationDocumentsDirectory();
  //   final String databasePath = appDocumentsDir.path;

  //   return driftDatabase(
  //     name: 'flexofast_db',
  //   );
  // }

  static LazyDatabase _openConnectionStatic() {
    return LazyDatabase(() async {
      // put the database file, called db.sqlite here, into the documents folder
      // for your app.
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'flexofast.db'));

      if (!await file.exists()) {
        // Extract the pre-populated database file from assets
        // final blob = await rootBundle.load('assets/my_database.db');
        // final buffer = blob.buffer;
        // await file.writeAsBytes(
        //     buffer.asUint8List(blob.offsetInBytes, blob.lengthInBytes));
        print('File from asset used ');
      }

      // Also work around limitations on old Android versions
      if (Platform.isAndroid) {
        await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
      }

      // Make sqlite3 pick a more suitable location for temporary files - the
      // one from the system may be inaccessible due to sandboxing.
      final cachebase = (await getTemporaryDirectory()).path;
      // We can't access /tmp on Android, which sqlite3 would try by default.
      // Explicitly tell it about the correct temporary directory.
      sqlite3.tempDirectory = cachebase;

      return NativeDatabase.createInBackground(file);
    });
  }
}
