import 'package:flexofast_basis_data_dashboard/datasource/datasource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gudang_state.dart';
part 'gudang_cubit.freezed.dart';

class GudangCubit extends Cubit<GudangState> {
  GudangCubit() : super(const GudangState.initial());
}
