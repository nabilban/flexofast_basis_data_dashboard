import 'package:bloc/bloc.dart';
import 'package:flexofast_basis_data_dashboard/dao/barang_dao.dart';
import 'package:flexofast_basis_data_dashboard/database/datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'barang_state.dart';
part 'barang_cubit.freezed.dart';

class BarangCubit extends Cubit<BarangState> {
  BarangCubit() : super(const BarangState.initial());

  final barangDao = BarangDao.instance;

  Future<void> getAllBarang() async {
    emit(const BarangState.loading());
    try {
      final result = await barangDao.getAllBarang();
      emit(BarangState.loaded(result));
    } catch (e) {
      emit(const BarangState.error());
    }
  }

  // Future<void> selectedBarang(int id) async {
  //   try {
  //     emit(const BarangState.loading());
  //     final result = await barangDao.getBarangById(id);
  //     emit(BarangState.loaded(result));
  //   } catch (e) {
  //     emit(const BarangState.error());
  //   }
  // }

  Future<void> insertBarang(BarangEntityCompanion barang) async {
    emit(const BarangState.loading());
    try {
      await barangDao.insertBarang(barang);
      getAllBarang();
    } catch (e) {
      emit(const BarangState.error());
    }
  }

  Future<void> updateBarang(BarangEntityData barang) async {
    emit(const BarangState.loading());
    try {
      await barangDao.updateBarang(barang);
      getAllBarang();
    } catch (e) {
      emit(const BarangState.error());
    }
  }

  Future<void> deleteBarang(int id) async {
    emit(const BarangState.loading());
    try {
      await barangDao.deleteBarang(id);
      getAllBarang();
    } catch (e) {
      emit(const BarangState.error());
    }
  }

  // Future<void> searchBarang(String keyword) async {
  //   final current = state.current;
  //   emit(const BarangState.loading());
  //   try {
  //     final result = await barangDao.searchBarang(keyword);
  //     emit(BarangState.loaded(result, current));
  //   } catch (e) {
  //     emit(const BarangState.error());
  //   }
  // }
}
