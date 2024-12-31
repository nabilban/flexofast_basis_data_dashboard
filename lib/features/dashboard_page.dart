import 'package:flexofast_basis_data_dashboard/features/client/pages/client_dashboard_page.dart';
import 'package:flexofast_basis_data_dashboard/features/client/pages/client_login_page.dart';
import 'package:flexofast_basis_data_dashboard/features/master/pages/master_dashboard_page.dart';
import 'package:flexofast_basis_data_dashboard/features/pegawai/pages/pegawai_login_page.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_scaffold.dart';
import 'package:flutter/material.dart';

class DashboardMenu extends StatelessWidget {
  const DashboardMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      key: key,
      title: 'Dashboard Menu',
      body: ListView(
        children: [
          ListTile(
            title: const Text('Master Data'),
            onTap: () {
              Navigate.push(context, const MasterDashboardPage());
            },
          ),
          ListTile(
            title: const Text('Login Pegawai'),
            onTap: () {
              Navigate.push(context, const PegawaiLoginPage());
            },
          ),
          ListTile(
            title: const Text('Login Client'),
            onTap: () {
              Navigate.push(context, const ClientLoginPage());
            },
          ),
        ],
      ),
    );
  }
}
