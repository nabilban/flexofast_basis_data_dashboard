import 'package:flexofast_basis_data_dashboard/features/master/cubit/gudang_cubit.dart';
import 'package:flexofast_basis_data_dashboard/widgets/empty_widget_state.dart';
import 'package:flexofast_basis_data_dashboard/widgets/info_field.dart';
import 'package:flexofast_basis_data_dashboard/widgets/loading_widget_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListGudangPage extends StatelessWidget {
  const ListGudangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
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
                itemCount: list.length,
                itemBuilder: (context, index) {
                  final item = list[index];
                  return ListTile(
                    title: Row(
                      children: [
                        Text('Gudang ${item.id}'),
                      ],
                    ),
                    subtitle: Column(
                      children: [
                        InfoField(title: 'Volume', value: '${item.volume} m³'),
                        InfoField(title: 'Tipe', value: item.tipe),
                        InfoField(title: 'Alamat', value: item.alamat),
                      ],
                    ),
                    onTap: () {
                      // Navigate.push(context, FormGudangPage(gudang: item));
                    },
                  );
                });
          });
        },
      ),
    );
  }
}
