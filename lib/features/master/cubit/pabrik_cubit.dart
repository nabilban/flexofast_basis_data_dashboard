import 'package:flexofast_basis_data_dashboard/dao/master_dao.dart';
import 'package:flexofast_basis_data_dashboard/datasource/datasource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pabrik_state.dart';
part 'pabrik_cubit.freezed.dart';

class PabrikCubit extends Cubit<PabrikState> {
  PabrikCubit() : super(const PabrikState.initial());

  final masterDao = MasterDao.instance;

  Future<void> getPabrikList() async {
    emit(const PabrikState.loading());
    final pabrikList = await masterDao.getAllPabrik();
    emit(PabrikState.loaded(pabrikList));
  }

  Future<void> addPabrik(PabrikEntityCompanion pabrik) async {
    await masterDao.insertPabrik(pabrik);
    await getPabrikList();
  }

  Future<void> updatePabrik(PabrikEntityCompanion pabrik) async {
    await masterDao.updatePabrik(pabrik);
    await getPabrikList();
  }

  Future<void> deletePabrik(int id) async {
    await masterDao.deletePabrik(id);
    await getPabrikList();
  }
}
