import 'package:flexofast_basis_data_dashboard/datasource/datasource.dart';
import 'package:flexofast_basis_data_dashboard/features/pegawai/cubit/pegawai_cubit.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_form_scaffold.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormPegawaiPage extends StatefulWidget {
  const FormPegawaiPage({
    super.key,
    this.pegawai,
  });

  final PegawaiEntityData? pegawai;

  @override
  State<FormPegawaiPage> createState() => _FormPegawaiPageState();
}

class _FormPegawaiPageState extends State<FormPegawaiPage> {
  late final TextEditingController _namaController;

  @override
  void initState() {
    _namaController = TextEditingController(text: widget.pegawai?.nama);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CommonFormScaffold(
      title: widget.pegawai == null ? 'Register Pegawai' : 'Edit Pegawai',
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          CommonTextField(
            label: 'Nama',
            controller: _namaController,
          ),
        ],
      ),
      actions: [
        ElevatedButton.icon(
            onPressed: () {
              final pegawai =
                  PegawaiEntityCompanion.insert(nama: _namaController.text);
              if (widget.pegawai != null) {
                context.read<PegawaiCubit>().updatePegawai(
                    widget.pegawai!.copyWith(nama: _namaController.text));
              } else {
                context.read<PegawaiCubit>().insertPegawai(pegawai);
              }
              Navigate.pop(context);
            },
            label: const Text('Simpan'),
            icon: const Icon(Icons.save)),
        if (widget.pegawai != null)
          ElevatedButton.icon(
              onPressed: () {
                context.read<PegawaiCubit>().deletePegawai(widget.pegawai!);
                Navigate.pop(context);
              },
              label: const Text('Delete'),
              icon: const Icon(Icons.delete)),
      ],
    );
  }
}
