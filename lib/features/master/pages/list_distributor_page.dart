import 'package:flexofast_basis_data_dashboard/features/master/cubit/distributor_cubit.dart';
import 'package:flexofast_basis_data_dashboard/features/master/pages/form_distributor_page.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_scaffold.dart';
import 'package:flexofast_basis_data_dashboard/widgets/empty_widget_state.dart';
import 'package:flexofast_basis_data_dashboard/widgets/info_field.dart';
import 'package:flexofast_basis_data_dashboard/widgets/loading_widget_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListDistributorPage extends StatelessWidget {
  const ListDistributorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: 'Daftar Distributor',
      body: BlocProvider.value(
        value: context.read<DistributorCubit>()..getAllDistributor(),
        child: BlocBuilder<DistributorCubit, DistributorState>(
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
                              'Distributor ${item.id}',
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
                          Navigate.push(
                              context, FormDistributorPage(data: item));
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
          Navigate.push(context, const FormDistributorPage());
        },
        child: const Icon(Icons.store_outlined),
      ),
    );
  }
}
