import 'package:flexofast_basis_data_dashboard/features/master/cubit/pabrik_cubit.dart';
import 'package:flexofast_basis_data_dashboard/features/master/pages/form_pabrik_page.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_scaffold.dart';
import 'package:flexofast_basis_data_dashboard/widgets/empty_widget_state.dart';
import 'package:flexofast_basis_data_dashboard/widgets/info_field.dart';
import 'package:flexofast_basis_data_dashboard/widgets/loading_widget_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListPabrikPage extends StatelessWidget {
  const ListPabrikPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: 'Daftar Pabrik',
      body: BlocProvider.value(
        value: context.read<PabrikCubit>()..getPabrikList(),
        child: BlocBuilder<PabrikCubit, PabrikState>(
          builder: (context, state) {
            return state.maybeWhen(orElse: () {
              return const LoadingWidgetState();
            }, loaded: (list) {
              if (list.isEmpty) {
                return const EmptyWidgetState();
              }
              return ListView.builder(
                  padding: const EdgeInsets.all(16.0),
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    final item = list[index];
                    return Card(
                      child: ListTile(
                        title: Row(
                          children: [
                            Text(
                              'Pabrik ${item.id}',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        subtitle: Column(
                          children: [
                            InfoField(title: 'Nama', value: item.nama),
                            InfoField(title: 'Alamat', value: item.alamat),
                          ],
                        ),
                        onTap: () {
                          Navigate.push(context, FormPabrikPage(pabrik: item));
                        },
                      ),
                    );
                  });
            });
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigate.push(context, const FormPabrikPage());
        },
        child: const Icon(Icons.factory_outlined),
      ),
    );
  }
}
