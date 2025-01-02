part of 'detail_sewa_cubit.dart';

@freezed
class DetailSewaState with _$DetailSewaState {
  const factory DetailSewaState.initial() = DetailSewaInitial;
  const factory DetailSewaState.loading() = DetailSewaLoading;
  const factory DetailSewaState.loaded(DetailSewaViewData sewa) =
      DetailSewaLoaded;
  const factory DetailSewaState.error() = DetailSewaError;
}
