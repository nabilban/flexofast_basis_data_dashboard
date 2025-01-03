import 'package:flexofast_basis_data_dashboard/entity/transaksi_entity.dart';
import 'package:flexofast_basis_data_dashboard/features/client/cubit/barang_cubit.dart';
import 'package:flexofast_basis_data_dashboard/utils.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_form_scaffold.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_text_field.dart';
import 'package:flexofast_basis_data_dashboard/widgets/empty_widget_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransaksiPage extends StatefulWidget {
  const TransaksiPage({super.key});

  @override
  State<TransaksiPage> createState() => _TransaksiPage();
}

class _TransaksiPage extends State<TransaksiPage> {
  final TextEditingController volumeController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CommonFormScaffold(
      title: 'Buat Transaksi',
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const SizedBox(height: 16),
            const Text(
              'Pilih Barang',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const Divider(),
            BlocProvider.value(
              value: context.read<BarangCubit>()..getAllBarang(),
              child: BlocBuilder<BarangCubit, BarangState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    orElse: () => const EmptyWidgetState(),
                    loaded: (listBarang) {
                      if (listBarang.isEmpty) {
                        return const Center(
                          child: Text('Tidak ada barang tersedia'),
                        );
                      }
                      return Column(
                        children: listBarang.map((barang) {
                          return Card(
                            child: CheckboxListTile(
                              value: false,
                              onChanged: (value) {},
                              title: Text(barang.nama),
                              subtitle: Text(
                                'Dibuat: ${Utils.formatDate(barang.createdAt ?? DateTime.now()).toString()}',
                              ),
                            ),
                          );
                        }).toList(),
                      );
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Volume (m³)',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const Divider(),
            CommonTextField(
              controller: volumeController,
              label: 'cth: 1000 ',
              floatingLabelBehavior: FloatingLabelBehavior.never,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            const Text(
              'Alamat',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const Divider(),
            CommonTextField(
              label: 'cth: Jl. Raya No. 1',
              controller: alamatController,
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
            const SizedBox(height: 16),
            const Text(
              'Tipe Transaksi',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const Divider(),
            DropdownButtonFormField<TipeTransaksi>(
              items: TipeTransaksi.values
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(e.toString().split('.').last),
                      ))
                  .toList(),
              onChanged: (value) {},
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelText: 'Pilih Tipe Transaksi',
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
      actions: [
        ElevatedButton.icon(
          onPressed: () {},
          label: const Text('Buat Transaksi'),
          icon: const Icon(Icons.send),
        ),
      ],
    );
  }
}
