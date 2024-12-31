import 'package:flexofast_basis_data_dashboard/app.dart';
import 'package:flexofast_basis_data_dashboard/features/master/cubit/gudang_cubit.dart';
import 'package:flexofast_basis_data_dashboard/features/pegawai/cubit/pegawai_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalProvider extends StatelessWidget {
  const GlobalProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_) => PegawaiCubit()),
      BlocProvider(create: (_) => GudangCubit()),
    ], child: const App());
  }
}
