import 'package:flexofast_basis_data_dashboard/features/sewa/pages/detail_sewa_page.dart';
import 'package:flexofast_basis_data_dashboard/features/sewa/pages/penyewaan_page.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/utils.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_scaffold.dart';
import 'package:flexofast_basis_data_dashboard/widgets/loading_widget_state.dart';
import 'package:flexofast_basis_data_dashboard/widgets/empty_widget_state.dart';
import 'package:flexofast_basis_data_dashboard/features/sewa/cubit/sewa_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListSewaPage extends StatelessWidget {
  const ListSewaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigate.push(context, const PenyewaanPage());
        },
        child: const Icon(Icons.addchart),
      ),
      title: 'List Sewa',
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocProvider.value(
          value: context.read<SewaCubit>()..getAllSewa(),
          child: BlocBuilder<SewaCubit, SewaState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const EmptyWidgetState(),
                loading: () => const LoadingWidgetState(),
                loaded: (list) {
                  if (list.isEmpty) {
                    return const EmptyWidgetState();
                  }
                  return ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      final sewa = list[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(vertical: 4),
                        child: ListTile(
                          onTap: () {
                            Navigate.push(
                              context,
                              DetailSewaPage(idSewa: sewa.id),
                            );
                          },
                          title: Text(
                            'Sewa ${sewa.id}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Client: ${sewa.idClient}'),
                              Text('Gudang: ${sewa.idGudang}'),
                              Text(
                                'Tanggal: ${Utils.formatDate(sewa.tanggalMulai)} - ${Utils.formatDate(sewa.tanggalAkhir)}',
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
