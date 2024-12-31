import 'package:flexofast_basis_data_dashboard/features/master/cubit/gudang_cubit.dart';
import 'package:flexofast_basis_data_dashboard/features/master/pages/form_gudang_page.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/utils.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_scaffold.dart';
import 'package:flexofast_basis_data_dashboard/widgets/empty_widget_state.dart';
import 'package:flexofast_basis_data_dashboard/widgets/info_field.dart';
import 'package:flexofast_basis_data_dashboard/widgets/loading_widget_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListGudangPage extends StatelessWidget {
  const ListGudangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: 'Daftar Gudang',
      body: BlocProvider.value(
        value: context.read<GudangCubit>()..getAllGudang(),
        child: BlocBuilder<GudangCubit, GudangState>(
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
                              'Gudang ${item.id}',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        subtitle: Column(
                          children: [
                            InfoField(title: 'Alamat', value: item.alamat),
                            InfoField(title: 'Tipe', value: item.tipe),
                            InfoField(
                                title: 'Volume', value: '${item.volume} m³'),
                            InfoField(
                              title: 'Harga/Hari',
                              value: Utils.formatCurrency(
                                item.harga,
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigate.push(context, FormGudangPage(gudang: item));
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
          Navigate.push(context, const FormGudangPage());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
