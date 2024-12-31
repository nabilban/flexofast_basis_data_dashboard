import 'package:flexofast_basis_data_dashboard/datasource/datasource.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_form_scaffold.dart';
import 'package:flutter/material.dart';

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
      title: 'Form Pegawai',
      body: ListView(
        children: [
          TextField(
            controller: _namaController,
            decoration: const InputDecoration(labelText: 'Nama'),
          ),
        ],
      ),
      actions: [
        ElevatedButton.icon(
            onPressed: () {},
            label: const Text('Simpan'),
            icon: const Icon(Icons.save)),
      ],
    );
  }
}
