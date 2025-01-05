import 'dart:io';

import 'package:flexofast_basis_data_dashboard/database/datasource.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:file_picker/file_picker.dart';

class BackupDialog extends StatelessWidget {
  const BackupDialog({super.key});

  static final Datasource data = Datasource.instance;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Database Backup'),
      content: const Text(
        'Here, you can save the database to a file or restore a created backup.',
      ),
      actions: [
        TextButton(
          onPressed: () async {
            final dbFolder = await getApplicationDocumentsDirectory();
            final file = File(p.join(dbFolder.path, 'flexofast.db'));

            if (await file.exists()) {
              Share.shareXFiles([XFile(file.path)], text: 'Database FlexoFast');
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text('Database exported successfully!')),
                );
              }
            } else {
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Database file not found!')),
                );
              }
            }
          },
          child: const Text('Save'),
        ),
        TextButton(
          onPressed: () async {
            final result = await FilePicker.platform.pickFiles(
              type: FileType.any,
            );

            if (result != null) {
              final pickedFile = File(result.files.single.path!);
              final dbFolder = await getApplicationDocumentsDirectory();
              final dbFile = File(p.join(dbFolder.path, 'flexofast.db'));

              await pickedFile.copy(dbFile.path);

              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text('Database restored successfully!')),
                );
              }
            } else {
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('No file selected.')),
                );
              }
            }
          },
          child: const Text('Restore'),
        ),
      ],
    );
  }
}
