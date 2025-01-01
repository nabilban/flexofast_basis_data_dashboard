part of 'sewa_cubit.dart';

@freezed
class SewaState with _$SewaState {
  const factory SewaState.initial() = SewaInitial;
  const factory SewaState.loading() = SewaLoading;
  const factory SewaState.form({
    DateRangeEntity? date,
    required int gudangId,
    required int client,
  }) = SewaForm;
  const factory SewaState.loaded(List<SewaEntityData> sewa) = SewaLoaded;
}

extension SewaStateX on SewaState {
  List<SewaEntityData> get renderedListSewa {
    if (this is SewaLoaded) {
      return (this as SewaLoaded).sewa;
    }
    return [];
  }

  DateRangeEntity? get date {
    if (this is SewaForm) {
      return (this as SewaForm).date;
    }
    return null;
  }

  int get gudangId {
    if (this is SewaForm) {
      return (this as SewaForm).gudangId;
    }
    return 0;
  }

  int get clientId {
    if (this is SewaForm) {
      return (this as SewaForm).client;
    }
    return 0;
  }
}
