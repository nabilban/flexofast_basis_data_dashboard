import 'package:flexofast_basis_data_dashboard/database/datasource.dart';
import 'package:flexofast_basis_data_dashboard/entity/transaksi_entity.dart';
import 'package:flexofast_basis_data_dashboard/features/client/cubit/barang_cubit.dart';
import 'package:flexofast_basis_data_dashboard/features/client/cubit/client_gudang_cubit.dart';
import 'package:flexofast_basis_data_dashboard/features/transaksi/cubit/transaksi_cubit.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/utils.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_form_scaffold.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_text_field.dart';
import 'package:flexofast_basis_data_dashboard/widgets/empty_widget_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransaksiPage extends StatefulWidget {
  const TransaksiPage({super.key, required this.clientId});

  final int clientId;

  @override
  State<TransaksiPage> createState() => _TransaksiPageState();
}

class _TransaksiPageState extends State<TransaksiPage> {
  final TextEditingController volumeController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransaksiCubit, TransaksiState>(
      builder: (context, transaksiState) {
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
                              child: Text('Tidak ada gudang tersedia'),
                            );
                          }
                          return Column(
                            children: listBarang.map((barang) {
                              return BlocSelector<TransaksiCubit,
                                  TransaksiState, int?>(
                                selector: (state) => state.maybeWhen(
                                  form: (idBarang, idGudang, alamat, volume,
                                          tipe) =>
                                      idBarang,
                                  orElse: () => null,
                                ),
                                builder: (context, selectedBarang) {
                                  return Card(
                                    child: CheckboxListTile(
                                      value: selectedBarang == barang.id,
                                      onChanged: (value) {
                                        context
                                            .read<TransaksiCubit>()
                                            .selectedBarang(
                                              barang.id,
                                            );
                                      },
                                      title: Text(barang.nama),
                                      subtitle: Text(
                                        'Dibuat: ${Utils.formatDate(barang.createdAt ?? DateTime.now()).toString()}',
                                      ),
                                    ),
                                  );
                                },
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
                  'Pilih Gudang',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const Divider(),
                BlocProvider(
                  create: (context) =>
                      ClientGudangCubit(widget.clientId)..getAllGudang(),
                  child: BlocBuilder<ClientGudangCubit, ClientGudangState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        loading: () => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        orElse: () => const EmptyWidgetState(),
                        loaded: (listGudang) {
                          if (listGudang.isEmpty) {
                            return const Center(
                              child: Text('Tidak ada gudang yang dimiliki'),
                            );
                          }
                          return Column(
                            children: listGudang.map((gudang) {
                              return BlocSelector<TransaksiCubit,
                                  TransaksiState, int?>(
                                selector: (state) => state.maybeWhen(
                                  form: (idBarang, idGudang, alamat, volume,
                                          tipe) =>
                                      idGudang,
                                  orElse: () => null,
                                ),
                                builder: (context, selectedGudang) {
                                  return Card(
                                    child: CheckboxListTile(
                                      value: selectedGudang == gudang.id,
                                      onChanged: (value) {
                                        context
                                            .read<TransaksiCubit>()
                                            .selectedGudang(
                                              gudang.id,
                                            );
                                      },
                                      title: Text('Gudang ${gudang.id}'),
                                      subtitle: Text(
                                        'Alamat : ${gudang.alamat}',
                                      ),
                                    ),
                                  );
                                },
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
                  onChanged: (value) {
                    final volume = int.tryParse(value) ?? 0;
                    context.read<TransaksiCubit>().formVolume(volume);
                  },
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
                  onChanged: (value) {
                    context.read<TransaksiCubit>().formAlamat(value);
                  },
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
                  onChanged: (value) {
                    context
                        .read<TransaksiCubit>()
                        .selectedTipeTransaksi(value!);
                  },
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
              onPressed: (transaksiState.volume != null &&
                      transaksiState.alamat != null &&
                      transaksiState.idBarang != null &&
                      transaksiState.idGudang != null &&
                      transaksiState.tipeTransaksi != null)
                  ? () {
                      context.read<TransaksiCubit>().createTransaksi(
                            TransaksiEntityCompanion.insert(
                              idBarang: transaksiState.idBarang!,
                              idGudang: transaksiState.idGudang!,
                              tipe: transaksiState.tipeTransaksi!,
                              volume: transaksiState.volume!,
                              alamat: transaksiState.alamat!,
                            ),
                          );
                      context.read<TransaksiCubit>().resetForm();
                      context.read<TransaksiCubit>().getAllTransaksi();
                      Navigate.pop(context);
                    }
                  : null,
              label: const Text('Buat Transaksi'),
              icon: const Icon(Icons.send),
            ),
          ],
        );
      },
    );
  }
}
