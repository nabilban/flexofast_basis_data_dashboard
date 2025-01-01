part of 'distributor_cubit.dart';

@freezed
class DistributorState with _$DistributorState {
  const factory DistributorState.initial() = DistributorInitial;
  const factory DistributorState.loading() = DistributorLoading;
  const factory DistributorState.loaded(
      List<DistributorEntityData> distributorList) = DistributorLoaded;
}
