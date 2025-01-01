import 'package:flexofast_basis_data_dashboard/dao/master_dao.dart';
import 'package:flexofast_basis_data_dashboard/datasource/datasource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'distributor_state.dart';
part 'distributor_cubit.freezed.dart';

class DistributorCubit extends Cubit<DistributorState> {
  DistributorCubit() : super(const DistributorState.initial());

  final masterDao = MasterDao.instance;

  Future<void> getAllDistributor() async {
    emit(const DistributorState.loading());
    final result = await masterDao.getAllDistributor();
    emit(DistributorState.loaded(result));
  }

  Future<void> insertDistributor(DistributorEntityCompanion distributor) async {
    emit(const DistributorState.loading());
    await masterDao.insertDistributor(distributor);
    await getAllDistributor();
  }

  Future<void> updateDistributor(DistributorEntityCompanion distributor) async {
    emit(const DistributorState.loading());
    await masterDao.updateDistributor(distributor);
    await getAllDistributor();
  }

  Future<void> deleteDistributor(int id) async {
    emit(const DistributorState.loading());
    await masterDao.deleteDistributor(id);
    await getAllDistributor();
  }
}
