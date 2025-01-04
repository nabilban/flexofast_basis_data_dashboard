part of 'transaksi_cubit.dart';

@freezed
class TransaksiState with _$TransaksiState {
  const factory TransaksiState.initial() = initial;
  const factory TransaksiState.loading() = Loading;
  const factory TransaksiState.loaded(
          List<TransaksiEntityData> transaksi, List<int> accepetedTransaksi) =
      Loaded;
  const factory TransaksiState.form({
    int? idBarang,
    int? idGudang,
    String? alamat,
    int? volume,
    TipeTransaksi? tipeTransaksi,
  }) = Form;
}

extension TransaksiStateX on TransaksiState {
  List<TransaksiEntityData> get renderedListTransaksi {
    if (this is Loaded) {
      return (this as Loaded).transaksi;
    }
    return [];
  }

  List<int> get acceptedTransaksi {
    if (this is Loaded) {
      return (this as Loaded).accepetedTransaksi;
    }
    return [];
  }

  int? get idBarang {
    if (this is Form) {
      return (this as Form).idBarang;
    }
    return null;
  }

  int? get idGudang {
    if (this is Form) {
      return (this as Form).idGudang;
    }
    return null;
  }

  String? get alamat {
    if (this is Form) {
      return (this as Form).alamat;
    }
    return null;
  }

  int? get volume {
    if (this is Form) {
      return (this as Form).volume;
    }
    return null;
  }

  TipeTransaksi? get tipeTransaksi {
    if (this is Form) {
      return (this as Form).tipeTransaksi;
    }
    return null;
  }
}
