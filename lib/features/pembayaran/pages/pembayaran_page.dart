import 'package:flexofast_basis_data_dashboard/features/pembayaran/cubit/pembayaran_cubit.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/utils.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_form_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PembayaranPage extends StatelessWidget {
  const PembayaranPage({
    super.key,
    required this.total,
    required this.idSewa,
  });

  final int total;
  final int idSewa;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PembayaranCubit>(
      create: (context) => PembayaranCubit(),
      child: Builder(builder: (context) {
        return BlocListener<PembayaranCubit, PembayaranState>(
          listener: (context, state) {
            state.whenOrNull(
              success: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog.adaptive(
                        title: const Text('Payment Success'),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigate.pop(context);
                                Navigate.pop(context);
                              },
                              child: const Text('Ok'))
                        ],
                      );
                    });
              },
            );
          },
          child: CommonFormScaffold(
            title: 'Pembayaran',
            body: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Total',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        Utils.formatCurrency(total),
                        style: const TextStyle(
                            fontSize: 36, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                )
              ],
            ),
            actions: [
              ElevatedButton.icon(
                onPressed: () {
                  context.read<PembayaranCubit>().pay(idSewa, total);
                },
                label: const Text('Bayar'),
                icon: const Icon(Icons.money),
              )
            ],
          ),
        );
      }),
    );
  }
}
