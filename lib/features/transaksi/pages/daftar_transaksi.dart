import 'package:flexofast_basis_data_dashboard/features/transaksi/cubit/transaksi_cubit.dart';
import 'package:flexofast_basis_data_dashboard/features/transaksi/pages/transaksi_page.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_scaffold.dart';
import 'package:flexofast_basis_data_dashboard/widgets/empty_widget_state.dart';
import 'package:flexofast_basis_data_dashboard/widgets/loading_widget_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DaftarTransaksi extends StatelessWidget {
  const DaftarTransaksi({super.key, required this.clientId});

  final int clientId;

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: 'Daftar Transaksi',
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigate.push(
              context,
              TransaksiPage(
                clientId: clientId,
              ));
        },
        tooltip: 'Tambah Transaksi',
        child: const Icon(Icons.card_travel),
      ),
      body: BlocProvider.value(
        value: context.read<TransaksiCubit>()..getAllTransaksi(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<TransaksiCubit, TransaksiState>(
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => const LoadingWidgetState(),
                loaded: (transaksi) {
                  if (transaksi.isEmpty) {
                    return const EmptyWidgetState();
                  }
                  return ListView.builder(
                    itemCount: transaksi.length,
                    itemBuilder: (context, index) {
                      final item = transaksi[index];
                      return Card(
                        child: ListTile(
                          title: Text('Transaksi ${item.id}'),
                          subtitle: Text('Tipe: ${item.tipe.name}'),
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
