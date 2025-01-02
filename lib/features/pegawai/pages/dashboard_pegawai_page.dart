import 'package:flexofast_basis_data_dashboard/features/pegawai/cubit/pegawai_cubit.dart';
import 'package:flexofast_basis_data_dashboard/features/sewa/pages/list_sewa_page.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPegawaiPage extends StatelessWidget {
  const DashboardPegawaiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PegawaiCubit, PegawaiState>(
      builder: (context, state) {
        return CommonScaffold(
          title: state.current?.nama ?? '',
          body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            children: [
              ListTile(
                title: const Text('Penyewaan'),
                onTap: () {
                  Navigate.push(context, const ListSewaPage());
                },
              ),
              ListTile(
                title: const Text('Daftar Transaksi'),
                onTap: () {},
              ),
            ],
          ),
        );
      },
    );
  }
}
