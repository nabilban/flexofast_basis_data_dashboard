import 'package:flexofast_basis_data_dashboard/features/transaksi/pages/transaksi_page.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_scaffold.dart';
import 'package:flutter/material.dart';

class DaftarTransaksi extends StatelessWidget {
  const DaftarTransaksi({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigate.push(context, const TransaksiPage());
          },
          child: const Icon(Icons.card_travel),
        ),
        title: 'Daftar Transaksi',
        body: const Center(child: Text('Daftar Transaksi Page')));
  }
}
