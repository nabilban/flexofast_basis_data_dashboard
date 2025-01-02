import 'dart:io';

import 'package:flexofast_basis_data_dashboard/provider.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Directory appDir = await getApplicationDocumentsDirectory();
  print(appDir.path);

  runApp(const GlobalProvider());
}
