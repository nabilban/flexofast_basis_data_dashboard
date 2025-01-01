part of 'barang_cubit.dart';

@freezed
class BarangState with _$BarangState {
  const factory BarangState.initial() = BarangInitial;
  const factory BarangState.loading() = BarangLoading;
  const factory BarangState.loaded(List<BarangEntityData> listBarang) =
      BarangLoaded;
  const factory BarangState.error() = BarangError;
}
