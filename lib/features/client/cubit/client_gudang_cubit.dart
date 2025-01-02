import 'package:flexofast_basis_data_dashboard/dao/client_dao.dart';
import 'package:flexofast_basis_data_dashboard/database/datasource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_gudang_state.dart';
part 'client_gudang_cubit.freezed.dart';

class ClientGudangCubit extends Cubit<ClientGudangState> {
  ClientGudangCubit(this.clientId) : super(const ClientGudangState.initial());

  final int clientId;

  final ClientDao _clientDao = ClientDao.instance;

  Future<void> getAllGudang() async {
    emit(const ClientGudangState.loading());
    final result = await _clientDao.getGudangByClientId(clientId);
    emit(ClientGudangState.loaded(result));
  }
}
