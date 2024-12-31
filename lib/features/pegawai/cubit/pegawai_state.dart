part of 'pegawai_cubit.dart';

@freezed
class PegawaiState with _$PegawaiState {
  const factory PegawaiState.initial() = PegawaiInitial;
  const factory PegawaiState.loading() = PegawaiLoading;
  const factory PegawaiState.loaded(
          List<PegawaiEntityData> listPegawai, PegawaiEntityData? selected) =
      PegawaiLoaded;
}

extension PegawaiStateX on PegawaiState {
  List<PegawaiEntityData> get renderedListPegawai {
    if (this is PegawaiLoaded) {
      return (this as PegawaiLoaded).listPegawai;
    }
    return [];
  }

  PegawaiEntityData? get current {
    if (this is PegawaiLoaded && (this as PegawaiLoaded).selected != null) {
      return (this as PegawaiLoaded).selected!;
    }
    return null;
  }
}
