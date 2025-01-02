// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_gudang_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClientGudangState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GudangEntityData> gudangs) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GudangEntityData> gudangs)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GudangEntityData> gudangs)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientGudangInitial value) initial,
    required TResult Function(ClientGudangLoading value) loading,
    required TResult Function(ClientGudangLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientGudangInitial value)? initial,
    TResult? Function(ClientGudangLoading value)? loading,
    TResult? Function(ClientGudangLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientGudangInitial value)? initial,
    TResult Function(ClientGudangLoading value)? loading,
    TResult Function(ClientGudangLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientGudangStateCopyWith<$Res> {
  factory $ClientGudangStateCopyWith(
          ClientGudangState value, $Res Function(ClientGudangState) then) =
      _$ClientGudangStateCopyWithImpl<$Res, ClientGudangState>;
}

/// @nodoc
class _$ClientGudangStateCopyWithImpl<$Res, $Val extends ClientGudangState>
    implements $ClientGudangStateCopyWith<$Res> {
  _$ClientGudangStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClientGudangState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ClientGudangInitialImplCopyWith<$Res> {
  factory _$$ClientGudangInitialImplCopyWith(_$ClientGudangInitialImpl value,
          $Res Function(_$ClientGudangInitialImpl) then) =
      __$$ClientGudangInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientGudangInitialImplCopyWithImpl<$Res>
    extends _$ClientGudangStateCopyWithImpl<$Res, _$ClientGudangInitialImpl>
    implements _$$ClientGudangInitialImplCopyWith<$Res> {
  __$$ClientGudangInitialImplCopyWithImpl(_$ClientGudangInitialImpl _value,
      $Res Function(_$ClientGudangInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientGudangState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClientGudangInitialImpl implements ClientGudangInitial {
  const _$ClientGudangInitialImpl();

  @override
  String toString() {
    return 'ClientGudangState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientGudangInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GudangEntityData> gudangs) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GudangEntityData> gudangs)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GudangEntityData> gudangs)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientGudangInitial value) initial,
    required TResult Function(ClientGudangLoading value) loading,
    required TResult Function(ClientGudangLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientGudangInitial value)? initial,
    TResult? Function(ClientGudangLoading value)? loading,
    TResult? Function(ClientGudangLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientGudangInitial value)? initial,
    TResult Function(ClientGudangLoading value)? loading,
    TResult Function(ClientGudangLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ClientGudangInitial implements ClientGudangState {
  const factory ClientGudangInitial() = _$ClientGudangInitialImpl;
}

/// @nodoc
abstract class _$$ClientGudangLoadingImplCopyWith<$Res> {
  factory _$$ClientGudangLoadingImplCopyWith(_$ClientGudangLoadingImpl value,
          $Res Function(_$ClientGudangLoadingImpl) then) =
      __$$ClientGudangLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientGudangLoadingImplCopyWithImpl<$Res>
    extends _$ClientGudangStateCopyWithImpl<$Res, _$ClientGudangLoadingImpl>
    implements _$$ClientGudangLoadingImplCopyWith<$Res> {
  __$$ClientGudangLoadingImplCopyWithImpl(_$ClientGudangLoadingImpl _value,
      $Res Function(_$ClientGudangLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientGudangState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClientGudangLoadingImpl implements ClientGudangLoading {
  const _$ClientGudangLoadingImpl();

  @override
  String toString() {
    return 'ClientGudangState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientGudangLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GudangEntityData> gudangs) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GudangEntityData> gudangs)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GudangEntityData> gudangs)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientGudangInitial value) initial,
    required TResult Function(ClientGudangLoading value) loading,
    required TResult Function(ClientGudangLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientGudangInitial value)? initial,
    TResult? Function(ClientGudangLoading value)? loading,
    TResult? Function(ClientGudangLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientGudangInitial value)? initial,
    TResult Function(ClientGudangLoading value)? loading,
    TResult Function(ClientGudangLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ClientGudangLoading implements ClientGudangState {
  const factory ClientGudangLoading() = _$ClientGudangLoadingImpl;
}

/// @nodoc
abstract class _$$ClientGudangLoadedImplCopyWith<$Res> {
  factory _$$ClientGudangLoadedImplCopyWith(_$ClientGudangLoadedImpl value,
          $Res Function(_$ClientGudangLoadedImpl) then) =
      __$$ClientGudangLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GudangEntityData> gudangs});
}

/// @nodoc
class __$$ClientGudangLoadedImplCopyWithImpl<$Res>
    extends _$ClientGudangStateCopyWithImpl<$Res, _$ClientGudangLoadedImpl>
    implements _$$ClientGudangLoadedImplCopyWith<$Res> {
  __$$ClientGudangLoadedImplCopyWithImpl(_$ClientGudangLoadedImpl _value,
      $Res Function(_$ClientGudangLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientGudangState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gudangs = null,
  }) {
    return _then(_$ClientGudangLoadedImpl(
      null == gudangs
          ? _value._gudangs
          : gudangs // ignore: cast_nullable_to_non_nullable
              as List<GudangEntityData>,
    ));
  }
}

/// @nodoc

class _$ClientGudangLoadedImpl implements ClientGudangLoaded {
  const _$ClientGudangLoadedImpl(final List<GudangEntityData> gudangs)
      : _gudangs = gudangs;

  final List<GudangEntityData> _gudangs;
  @override
  List<GudangEntityData> get gudangs {
    if (_gudangs is EqualUnmodifiableListView) return _gudangs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gudangs);
  }

  @override
  String toString() {
    return 'ClientGudangState.loaded(gudangs: $gudangs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientGudangLoadedImpl &&
            const DeepCollectionEquality().equals(other._gudangs, _gudangs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_gudangs));

  /// Create a copy of ClientGudangState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientGudangLoadedImplCopyWith<_$ClientGudangLoadedImpl> get copyWith =>
      __$$ClientGudangLoadedImplCopyWithImpl<_$ClientGudangLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GudangEntityData> gudangs) loaded,
  }) {
    return loaded(gudangs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GudangEntityData> gudangs)? loaded,
  }) {
    return loaded?.call(gudangs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GudangEntityData> gudangs)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(gudangs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientGudangInitial value) initial,
    required TResult Function(ClientGudangLoading value) loading,
    required TResult Function(ClientGudangLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientGudangInitial value)? initial,
    TResult? Function(ClientGudangLoading value)? loading,
    TResult? Function(ClientGudangLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientGudangInitial value)? initial,
    TResult Function(ClientGudangLoading value)? loading,
    TResult Function(ClientGudangLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ClientGudangLoaded implements ClientGudangState {
  const factory ClientGudangLoaded(final List<GudangEntityData> gudangs) =
      _$ClientGudangLoadedImpl;

  List<GudangEntityData> get gudangs;

  /// Create a copy of ClientGudangState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientGudangLoadedImplCopyWith<_$ClientGudangLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
