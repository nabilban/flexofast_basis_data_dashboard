import 'package:flexofast_basis_data_dashboard/features/client/cubit/barang_cubit.dart';
import 'package:flexofast_basis_data_dashboard/features/client/pages/form_barang_page.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_scaffold.dart';
import 'package:flexofast_basis_data_dashboard/widgets/empty_widget_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListBarangPage extends StatelessWidget {
  const ListBarangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigate.push(context, const FormBarangPage());
          },
          child: const Icon(Icons.add),
        ),
        title: 'List Barang',
        body: BlocProvider.value(
          value: context.read<BarangCubit>()..getAllBarang(),
          child: BlocBuilder<BarangCubit, BarangState>(
            builder: (context, state) {
              return state.maybeWhen(
                  orElse: () => const EmptyWidgetState(),
                  loaded: (listBarang) {
                    if (listBarang.isEmpty) {
                      return const EmptyWidgetState();
                    }
                    return ListView.builder(
                        itemCount: listBarang.length,
                        itemBuilder: (context, index) {
                          final barang = listBarang[index];
                          return ListTile(
                            title: Text(barang.nama),
                            onTap: () {
                              Navigate.push(
                                  context,
                                  FormBarangPage(
                                    barang: barang,
                                  ));
                            },
                          );
                        });
                  });
            },
          ),
        ));
  }
}
