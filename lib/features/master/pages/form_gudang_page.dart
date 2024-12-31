import 'package:flexofast_basis_data_dashboard/datasource/datasource.dart';
import 'package:flexofast_basis_data_dashboard/features/master/cubit/gudang_cubit.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_form_scaffold.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormGudangPage extends StatefulWidget {
  const FormGudangPage({super.key, this.gudang});
  final GudangEntityData? gudang;

  @override
  State<FormGudangPage> createState() => _FormGudangPageState();
}

class _FormGudangPageState extends State<FormGudangPage> {
  late final TextEditingController _tipeController;
  late final TextEditingController _volumeController;
  late final TextEditingController _alamatController;
  late final TextEditingController _hargaController;

  bool isEdited = false;

  @override
  void initState() {
    _tipeController = TextEditingController(text: widget.gudang?.tipe);
    _volumeController =
        TextEditingController(text: widget.gudang?.volume.toString());
    _alamatController = TextEditingController(text: widget.gudang?.alamat);
    _hargaController =
        TextEditingController(text: widget.gudang?.harga.toString());
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
      title: 'Form Gudang',
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          CommonTextField(
            controller: _alamatController,
            label: 'Alamat',
            onChanged: _onChanged,
          ),
          CommonTextField(
            controller: _tipeController,
            label: 'Tipe',
            onChanged: _onChanged,
          ),
          CommonTextField(
            controller: _volumeController,
            label: 'Volume (m³)',
            keyboardType: TextInputType.number,
            onChanged: _onChanged,
          ),
          CommonTextField(
            controller: _hargaController,
            label: 'Harga Sewa / Hari',
            keyboardType: TextInputType.number,
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
              if (widget.gudang != null) {
                final gudangInput = widget.gudang!.copyWith(
                  id: widget.gudang!.id,
                  tipe: _tipeController.text.isNotEmpty
                      ? _tipeController.text
                      : widget.gudang!.tipe,
                  volume: int.tryParse(_volumeController.text) ??
                      widget.gudang!.volume,
                  alamat: _alamatController.text,
                  harga: int.tryParse(_hargaController.text) ??
                      widget.gudang!.harga,
                );
                context.read<GudangCubit>().updateGudang(gudangInput);
              } else {
                final gudangInput = GudangEntityCompanion.insert(
                  tipe: _tipeController.text,
                  volume: int.parse(_volumeController.text),
                  alamat: _alamatController.text,
                  harga: int.parse(_hargaController.text),
                );
                context.read<GudangCubit>().insertGudang(gudangInput);
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
