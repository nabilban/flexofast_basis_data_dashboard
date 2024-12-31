part of 'client_cubit.dart';

@freezed
class ClientState with _$ClientState {
  const factory ClientState.initial() = ClientInitial;
  const factory ClientState.loading() = ClientLoading;
  const factory ClientState.loaded(
          List<ClientEntityData> listClient, ClientEntityData? selected) =
      ClientLoaded;
  const factory ClientState.error() = ClientError;
}

extension ClientStateX on ClientState {
  List<ClientEntityData> get renderedListClient {
    if (this is ClientLoaded) {
      return (this as ClientLoaded).listClient;
    }
    return [];
  }

  ClientEntityData? get current {
    if (this is ClientLoaded && (this as ClientLoaded).selected != null) {
      return (this as ClientLoaded).selected!;
    }
    return null;
  }
}
