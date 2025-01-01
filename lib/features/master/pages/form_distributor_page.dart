import 'package:flexofast_basis_data_dashboard/datasource/datasource.dart';
import 'package:flexofast_basis_data_dashboard/features/master/cubit/distributor_cubit.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_form_scaffold.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormDistributorPage extends StatefulWidget {
  const FormDistributorPage({super.key, this.data});

  final DistributorEntityData? data;

  @override
  State<FormDistributorPage> createState() => _FormDistributorPageState();
}

class _FormDistributorPageState extends State<FormDistributorPage> {
  late final TextEditingController _namaController;
  late final TextEditingController _alamatController;

  bool isEdited = false;

  @override
  void initState() {
    _namaController = TextEditingController(text: widget.data?.nama);
    _alamatController = TextEditingController(text: widget.data?.alamat);
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
      title: 'Form Distributor',
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          CommonTextField(
            controller: _namaController,
            label: 'Nama',
            onChanged: _onChanged,
          ),
          CommonTextField(
            controller: _alamatController,
            label: 'Alamat',
            onChanged: _onChanged,
          ),
        ]
            .map((child) => Padding(
                  padding: const EdgeInsets.only(
                    top: 16.0,
                  ),
                  child: child,
                ))
            .toList(),
      ),
      actions: [
        ElevatedButton.icon(
          onPressed: () {
            if (isEdited) {
              if (widget.data != null) {
                final input = widget.data!.copyWith(
                  id: widget.data!.id,
                  alamat: _alamatController.text,
                );
                context
                    .read<DistributorCubit>()
                    .updateDistributor(input.toCompanion(false));
              } else {
                final input = DistributorEntityCompanion.insert(
                  nama: _namaController.text,
                  alamat: _alamatController.text,
                );
                context.read<DistributorCubit>().insertDistributor(input);
              }
              Navigate.pop(context);
            }
          },
          label: const Text('Simpan'),
          icon: const Icon(Icons.save),
        )
      ],
    );
  }
}
