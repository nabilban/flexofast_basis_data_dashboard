import 'package:flexofast_basis_data_dashboard/features/client/cubit/client_cubit.dart';
import 'package:flexofast_basis_data_dashboard/features/client/pages/client_dashboard_page.dart';
import 'package:flexofast_basis_data_dashboard/features/client/pages/form_client_page.dart';
import 'package:flexofast_basis_data_dashboard/navigate.dart';
import 'package:flexofast_basis_data_dashboard/widgets/common_scaffold.dart';
import 'package:flexofast_basis_data_dashboard/widgets/empty_widget_state.dart';
import 'package:flexofast_basis_data_dashboard/widgets/loading_widget_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClientLoginPage extends StatelessWidget {
  const ClientLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: context.read<ClientCubit>()..getAllClient(),
      child: CommonScaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigate.push(context, const FormClientPage());
            },
            child: const Icon(Icons.person_add_alt_1_rounded),
          ),
          title: 'Login Client',
          body: BlocBuilder<ClientCubit, ClientState>(
            builder: (context, state) {
              return state.maybeWhen(
                  loading: () => const LoadingWidgetState(),
                  orElse: () => const LoadingWidgetState(),
                  loaded: (listClient, selected) {
                    if (listClient.isEmpty) {
                      return const EmptyWidgetState();
                    }
                    return ListView.builder(
                        itemCount: listClient.length,
                        itemBuilder: (context, index) {
                          final client = listClient[index];
                          return ListTile(
                            title: Text(client.nama),
                            onLongPress: () {
                              Navigate.push(
                                  context, FormClientPage(client: client));
                            },
                            onTap: () {
                              context
                                  .read<ClientCubit>()
                                  .selectedClient(client.id);
                              Navigate.push(
                                  context, const ClientDashboardPage());
                            },
                          );
                        });
                  });
            },
          )),
    );
  }
}
