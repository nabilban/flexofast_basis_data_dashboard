import 'package:flexofast_basis_data_dashboard/dao/sewa_dao.dart';
import 'package:flexofast_basis_data_dashboard/database/datasource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pembayaran_state.dart';
part 'pembayaran_cubit.freezed.dart';

class PembayaranCubit extends Cubit<PembayaranState> {
  PembayaranCubit() : super(const PembayaranState.initial());

  final SewaDao _dao = SewaDao.instance;

  void pay(int idSewa, int total) async {
    await _dao.insertPembayaran(
        idSewa, PembayaranEntityCompanion.insert(jumlahBayar: total));
    emit(const PembayaranState.success());
  }
}
