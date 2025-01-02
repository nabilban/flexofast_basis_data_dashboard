import 'package:flexofast_basis_data_dashboard/features/client/cubit/client_cubit.dart';
import 'package:flexofast_basis_data_dashboard/features/client/pages/daftar_transaksi.dart';
import 'package:flexofast_basis_data_dashboard/features/client/pages/list_barang_page.dart';
import 'package:flexofast_basis_data_dashboard/features/client/pages/list_gudang_page.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_scaffold.dart';
import 'package:flexofast_basis_data_dashboard/widgets/empty_widget_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClientDashboardPage extends StatelessWidget {
  const ClientDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClientCubit, ClientState>(
      builder: (context, state) {
        if (state.current == null) {
          return const CommonScaffold(
            title: 'No Client Selected',
            body: Center(child: EmptyWidgetState()),
          );
        }

        return CommonScaffold(
          title: state.current!.nama,
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
                    Navigate.push(
                        context,
                        ListGudangPage(
                          clientId: state.current!.id,
                        ));
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
      },
    );
  }
}
