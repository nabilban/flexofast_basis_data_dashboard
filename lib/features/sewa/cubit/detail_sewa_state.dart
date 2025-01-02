part of 'detail_sewa_cubit.dart';

@freezed
class DetailSewaState with _$DetailSewaState {
  const factory DetailSewaState.initial() = Initial;
  const factory DetailSewaState.loading() = Loading;
  const factory DetailSewaState.loaded(DetailSewaViewData sewa) = Loaded;
}
