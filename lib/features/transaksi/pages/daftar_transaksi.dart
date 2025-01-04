import 'package:flexofast_basis_data_dashboard/features/transaksi/cubit/transaksi_cubit.dart';
import 'package:flexofast_basis_data_dashboard/features/transaksi/pages/transaksi_page.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/utils.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_scaffold.dart';
import 'package:flexofast_basis_data_dashboard/widgets/empty_widget_state.dart';
import 'package:flexofast_basis_data_dashboard/widgets/loading_widget_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DaftarTransaksi extends StatelessWidget {
  const DaftarTransaksi({super.key, this.clientId, this.pegawaiId});

  final int? clientId;
  final int? pegawaiId;

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: 'Daftar Transaksi',
      floatingActionButton: clientId == null
          ? null
          : FloatingActionButton(
              onPressed: () {
                Navigate.push(
                    context,
                    TransaksiPage(
                      clientId: clientId ?? -1,
                    ));
              },
              tooltip: 'Tambah Transaksi',
              child: const Icon(Icons.card_travel),
            ),
      body: BlocProvider.value(
        value: context.read<TransaksiCubit>()..initializeTransaksi(clientId),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<TransaksiCubit, TransaksiState>(
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => const LoadingWidgetState(),
                loaded: (transaksi, acceptedTransaksi) {
                  if (transaksi.isEmpty) {
                    return const EmptyWidgetState();
                  }
                  return ListView.builder(
                    itemCount: transaksi.length,
                    itemBuilder: (context, index) {
                      final item = transaksi[index];
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Transaksi ${item.id}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  if (clientId != null) ...[
                                    Text(
                                      'Status: ${acceptedTransaksi.contains(item.id) ? 'Diterima' : 'Menunggu'}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ] else ...[
                                    IconButton(
                                      icon: const Icon(Icons.check_circle),
                                      onPressed: () {
                                        context
                                            .read<TransaksiCubit>()
                                            .persetujuanTransaksi(
                                                pegawaiId!, item.id);

                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content:
                                                Text('Transaksi telah selesai'),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ],
                              ),
                              const SizedBox(height: 4),
                              Text('Barang: ${item.idBarang}'),
                              Text('Gudang: ${item.idGudang}'),
                              Text('Volume: ${item.volume}'),
                              Text('Tipe: ${item.tipe.name}'),
                              Text('Alamat: ${item.alamat}'),
                              Text(
                                  'Tanggal: ${Utils.formatDate(item.createdAt ?? DateTime.now())}'),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                orElse: () => const EmptyWidgetState(),
              );
            },
          ),
        ),
      ),
    );
  }
}
