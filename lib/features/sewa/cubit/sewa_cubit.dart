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
    print(sewa);
    final tagihan = await _dao.createSewaAndGenerateTagihan(sewa);

    return tagihan;
  }

  void selectedGudang(int gudangId) {
    final currentClient = state.clientId;
    emit(
      state.maybeMap(
        form: (formState) => formState.copyWith(gudangId: gudangId),
        orElse: () => SewaState.form(gudangId: gudangId, client: currentClient),
      ),
    );
  }

  void selectedClient(int client) {
    final currentGudang = state.gudangId;

    emit(
      state.maybeMap(
        form: (formState) => formState.copyWith(client: client),
        orElse: () => SewaState.form(
            client: client, date: state.date, gudangId: currentGudang),
      ),
    );
  }

  void selectedDate(DateRangeEntity date) {
    emit(
      state.maybeMap(
        form: (formState) => formState.copyWith(date: date),
        orElse: () => SewaState.form(
            date: date, gudangId: state.gudangId, client: state.clientId),
      ),
    );
  }
}
