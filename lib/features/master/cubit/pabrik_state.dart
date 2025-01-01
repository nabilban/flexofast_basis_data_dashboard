part of 'pabrik_cubit.dart';

@freezed
class PabrikState with _$PabrikState {
  const factory PabrikState.initial() = PabrikInitial;
  const factory PabrikState.loading() = PabrikLoading;
  const factory PabrikState.loaded(List<PabrikEntityData> pabrikList) =
      PabrikLoaded;
}
