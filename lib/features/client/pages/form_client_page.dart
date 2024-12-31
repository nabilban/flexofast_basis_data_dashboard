import 'package:drift/drift.dart';
import 'package:flexofast_basis_data_dashboard/datasource/datasource.dart';
import 'package:flexofast_basis_data_dashboard/features/client/cubit/client_cubit.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_form_scaffold.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormClientPage extends StatefulWidget {
  const FormClientPage({super.key, this.client});

  final ClientEntityData? client;

  @override
  State<FormClientPage> createState() => _FormClientPageState();
}

class _FormClientPageState extends State<FormClientPage> {
  TextEditingController _namaController = TextEditingController();
  TextEditingController _alamatController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  @override
  void initState() {
    _namaController = TextEditingController(text: widget.client?.nama);
    _alamatController = TextEditingController(text: widget.client?.alamat);
    _phoneController = TextEditingController(text: widget.client?.noHandphone);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CommonFormScaffold(
      title: 'Form Client',
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(height: 16.0),
            CommonTextField(
              controller: _namaController,
              label: 'Nama Client',
            ),
            const SizedBox(height: 16.0),
            CommonTextField(
              controller: _alamatController,
              label: 'Alamat Client',
            ),
            const SizedBox(height: 16.0),
            CommonTextField(
              controller: _phoneController,
              label: 'Nomor Telepon Client',
            ),
          ],
        ),
      ),
      actions: [
        ElevatedButton.icon(
            onPressed: () {
              context.read<ClientCubit>().insertClient(
                  ClientEntityCompanion.insert(
                      nama: _namaController.text,
                      alamat: Value(_alamatController.text),
                      noHandphone: _phoneController.text));
              Navigate.pop(context);
            },
            label: const Text('Simpan'),
            icon: const Icon(Icons.save)),
        if (widget.client != null)
          ElevatedButton.icon(
              onPressed: () {
                context.read<ClientCubit>().deleteClient(widget.client!.id);
                Navigate.pop(context);
              },
              label: const Text('Delete'),
              icon: const Icon(Icons.delete)),
      ],
    );
  }
}
