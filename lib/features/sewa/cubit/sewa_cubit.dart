import 'package:flexofast_basis_data_dashboard/dao/sewa_dao.dart';
import 'package:flexofast_basis_data_dashboard/datasource/datasource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sewa_state.dart';
part 'sewa_cubit.freezed.dart';

class SewaCubit extends Cubit<SewaState> {
  SewaCubit() : super(const SewaState.initial());

  final _dao = SewaDao.instance;

  Future<void> getAllSewa() async {
    emit(const SewaState.loading());
    final result = await _dao.getAllSewa();
    emit(SewaState.loaded(result));
  }

  Future<TagihanEntityData> createSewa(SewaEntityCompanion sewa) async {
    final tagihan = await _dao.createSewaAndGenerateTagihan(sewa);

    return tagihan;
  }
}
