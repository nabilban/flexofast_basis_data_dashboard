part of 'sewa_cubit.dart';

@freezed
class SewaState with _$SewaState {
  const factory SewaState.initial() = SewaInitial;
  const factory SewaState.loading() = SewaLoading;
  const factory SewaState.loaded(List<SewaEntityData> sewa) = SewaLoaded;
}
