import 'package:flexofast_basis_data_dashboard/widgets/empty_widget_state.dart';
import 'package:flexofast_basis_data_dashboard/widgets/loading_widget_state.dart';
import 'package:flexofast_basis_data_dashboard/features/pegawai/pages/form_pegawai_page.dart';
import 'package:flexofast_basis_data_dashboard/features/pegawai/cubit/pegawai_cubit.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PegawaiLoginPage extends StatelessWidget {
  const PegawaiLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: context.read<PegawaiCubit>()..getAllPegawai(),
      child: CommonScaffold(
        title: 'Dashboard Pegawai',
        body: BlocBuilder<PegawaiCubit, PegawaiState>(
          builder: (context, state) {
            return state.maybeWhen(orElse: () {
              return const LoadingWidgetState();
            }, loaded: (listPegawai, selected) {
              if (listPegawai.isEmpty) {
                return const EmptyWidgetState();
              }
              return ListView.builder(
                  itemCount: listPegawai.length,
                  itemBuilder: (context, index) {
                    final pegawai = listPegawai[index];
                    return ListTile(
                      title: Text(pegawai.nama),
                      onTap: () {
                        context.read<PegawaiCubit>().selectPegawai(pegawai.id);
                      },
                    );
                  });
            });
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigate.push(context, const FormPegawaiPage());
          },
          child: const Icon(Icons.person_add_alt_1_rounded),
        ),
      ),
    );
  }
}
