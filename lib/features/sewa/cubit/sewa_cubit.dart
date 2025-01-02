import 'package:flexofast_basis_data_dashboard/dao/sewa_dao.dart';
import 'package:flexofast_basis_data_dashboard/datasource/datasource.dart';
import 'package:flexofast_basis_data_dashboard/entity/date_range_entity.dart';
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

  void selectedGudang(int gudangId) {
    final currentClient = state.clientId;
    final currentDate = state.date;

    emit(
      state.maybeMap(
        form: (formState) => formState.copyWith(gudangId: gudangId),
        orElse: () => SewaState.form(
            gudangId: gudangId, client: currentClient, date: currentDate),
      ),
    );
  }

  void selectedClient(int client) {
    final currentGudang = state.gudangId;
    final currentDate = state.date;

    emit(
      state.maybeMap(
        form: (formState) => formState.copyWith(client: client),
        orElse: () => SewaState.form(
            client: client, date: currentDate, gudangId: currentGudang),
      ),
    );
  }

  void selectedDate(DateRangeEntity date) {
    final currentGudang = state.gudangId;
    final currentClient = state.clientId;

    emit(
      state.maybeMap(
        form: (formState) => formState.copyWith(date: date),
        orElse: () => SewaState.form(
            date: date, gudangId: currentGudang, client: currentClient),
      ),
    );
  }

  void resetForm() {
    emit(const SewaState.form());
  }
}
