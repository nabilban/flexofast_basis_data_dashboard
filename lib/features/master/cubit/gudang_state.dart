part of 'gudang_cubit.dart';

@freezed
class GudangState with _$GudangState {
  const factory GudangState.initial() = GudangInitial;
  const factory GudangState.loading() = GudangLoading;
  const factory GudangState.loaded({
    required List<GudangEntityData> listGudang,
  }) = GudangLoaded;
}

extension GudangStateX on GudangState {
  List<GudangEntityData> get listGudang => maybeWhen(
        orElse: () => [],
        loaded: (listGudang) => listGudang,
      );
}
