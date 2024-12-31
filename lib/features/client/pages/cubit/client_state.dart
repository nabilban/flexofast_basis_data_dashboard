part of 'client_cubit.dart';

@freezed
class ClientState with _$ClientState {
  const factory ClientState.initial() = _Initial;
  const factory ClientState.loading() = _Loading;
  const factory ClientState.loaded(List<ClientEntityData> result) = _Loaded;
  const factory ClientState.error() = _Error;
}
