import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flexofast_basis_data_dashboard/dao/client_dao.dart';
import 'package:flexofast_basis_data_dashboard/datasource/datasource.dart';

part 'client_cubit.freezed.dart';
part 'client_state.dart';

class ClientCubit extends Cubit<ClientState> {
  ClientCubit(this._clientDao) : super(const ClientState.initial());

  final ClientDao _clientDao;

  Future<void> getAllClient() async {
    emit(const ClientState.loading());
    try {
      final result = await _clientDao.getAllClient();
      emit(ClientState.loaded(result));
    } catch (e) {
      emit(const ClientState.error());
    }
  }

  Future<void> getClientById(int id) async {
    emit(const ClientState.loading());
    try {
      final result = await _clientDao.getClientById(id);
      emit(ClientState.loaded([result]));
    } catch (e) {
      emit(const ClientState.error());
    }
  }

  Future<void> insertClient(ClientEntityCompanion client) async {
    emit(const ClientState.loading());
    try {
      await _clientDao.insertClient(client);
      getAllClient();
    } catch (e) {
      emit(const ClientState.error());
    }
  }

  Future<void> updateClient(ClientEntityCompanion client) async {
    emit(const ClientState.loading());
    try {
      await _clientDao.updateClient(client);
      getAllClient();
    } catch (e) {
      emit(const ClientState.error());
    }
  }

  Future<void> deleteClient(int id) async {
    emit(const ClientState.loading());
    try {
      await _clientDao.deleteClient(id);
      getAllClient();
    } catch (e) {
      emit(const ClientState.error());
    }
  }
}
