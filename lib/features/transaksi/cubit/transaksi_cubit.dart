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

  Future<List<int>> getAllAcceptedTransaksiId() async {
    final currentTransaksi = state.renderedListTransaksi;
    emit(const TransaksiState.loading());
    final result = await _dao.getAllAcceptedTransaksiId();
    emit(TransaksiState.loaded(currentTransaksi, result));
    return result;
  }

  Future<void> getUnacceptedTransaksi() async {
    final currentAccepted = await getAllAcceptedTransaksiId();
    emit(const TransaksiState.loading());
    final result = await _dao.getAllUnacceptedTransaksi();
    emit(TransaksiState.loaded(result, currentAccepted));
  }

  Future<void> getTransaksiByClientId(int id) async {
    final currentAccepted = await getAllAcceptedTransaksiId();
    emit(const TransaksiState.loading());
    final result = await _dao.getAllTransaksiByClientId(id);
    emit(TransaksiState.loaded(result, currentAccepted));
  }

  Future<void> persetujuanTransaksi(int idPegawai, int idPersetujuan) async {
    emit(const TransaksiState.loading());
    await _dao.persetujuanTransaksi(idPegawai, idPersetujuan);
    getUnacceptedTransaksi();
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
    await _dao.insertTransaksiDanPersetujuan(transaksi);
    getTransaksiByClientId(transaksi.idClient.value);
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

extension TransaksiCubitExtension on TransaksiCubit {
  void initializeTransaksi(int? clientId) {
    if (clientId == null) {
      getUnacceptedTransaksi();
    } else {
      getTransaksiByClientId(clientId);
    }
  }
}
