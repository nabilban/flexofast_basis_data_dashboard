import 'package:flexofast_basis_data_dashboard/features/master/pages/list_distributor_page.dart';
import 'package:flexofast_basis_data_dashboard/features/master/pages/list_gudang_page.dart';
import 'package:flexofast_basis_data_dashboard/features/master/pages/list_pabrik_page.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_scaffold.dart';
import 'package:flutter/material.dart';

class MasterDashboardPage extends StatelessWidget {
  const MasterDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: 'Master Data',
      body: ListView(
        children: [
          ListTile(
            title: const Text('Gudang'),
            onTap: () {
              Navigate.push(context, const ListGudangPage());
            },
          ),
          ListTile(
            title: const Text('Pabrik'),
            onTap: () {
              Navigate.push(context, const ListPabrikPage());
            },
          ),
          ListTile(
            title: const Text('Distributor'),
            onTap: () {
              Navigate.push(context, const ListDistributorPage());
            },
          ),
        ],
      ),
    );
  }
}
