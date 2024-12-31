import 'package:flexofast_basis_data_dashboard/dao/master_dao.dart';
import 'package:flexofast_basis_data_dashboard/datasource/datasource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gudang_state.dart';
part 'gudang_cubit.freezed.dart';

class GudangCubit extends Cubit<GudangState> {
  GudangCubit() : super(const GudangState.initial());

  final masterDao = MasterDao.instance;

  Future<void> getAllGudang() async {
    emit(const GudangState.loading());
    final result = await masterDao.getAllGudang();
    emit(GudangState.loaded(listGudang: result));
  }

  Future<void> insertGudang(GudangEntityCompanion gudang) async {
    emit(const GudangState.loading());
    await masterDao.insertGudang(gudang);
    await getAllGudang();
  }

  Future<void> updateGudang(GudangEntityData gudang) async {
    emit(const GudangState.loading());
    await masterDao.updateGudang(gudang);
    await getAllGudang();
  }

  Future<void> deleteGudang(int id) async {
    emit(const GudangState.loading());
    await masterDao.deleteGudang(id);
    await getAllGudang();
  }
}
