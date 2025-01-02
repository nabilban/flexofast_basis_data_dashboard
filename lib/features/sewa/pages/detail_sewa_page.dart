import 'package:flexofast_basis_data_dashboard/features/pembayaran/pages/pembayaran_page.dart';
import 'package:flexofast_basis_data_dashboard/features/sewa/cubit/detail_sewa_cubit.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/utils.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_form_scaffold.dart';
import 'package:flexofast_basis_data_dashboard/widgets/empty_widget_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailSewaPage extends StatelessWidget {
  const DetailSewaPage({
    super.key,
    required this.id,
  });
  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: DetailSewaCubit()..getDetailSewa(id),
      child: CommonFormScaffold(
          actions: [
            BlocSelector<DetailSewaCubit, DetailSewaState, List<int>>(
              selector: (state) {
                final detail = state.mapOrNull(loaded: (value) => value);
                if (detail != null) {
                  return [detail.sewa.id, detail.sewa.biaya];
                }
                return [];
              },
              builder: (context, data) {
                return ElevatedButton.icon(
                  onPressed: () {
                    Navigate.push(
                        context,
                        PembayaranPage(
                          idSewa: data[0],
                          total: data[1],
                        ));
                  },
                  label: const Text('Bayar'),
                  icon: const Icon(Icons.money),
                );
              },
            )
          ],
          title: 'Detail Sewa Page',
          body: Center(
              child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: BlocBuilder<DetailSewaCubit, DetailSewaState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      orElse: () => const EmptyWidgetState(),
                      loading: () => const CircularProgressIndicator(),
                      loaded: (sewa) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Sewa Details',
                              ),
                              const SizedBox(height: 8),
                              Text('ID: ${sewa.id}'),
                              Text('Name: ${sewa.nama}'),
                              Text(
                                  'Date: ${Utils.formatDate(sewa.tanggalMulai)} - ${Utils.formatDate(sewa.tanggalAkhir)}'),
                              Text(
                                  'Masa Sewa: ${sewa.tanggalAkhir.difference(sewa.tanggalMulai).inDays} hari'),
                              Text('Volume: ${sewa.volume}'),
                              Text(
                                  'Biaya: ${Utils.formatCurrency(sewa.biaya)}'),
                              // Add more fields as necessary
                            ],
                          ));
                },
              ),
            ),
          ))),
    );
  }
}
