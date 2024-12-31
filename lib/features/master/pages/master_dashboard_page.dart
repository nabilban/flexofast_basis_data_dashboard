import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/features/master/pages/form_client_page.dart';
import 'package:flexofast_basis_data_dashboard/features/master/pages/form_distributor_page.dart';
import 'package:flexofast_basis_data_dashboard/features/master/pages/form_gudang_page.dart';
import 'package:flexofast_basis_data_dashboard/features/master/pages/form_pabrik_page.dart';
import 'package:flexofast_basis_data_dashboard/features/master/pages/form_pegawai_page.dart';
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
            title: const Text('Pegawai'),
            onTap: () {
              Navigate.push(context, const FormPegawaiPage());
            },
          ),
          ListTile(
            title: const Text('Client'),
            onTap: () {
              Navigate.push(context, const FormClientPage());
            },
          ),
          ListTile(
            title: const Text('Gudang'),
            onTap: () {
              Navigate.push(context, const FormGudangPage());
            },
          ),
          ListTile(
            title: const Text('Pabrik'),
            onTap: () {
              Navigate.push(context, const FormPabrikPage());
            },
          ),
          ListTile(
            title: const Text('Distributor'),
            onTap: () {
              Navigate.push(context, const FormDistributorPage());
            },
          ),
        ],
      ),
    );
  }
}
