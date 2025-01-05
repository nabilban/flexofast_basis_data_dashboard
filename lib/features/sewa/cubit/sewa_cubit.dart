import 'package:flexofast_basis_data_dashboard/dao/sewa_dao.dart';
import 'package:flexofast_basis_data_dashboard/entity/date_range_entity.dart';
import 'package:flexofast_basis_data_dashboard/database/datasource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sewa_state.dart';
part 'sewa_cubit.freezed.dart';

class SewaCubit extends Cubit<SewaState> {
  SewaCubit() : super(const SewaState.initial());

  final _dao = SewaDao.instance;

  Future<void> getAllSewa({
    int? clientId,
  }) async {
    emit(const SewaState.loading());
    final result = await _dao.getAllSewa();
    emit(SewaState.loaded(result));
  }

  Future<TagihanEntityData> createSewa(SewaEntityCompanion sewa) async {
    final tagihan = await _dao.createSewaAndGenerateTagihan(sewa);
    return tagihan;
  }

  void selectedGudang(int gudangId) {
    _updateForm(gudangId: gudangId);
  }

  void selectedClient(int client) {
    _updateForm(clientId: client);
  }

  void selectedDate(DateRangeEntity date) {
    _updateForm(date: date);
  }

  void resetForm() {
    emit(const SewaState.form());
    getAllSewa();
  }

  void _updateForm({
    int? gudangId,
    int? clientId,
    DateRangeEntity? date,
  }) {
    final newState = state.maybeMap(
      form: (formState) => formState.copyWith(
        gudangId: gudangId ?? formState.gudangId,
        client: clientId ?? formState.client,
        date: date ?? formState.date,
      ),
      orElse: () => SewaState.form(
        gudangId: gudangId,
        client: clientId,
        date: date,
      ),
    );

    if (newState != state) {
      emit(newState);
    }
  }
}
