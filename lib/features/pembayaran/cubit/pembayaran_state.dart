part of 'pembayaran_cubit.dart';

@freezed
class PembayaranState with _$PembayaranState {
  const factory PembayaranState.initial() = _Initial;
  const factory PembayaranState.success() = _Success;
  const factory PembayaranState.failed() = _Failed;
}
