import 'package:flexofast_basis_data_dashboard/datasource/datasource.dart';
import 'package:flexofast_basis_data_dashboard/features/client/cubit/client_cubit.dart';
import 'package:flexofast_basis_data_dashboard/features/master/cubit/gudang_cubit.dart';
import 'package:flexofast_basis_data_dashboard/features/sewa/cubit/sewa_cubit.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/utils.dart';
import 'package:flexofast_basis_data_dashboard/widgets/app_date_picker.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_form_scaffold.dart';
import 'package:flexofast_basis_data_dashboard/entity/date_range_entity.dart';
import 'package:flexofast_basis_data_dashboard/widgets/empty_widget_state.dart';
import 'package:flexofast_basis_data_dashboard/widgets/info_field.dart';
import 'package:flexofast_basis_data_dashboard/widgets/loading_widget_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PenyewaanPage extends StatefulWidget {
  const PenyewaanPage({super.key});

  @override
  State<PenyewaanPage> createState() => _PenyewaanPageState();
}

class _PenyewaanPageState extends State<PenyewaanPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SewaCubit, SewaState>(
      builder: (context, sewaState) {
        return CommonFormScaffold(
            title: 'Buat Penyewaan',
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                children: [
                  const SizedBox(height: 16),
                  const Text(
                    'Pilih Gudang',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const Divider(),
                  BlocProvider.value(
                    value: context.read<GudangCubit>()..getAllGudang(),
                    child: BlocBuilder<GudangCubit, GudangState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () => const LoadingWidgetState(),
                          loaded: (list) {
                            if (list.isEmpty) {
                              return const Center(
                                child: Text('Tidak ada gudang yang tersedia'),
                              );
                            }
                            return Column(
                              children: list.map((item) {
                                return BlocSelector<SewaCubit, SewaState, int?>(
                                  selector: (state) => state.whenOrNull(
                                    form: (date, gudangId, client) => gudangId,
                                  ),
                                  builder: (context, selectedGudangId) {
                                    return Card(
                                      child: CheckboxListTile(
                                        value: selectedGudangId == item.id,
                                        onChanged: (value) {
                                          context
                                              .read<SewaCubit>()
                                              .selectedGudang(item.id);
                                        },
                                        title: Text(
                                          'Gudang ${item.id}',
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        subtitle: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            InfoField(
                                                title: 'Alamat',
                                                value: item.alamat),
                                            InfoField(
                                                title: 'Tipe',
                                                value: item.tipe),
                                            InfoField(
                                                title: 'Volume',
                                                value: '${item.volume} m³'),
                                            InfoField(
                                              title: 'Harga',
                                              value: '${Utils.formatCurrency(
                                                item.harga,
                                              )} / Hari',
                                            ),
                                          ],
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
                    'Pilih Client',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const Divider(),
                  BlocProvider.value(
                    value: context.read<ClientCubit>()..getAllClient(),
                    child: BlocBuilder<ClientCubit, ClientState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          loading: () => const LoadingWidgetState(),
                          orElse: () => const LoadingWidgetState(),
                          loaded: (listClient, selected) {
                            if (listClient.isEmpty) {
                              return const EmptyWidgetState();
                            }
                            return Column(
                              children: listClient.map((client) {
                                return BlocSelector<SewaCubit, SewaState, int?>(
                                  selector: (state) => state.maybeWhen(
                                    form: (date, gudangId, client) => client,
                                    orElse: () => null,
                                  ),
                                  builder: (context, selectedClientId) {
                                    return Card(
                                      child: CheckboxListTile(
                                        value: selectedClientId == client.id,
                                        onChanged: (value) {
                                          context
                                              .read<SewaCubit>()
                                              .selectedClient(client.id);
                                        },
                                        title: Text(
                                          client.nama,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        subtitle: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            InfoField(
                                                title: 'Telepon',
                                                value: client.noHandphone),
                                            InfoField(
                                                title: 'Alamat',
                                                value: client.alamat ?? ''),
                                          ],
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
                    'Pilih Tanggal ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const Divider(height: 16),
                  Row(
                    children: [
                      const SizedBox(width: 8),
                      const Column(
                        children: [
                          Text('Tanggal Mulai',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Tanggal Akhir',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Column(
                        children: [
                          if (sewaState.date == null) ...[
                            const Text(' : not selected'),
                            const Text(' : not selected'),
                          ] else ...[
                            Text(
                                ' : ${Utils.formatDate(sewaState.date!.start)}'),
                            Text(' : ${Utils.formatDate(sewaState.date!.end)}'),
                          ],
                        ],
                      ),
                      Expanded(child: Container()),
                      ElevatedButton(
                        onPressed: () async {
                          final DateRangeEntity? data = await showDialog(
                            context: context,
                            builder: (context) {
                              return const AppDatePicker();
                            },
                          );
                          if (data != null && context.mounted) {
                            context.read<SewaCubit>().selectedDate(data);
                          }
                        },
                        child: const Text('Ganti'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            actions: [
              ElevatedButton.icon(
                onPressed: (sewaState.date != null &&
                        sewaState.gudangId != null &&
                        sewaState.clientId != null)
                    ? () {
                        context.read<SewaCubit>().createSewa(
                              SewaEntityCompanion.insert(
                                idClient: sewaState.clientId!,
                                idGudang: sewaState.gudangId!,
                                tanggalMulai: sewaState.date!.start,
                                tanggalAkhir: sewaState.date!.end,
                              ),
                            );
                        context.read<SewaCubit>().resetForm();
                        Navigate.pop(context);
                      }
                    : null,
                label: const Text('Buat Penyewaan'),
                icon: const Icon(Icons.add_home_outlined),
              ),
            ]);
      },
    );
  }
}
