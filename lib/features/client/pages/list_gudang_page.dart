import 'package:flexofast_basis_data_dashboard/features/client/pages/daftar_transaksi.dart';
import 'package:flexofast_basis_data_dashboard/features/client/pages/list_barang_page.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_scaffold.dart';
import 'package:flutter/material.dart';

class ListGudangPage extends StatelessWidget {
  const ListGudangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: 'List Gudang',
      body: Center(
        child: ListView(
          children: [
            ListTile(
              title: const Text('gudang 1'),
              onTap: () {
                Navigate.push(context, const ListBarangPage());
              },
            ),
            ListTile(
              title: const Text('gudang 2'),
              onTap: () {
                Navigate.push(context, const ListGudangPage());
              },
            ),
            ListTile(
              title: const Text('gudang 3'),
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
