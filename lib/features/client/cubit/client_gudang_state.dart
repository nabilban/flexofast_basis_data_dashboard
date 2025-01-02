part of 'client_gudang_cubit.dart';

@freezed
class ClientGudangState with _$ClientGudangState {
  const factory ClientGudangState.initial() = ClientGudangInitial;
  const factory ClientGudangState.loading() = ClientGudangLoading;
  const factory ClientGudangState.loaded(List<GudangEntityData> gudangs) =
      ClientGudangLoaded;
}
