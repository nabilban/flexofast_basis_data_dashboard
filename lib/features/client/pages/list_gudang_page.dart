import 'package:flexofast_basis_data_dashboard/features/client/cubit/client_gudang_cubit.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_scaffold.dart';
import 'package:flexofast_basis_data_dashboard/widgets/empty_widget_state.dart';
import 'package:flexofast_basis_data_dashboard/widgets/loading_widget_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListGudangPage extends StatelessWidget {
  const ListGudangPage({super.key, required this.clientId});

  final int clientId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ClientGudangCubit>(
      create: (context) => ClientGudangCubit(clientId)..getAllGudang(),
      child: BlocBuilder<ClientGudangCubit, ClientGudangState>(
        builder: (context, state) {
          return CommonScaffold(
            title: 'List Gudang',
            body: state.maybeWhen(
                orElse: () => const LoadingWidgetState(),
                loaded: (gudangs) {
                  if (gudangs.isEmpty) {
                    return const EmptyWidgetState();
                  }
                  return ListView(
                    children: gudangs
                        .map((gudang) => ListTile(
                              title: Text('Gudang ${gudang.id}'),
                              onTap: () {},
                            ))
                        .toList(),
                  );
                }),
          );
        },
      ),
    );
  }
}
