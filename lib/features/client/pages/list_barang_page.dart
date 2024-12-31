import 'package:flexofast_basis_data_dashboard/features/client/pages/form_client_page.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_scaffold.dart';
import 'package:flutter/material.dart';

class ListBarangPage extends StatelessWidget {
  const ListBarangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigate.push(context, const FormClientPage());
          },
          child: const Icon(Icons.add),
        ),
        title: 'List Barang',
        body: Center(
          child: ListView(
            children: const [
              ListTile(
                title: Text('Barang 1'),
                subtitle: Text('Rp 100.000'),
              ),
              ListTile(
                title: Text('Barang 2'),
                subtitle: Text('Rp 200.000'),
              ),
              ListTile(
                title: Text('Barang 3'),
                subtitle: Text('Rp 300.000'),
              ),
            ],
          ),
        ));
  }
}
