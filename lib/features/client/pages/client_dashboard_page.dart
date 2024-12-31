import 'package:flexofast_basis_data_dashboard/features/client/pages/daftar_transaksi.dart';
import 'package:flexofast_basis_data_dashboard/features/client/pages/list_barang_page.dart';
import 'package:flexofast_basis_data_dashboard/features/client/pages/list_gudang_page.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_scaffold.dart';
import 'package:flutter/material.dart';

class ClientDashboardPage extends StatelessWidget {
  const ClientDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: 'Dashboard Client',
      body: Center(
        child: ListView(
          children: [
            ListTile(
              title: const Text('List Barang'),
              onTap: () {
                Navigate.push(context, const ListBarangPage());
              },
            ),
            ListTile(
              title: const Text('List Gudang'),
              onTap: () {
                Navigate.push(context, const ListGudangPage());
              },
            ),
            ListTile(
              title: const Text('Daftar Transaksi'),
              onTap: () {
                Navigate.push(context, const DaftarTransaksi());
              },
            ),
          ],
        ),
      ),
    );
  }
}
