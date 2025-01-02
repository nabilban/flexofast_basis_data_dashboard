import 'package:flexofast_basis_data_dashboard/dao/sewa_dao.dart';
import 'package:flexofast_basis_data_dashboard/database/datasource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_sewa_state.dart';
part 'detail_sewa_cubit.freezed.dart';

class DetailSewaCubit extends Cubit<DetailSewaState> {
  DetailSewaCubit() : super(const DetailSewaState.initial());

  final dao = SewaDao.instance;

  Future<void> getDetailSewa(int id) async {
    emit(const DetailSewaState.loading());
    final resultDetail = await dao.getDetailSewa(id);
    final resultTagihan = await dao.getTagihanBySewaId(id);
    if (resultDetail == null) {
      emit(const DetailSewaState.error());
      return;
    }

    emit(DetailSewaState.loaded(resultDetail, resultTagihan));
  }
}
