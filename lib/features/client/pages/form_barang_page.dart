import 'package:flexofast_basis_data_dashboard/database/datasource.dart';
import 'package:flexofast_basis_data_dashboard/features/client/cubit/barang_cubit.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_form_scaffold.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormBarangPage extends StatefulWidget {
  const FormBarangPage({super.key, this.barang});

  final BarangEntityData? barang;

  @override
  State<FormBarangPage> createState() => _FormClientPageState();
}

class _FormClientPageState extends State<FormBarangPage> {
  bool isEdited = false;
  TextEditingController _namaController = TextEditingController();

  @override
  void initState() {
    _namaController = TextEditingController(text: widget.barang?.nama);
    super.initState();
  }

  void _onChanged(String value) {
    setState(() {
      isEdited = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CommonFormScaffold(
      title: widget.barang == null ? 'tambah Barang' : 'Edit Barang',
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(height: 16.0),
            CommonTextField(
              onChanged: _onChanged,
              controller: _namaController,
              label: 'Nama Barang',
            ),
          ],
        ),
      ),
      actions: [
        ElevatedButton.icon(
            onPressed: () {
              if (!isEdited) {
                Navigate.pop(context);
                return;
              }
              if (widget.barang != null) {
                // context.read<BarangCubit>().updateClient(widget.barang!
                //     .copyWith(
                //         nama: _namaController.text,
                //         ));
                // Navigate.pop(context);
                return;
              } else {
                context
                    .read<BarangCubit>()
                    .insertBarang(BarangEntityCompanion.insert(
                      nama: _namaController.text,
                    ));
                Navigate.pop(context);
              }
            },
            label: const Text('Simpan'),
            icon: const Icon(Icons.save)),
        if (widget.barang != null)
          ElevatedButton.icon(
              onPressed: () {
                context.read<BarangCubit>().deleteBarang(widget.barang!.id);
                Navigate.pop(context);
              },
              label: const Text('Delete'),
              icon: const Icon(Icons.delete)),
      ],
    );
  }
}
