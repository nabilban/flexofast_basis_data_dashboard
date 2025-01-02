import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flexofast_basis_data_dashboard/dao/client_dao.dart';
import 'package:flexofast_basis_data_dashboard/database/datasource.dart';

part 'client_cubit.freezed.dart';
part 'client_state.dart';

class ClientCubit extends Cubit<ClientState> {
  ClientCubit() : super(const ClientState.initial());

  final clientDao = ClientDao.instance;

  Future<void> getAllClient() async {
    final current = state.current;
    emit(const ClientState.loading());
    try {
      final result = await clientDao.getAllClient();
      emit(ClientState.loaded(result, current));
    } catch (e) {
      emit(const ClientState.error());
    }
  }

  Future<void> selectedClient(int id) async {
    try {
      final current = state.renderedListClient;
      emit(const ClientState.loading());
      final result = await clientDao.getClientById(id);
      emit(ClientState.loaded(current, result));
    } catch (e) {
      emit(const ClientState.error());
    }
  }

  Future<void> insertClient(ClientEntityCompanion client) async {
    emit(const ClientState.loading());
    try {
      await clientDao.insertClient(client);
      getAllClient();
    } catch (e) {
      emit(const ClientState.error());
    }
  }

  Future<void> updateClient(ClientEntityData client) async {
    emit(const ClientState.loading());
    try {
      await clientDao.updateClient(client);
      getAllClient();
    } catch (e) {
      emit(const ClientState.error());
    }
  }

  Future<void> deleteClient(int id) async {
    emit(const ClientState.loading());
    try {
      await clientDao.deleteClient(id);
      getAllClient();
    } catch (e) {
      emit(const ClientState.error());
    }
  }
}
