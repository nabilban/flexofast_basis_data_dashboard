import 'package:flexofast_basis_data_dashboard/dao/pegawai_dao.dart';
import 'package:flexofast_basis_data_dashboard/database/datasource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pegawai_state.dart';
part 'pegawai_cubit.freezed.dart';

class PegawaiCubit extends Cubit<PegawaiState> {
  PegawaiCubit() : super(const PegawaiState.initial());

  final pegawaiDao = PegawaiDao.instance;

  Future<void> getAllPegawai() async {
    final current = state.current;
    emit(const PegawaiState.loading());
    final result = await pegawaiDao.getAllPegawai();
    emit(PegawaiState.loaded(result, current));
  }

  Future<void> selectPegawai(int id) async {
    final current = await pegawaiDao.getPegawaiById(id);
    emit(PegawaiState.loaded(state.renderedListPegawai, current));
  }

  Future<void> insertPegawai(PegawaiEntityCompanion pegawai) async {
    await pegawaiDao.insertPegawai(pegawai);
    await getAllPegawai();
  }

  Future<void> updatePegawai(PegawaiEntityData pegawai) async {
    await pegawaiDao.updatePegawai(pegawai);
    await getAllPegawai();
  }

  Future<void> deletePegawai(PegawaiEntityData pegawai) async {
    await pegawaiDao.deletePegawai(pegawai);
    await getAllPegawai();
  }
}
