part of 'detail_sewa_cubit.dart';

@freezed
class DetailSewaState with _$DetailSewaState {
  const factory DetailSewaState.initial() = DetailSewaInitial;
  const factory DetailSewaState.loading() = DetailSewaLoading;
  const factory DetailSewaState.loaded(
      DetailSewaViewData sewa, TagihanEntityData tagihan) = DetailSewaLoaded;
  const factory DetailSewaState.error() = DetailSewaError;
}

extension DetailSewaStateX on DetailSewaState {
  String get statusPemabyaran {
    if (this is DetailSewaLoaded) {
      return (this as DetailSewaLoaded).tagihan.idPembayaran == null
          ? 'Belum Lunas'
          : 'Lunas';
    }
    return 'Belum Ada Data';
  }
}
