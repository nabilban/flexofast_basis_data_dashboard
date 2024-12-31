// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClientState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ClientEntityData> listClient, ClientEntityData? selected)
        loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ClientEntityData> listClient, ClientEntityData? selected)?
        loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ClientEntityData> listClient, ClientEntityData? selected)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientInitial value) initial,
    required TResult Function(ClientLoading value) loading,
    required TResult Function(ClientLoaded value) loaded,
    required TResult Function(ClientError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientInitial value)? initial,
    TResult? Function(ClientLoading value)? loading,
    TResult? Function(ClientLoaded value)? loaded,
    TResult? Function(ClientError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientInitial value)? initial,
    TResult Function(ClientLoading value)? loading,
    TResult Function(ClientLoaded value)? loaded,
    TResult Function(ClientError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientStateCopyWith<$Res> {
  factory $ClientStateCopyWith(
          ClientState value, $Res Function(ClientState) then) =
      _$ClientStateCopyWithImpl<$Res, ClientState>;
}

/// @nodoc
class _$ClientStateCopyWithImpl<$Res, $Val extends ClientState>
    implements $ClientStateCopyWith<$Res> {
  _$ClientStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ClientInitialImplCopyWith<$Res> {
  factory _$$ClientInitialImplCopyWith(
          _$ClientInitialImpl value, $Res Function(_$ClientInitialImpl) then) =
      __$$ClientInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientInitialImplCopyWithImpl<$Res>
    extends _$ClientStateCopyWithImpl<$Res, _$ClientInitialImpl>
    implements _$$ClientInitialImplCopyWith<$Res> {
  __$$ClientInitialImplCopyWithImpl(
      _$ClientInitialImpl _value, $Res Function(_$ClientInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClientInitialImpl implements ClientInitial {
  const _$ClientInitialImpl();

  @override
  String toString() {
    return 'ClientState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClientInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ClientEntityData> listClient, ClientEntityData? selected)
        loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ClientEntityData> listClient, ClientEntityData? selected)?
        loaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ClientEntityData> listClient, ClientEntityData? selected)?
        loaded,
    TResult Function()? error,
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
    required TResult Function(ClientInitial value) initial,
    required TResult Function(ClientLoading value) loading,
    required TResult Function(ClientLoaded value) loaded,
    required TResult Function(ClientError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientInitial value)? initial,
    TResult? Function(ClientLoading value)? loading,
    TResult? Function(ClientLoaded value)? loaded,
    TResult? Function(ClientError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientInitial value)? initial,
    TResult Function(ClientLoading value)? loading,
    TResult Function(ClientLoaded value)? loaded,
    TResult Function(ClientError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ClientInitial implements ClientState {
  const factory ClientInitial() = _$ClientInitialImpl;
}

/// @nodoc
abstract class _$$ClientLoadingImplCopyWith<$Res> {
  factory _$$ClientLoadingImplCopyWith(
          _$ClientLoadingImpl value, $Res Function(_$ClientLoadingImpl) then) =
      __$$ClientLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientLoadingImplCopyWithImpl<$Res>
    extends _$ClientStateCopyWithImpl<$Res, _$ClientLoadingImpl>
    implements _$$ClientLoadingImplCopyWith<$Res> {
  __$$ClientLoadingImplCopyWithImpl(
      _$ClientLoadingImpl _value, $Res Function(_$ClientLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClientLoadingImpl implements ClientLoading {
  const _$ClientLoadingImpl();

  @override
  String toString() {
    return 'ClientState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClientLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ClientEntityData> listClient, ClientEntityData? selected)
        loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ClientEntityData> listClient, ClientEntityData? selected)?
        loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ClientEntityData> listClient, ClientEntityData? selected)?
        loaded,
    TResult Function()? error,
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
    required TResult Function(ClientInitial value) initial,
    required TResult Function(ClientLoading value) loading,
    required TResult Function(ClientLoaded value) loaded,
    required TResult Function(ClientError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientInitial value)? initial,
    TResult? Function(ClientLoading value)? loading,
    TResult? Function(ClientLoaded value)? loaded,
    TResult? Function(ClientError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientInitial value)? initial,
    TResult Function(ClientLoading value)? loading,
    TResult Function(ClientLoaded value)? loaded,
    TResult Function(ClientError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ClientLoading implements ClientState {
  const factory ClientLoading() = _$ClientLoadingImpl;
}

/// @nodoc
abstract class _$$ClientLoadedImplCopyWith<$Res> {
  factory _$$ClientLoadedImplCopyWith(
          _$ClientLoadedImpl value, $Res Function(_$ClientLoadedImpl) then) =
      __$$ClientLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ClientEntityData> listClient, ClientEntityData? selected});
}

/// @nodoc
class __$$ClientLoadedImplCopyWithImpl<$Res>
    extends _$ClientStateCopyWithImpl<$Res, _$ClientLoadedImpl>
    implements _$$ClientLoadedImplCopyWith<$Res> {
  __$$ClientLoadedImplCopyWithImpl(
      _$ClientLoadedImpl _value, $Res Function(_$ClientLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listClient = null,
    Object? selected = freezed,
  }) {
    return _then(_$ClientLoadedImpl(
      null == listClient
          ? _value._listClient
          : listClient // ignore: cast_nullable_to_non_nullable
              as List<ClientEntityData>,
      freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as ClientEntityData?,
    ));
  }
}

/// @nodoc

class _$ClientLoadedImpl implements ClientLoaded {
  const _$ClientLoadedImpl(
      final List<ClientEntityData> listClient, this.selected)
      : _listClient = listClient;

  final List<ClientEntityData> _listClient;
  @override
  List<ClientEntityData> get listClient {
    if (_listClient is EqualUnmodifiableListView) return _listClient;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listClient);
  }

  @override
  final ClientEntityData? selected;

  @override
  String toString() {
    return 'ClientState.loaded(listClient: $listClient, selected: $selected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._listClient, _listClient) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listClient), selected);

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientLoadedImplCopyWith<_$ClientLoadedImpl> get copyWith =>
      __$$ClientLoadedImplCopyWithImpl<_$ClientLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ClientEntityData> listClient, ClientEntityData? selected)
        loaded,
    required TResult Function() error,
  }) {
    return loaded(listClient, selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ClientEntityData> listClient, ClientEntityData? selected)?
        loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(listClient, selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ClientEntityData> listClient, ClientEntityData? selected)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(listClient, selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientInitial value) initial,
    required TResult Function(ClientLoading value) loading,
    required TResult Function(ClientLoaded value) loaded,
    required TResult Function(ClientError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientInitial value)? initial,
    TResult? Function(ClientLoading value)? loading,
    TResult? Function(ClientLoaded value)? loaded,
    TResult? Function(ClientError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientInitial value)? initial,
    TResult Function(ClientLoading value)? loading,
    TResult Function(ClientLoaded value)? loaded,
    TResult Function(ClientError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ClientLoaded implements ClientState {
  const factory ClientLoaded(final List<ClientEntityData> listClient,
      final ClientEntityData? selected) = _$ClientLoadedImpl;

  List<ClientEntityData> get listClient;
  ClientEntityData? get selected;

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientLoadedImplCopyWith<_$ClientLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientErrorImplCopyWith<$Res> {
  factory _$$ClientErrorImplCopyWith(
          _$ClientErrorImpl value, $Res Function(_$ClientErrorImpl) then) =
      __$$ClientErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientErrorImplCopyWithImpl<$Res>
    extends _$ClientStateCopyWithImpl<$Res, _$ClientErrorImpl>
    implements _$$ClientErrorImplCopyWith<$Res> {
  __$$ClientErrorImplCopyWithImpl(
      _$ClientErrorImpl _value, $Res Function(_$ClientErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClientErrorImpl implements ClientError {
  const _$ClientErrorImpl();

  @override
  String toString() {
    return 'ClientState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClientErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ClientEntityData> listClient, ClientEntityData? selected)
        loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ClientEntityData> listClient, ClientEntityData? selected)?
        loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ClientEntityData> listClient, ClientEntityData? selected)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientInitial value) initial,
    required TResult Function(ClientLoading value) loading,
    required TResult Function(ClientLoaded value) loaded,
    required TResult Function(ClientError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientInitial value)? initial,
    TResult? Function(ClientLoading value)? loading,
    TResult? Function(ClientLoaded value)? loaded,
    TResult? Function(ClientError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientInitial value)? initial,
    TResult Function(ClientLoading value)? loading,
    TResult Function(ClientLoaded value)? loaded,
    TResult Function(ClientError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ClientError implements ClientState {
  const factory ClientError() = _$ClientErrorImpl;
}
