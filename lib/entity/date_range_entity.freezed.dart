// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_range_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DateRangeEntity {
  DateTime get start => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;

  /// Create a copy of DateRangeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DateRangeEntityCopyWith<DateRangeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateRangeEntityCopyWith<$Res> {
  factory $DateRangeEntityCopyWith(
          DateRangeEntity value, $Res Function(DateRangeEntity) then) =
      _$DateRangeEntityCopyWithImpl<$Res, DateRangeEntity>;
  @useResult
  $Res call({DateTime start, DateTime end});
}

/// @nodoc
class _$DateRangeEntityCopyWithImpl<$Res, $Val extends DateRangeEntity>
    implements $DateRangeEntityCopyWith<$Res> {
  _$DateRangeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DateRangeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DateRangeEntityImplCopyWith<$Res>
    implements $DateRangeEntityCopyWith<$Res> {
  factory _$$DateRangeEntityImplCopyWith(_$DateRangeEntityImpl value,
          $Res Function(_$DateRangeEntityImpl) then) =
      __$$DateRangeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime start, DateTime end});
}

/// @nodoc
class __$$DateRangeEntityImplCopyWithImpl<$Res>
    extends _$DateRangeEntityCopyWithImpl<$Res, _$DateRangeEntityImpl>
    implements _$$DateRangeEntityImplCopyWith<$Res> {
  __$$DateRangeEntityImplCopyWithImpl(
      _$DateRangeEntityImpl _value, $Res Function(_$DateRangeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of DateRangeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$DateRangeEntityImpl(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DateRangeEntityImpl implements _DateRangeEntity {
  const _$DateRangeEntityImpl({required this.start, required this.end});

  @override
  final DateTime start;
  @override
  final DateTime end;

  @override
  String toString() {
    return 'DateRangeEntity(start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateRangeEntityImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  /// Create a copy of DateRangeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateRangeEntityImplCopyWith<_$DateRangeEntityImpl> get copyWith =>
      __$$DateRangeEntityImplCopyWithImpl<_$DateRangeEntityImpl>(
          this, _$identity);
}

abstract class _DateRangeEntity implements DateRangeEntity {
  const factory _DateRangeEntity(
      {required final DateTime start,
      required final DateTime end}) = _$DateRangeEntityImpl;

  @override
  DateTime get start;
  @override
  DateTime get end;

  /// Create a copy of DateRangeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateRangeEntityImplCopyWith<_$DateRangeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
