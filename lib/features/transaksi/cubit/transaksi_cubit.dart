import 'package:flexofast_basis_data_dashboard/dao/transaksi_dao.dart';
import 'package:flexofast_basis_data_dashboard/database/datasource.dart';
import 'package:flexofast_basis_data_dashboard/entity/transaksi_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaksi_state.dart';
part 'transaksi_cubit.freezed.dart';

class TransaksiCubit extends Cubit<TransaksiState> {
  TransaksiCubit() : super(const TransaksiState.initial());

  final _dao = TransaksiDao.instance;

  Future<void> getAllTransaksi() async {
    emit(const TransaksiState.loading());
    final result = await _dao.getAllTransaksi();
    emit(TransaksiState.loaded(result));
  }

  void selectedBarang(int idBarang) {
    _updateForm(idBarang: idBarang);
  }

  void formAlamat(String alamat) {
    _updateForm(alamat: alamat);
  }

  void selectedGudang(int idGudang) {
    _updateForm(idGudang: idGudang);
  }

  void formVolume(int volume) {
    _updateForm(volume: volume);
  }

  void selectedTipeTransaksi(TipeTransaksi tipeTransaksi) {
    _updateForm(tipeTransaksi: tipeTransaksi);
  }

  Future<void> createTransaksi(TransaksiEntityCompanion transaksi) async {
    emit(const TransaksiState.loading());
    await _dao.insertTransaksi(transaksi);
    getAllTransaksi();
    resetForm();
  }

  void _updateForm({
    int? idBarang,
    int? idGudang,
    int? volume,
    String? alamat,
    TipeTransaksi? tipeTransaksi,
  }) {
    final newState = state.maybeMap(
      form: (formState) => formState.copyWith(
        idBarang: idBarang ?? formState.idBarang,
        idGudang: idGudang ?? formState.idGudang,
        volume: volume ?? formState.volume,
        alamat: alamat ?? formState.alamat,
        tipeTransaksi: tipeTransaksi ?? formState.tipeTransaksi,
      ),
      orElse: () => TransaksiState.form(
        idBarang: idBarang,
        idGudang: idGudang,
        volume: volume,
        alamat: alamat,
        tipeTransaksi: tipeTransaksi,
      ),
    );

    if (newState != state) {
      emit(newState);
    }
  }

  void resetForm() {
    emit(const TransaksiState.form());
  }
}
