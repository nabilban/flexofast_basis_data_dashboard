import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_range_entity.freezed.dart';

@freezed
class DateRangeEntity with _$DateRangeEntity {
  const factory DateRangeEntity({
    required DateTime start,
    required DateTime end,
  }) = _DateRangeEntity;
}
