// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authorization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthorizationEvent {
  AuthorizationStatusEnum get authorizationStatus =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthorizationStatusEnum authorizationStatus)
        checkUserRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthorizationStatusEnum authorizationStatus)?
        checkUserRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthorizationStatusEnum authorizationStatus)?
        checkUserRole,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizationEventCheckUserRole value)
        checkUserRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthorizationEventCheckUserRole value)? checkUserRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizationEventCheckUserRole value)? checkUserRole,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthorizationEventCopyWith<AuthorizationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationEventCopyWith<$Res> {
  factory $AuthorizationEventCopyWith(
          AuthorizationEvent value, $Res Function(AuthorizationEvent) then) =
      _$AuthorizationEventCopyWithImpl<$Res, AuthorizationEvent>;
  @useResult
  $Res call({AuthorizationStatusEnum authorizationStatus});
}

/// @nodoc
class _$AuthorizationEventCopyWithImpl<$Res, $Val extends AuthorizationEvent>
    implements $AuthorizationEventCopyWith<$Res> {
  _$AuthorizationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorizationStatus = null,
  }) {
    return _then(_value.copyWith(
      authorizationStatus: null == authorizationStatus
          ? _value.authorizationStatus
          : authorizationStatus // ignore: cast_nullable_to_non_nullable
              as AuthorizationStatusEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthorizationEventCheckUserRoleCopyWith<$Res>
    implements $AuthorizationEventCopyWith<$Res> {
  factory _$$_AuthorizationEventCheckUserRoleCopyWith(
          _$_AuthorizationEventCheckUserRole value,
          $Res Function(_$_AuthorizationEventCheckUserRole) then) =
      __$$_AuthorizationEventCheckUserRoleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthorizationStatusEnum authorizationStatus});
}

/// @nodoc
class __$$_AuthorizationEventCheckUserRoleCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res,
        _$_AuthorizationEventCheckUserRole>
    implements _$$_AuthorizationEventCheckUserRoleCopyWith<$Res> {
  __$$_AuthorizationEventCheckUserRoleCopyWithImpl(
      _$_AuthorizationEventCheckUserRole _value,
      $Res Function(_$_AuthorizationEventCheckUserRole) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorizationStatus = null,
  }) {
    return _then(_$_AuthorizationEventCheckUserRole(
      authorizationStatus: null == authorizationStatus
          ? _value.authorizationStatus
          : authorizationStatus // ignore: cast_nullable_to_non_nullable
              as AuthorizationStatusEnum,
    ));
  }
}

/// @nodoc

class _$_AuthorizationEventCheckUserRole
    implements _AuthorizationEventCheckUserRole {
  const _$_AuthorizationEventCheckUserRole({required this.authorizationStatus});

  @override
  final AuthorizationStatusEnum authorizationStatus;

  @override
  String toString() {
    return 'AuthorizationEvent.checkUserRole(authorizationStatus: $authorizationStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorizationEventCheckUserRole &&
            (identical(other.authorizationStatus, authorizationStatus) ||
                other.authorizationStatus == authorizationStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authorizationStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorizationEventCheckUserRoleCopyWith<
          _$_AuthorizationEventCheckUserRole>
      get copyWith => __$$_AuthorizationEventCheckUserRoleCopyWithImpl<
          _$_AuthorizationEventCheckUserRole>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthorizationStatusEnum authorizationStatus)
        checkUserRole,
  }) {
    return checkUserRole(authorizationStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthorizationStatusEnum authorizationStatus)?
        checkUserRole,
  }) {
    return checkUserRole?.call(authorizationStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthorizationStatusEnum authorizationStatus)?
        checkUserRole,
    required TResult orElse(),
  }) {
    if (checkUserRole != null) {
      return checkUserRole(authorizationStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizationEventCheckUserRole value)
        checkUserRole,
  }) {
    return checkUserRole(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthorizationEventCheckUserRole value)? checkUserRole,
  }) {
    return checkUserRole?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizationEventCheckUserRole value)? checkUserRole,
    required TResult orElse(),
  }) {
    if (checkUserRole != null) {
      return checkUserRole(this);
    }
    return orElse();
  }
}

abstract class _AuthorizationEventCheckUserRole implements AuthorizationEvent {
  const factory _AuthorizationEventCheckUserRole(
          {required final AuthorizationStatusEnum authorizationStatus}) =
      _$_AuthorizationEventCheckUserRole;

  @override
  AuthorizationStatusEnum get authorizationStatus;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorizationEventCheckUserRoleCopyWith<
          _$_AuthorizationEventCheckUserRole>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthorizationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthorizationStatusEnum authorizationStatus)
        loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthorizationStatusEnum authorizationStatus)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthorizationStatusEnum authorizationStatus)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizationStateInitial value) initial,
    required TResult Function(_AuthorizationStateLoaded value) loaded,
    required TResult Function(_AuthorizationStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthorizationStateInitial value)? initial,
    TResult? Function(_AuthorizationStateLoaded value)? loaded,
    TResult? Function(_AuthorizationStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizationStateInitial value)? initial,
    TResult Function(_AuthorizationStateLoaded value)? loaded,
    TResult Function(_AuthorizationStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationStateCopyWith<$Res> {
  factory $AuthorizationStateCopyWith(
          AuthorizationState value, $Res Function(AuthorizationState) then) =
      _$AuthorizationStateCopyWithImpl<$Res, AuthorizationState>;
}

/// @nodoc
class _$AuthorizationStateCopyWithImpl<$Res, $Val extends AuthorizationState>
    implements $AuthorizationStateCopyWith<$Res> {
  _$AuthorizationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthorizationStateInitialCopyWith<$Res> {
  factory _$$_AuthorizationStateInitialCopyWith(
          _$_AuthorizationStateInitial value,
          $Res Function(_$_AuthorizationStateInitial) then) =
      __$$_AuthorizationStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthorizationStateInitialCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res, _$_AuthorizationStateInitial>
    implements _$$_AuthorizationStateInitialCopyWith<$Res> {
  __$$_AuthorizationStateInitialCopyWithImpl(
      _$_AuthorizationStateInitial _value,
      $Res Function(_$_AuthorizationStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthorizationStateInitial implements _AuthorizationStateInitial {
  const _$_AuthorizationStateInitial();

  @override
  String toString() {
    return 'AuthorizationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorizationStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthorizationStatusEnum authorizationStatus)
        loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthorizationStatusEnum authorizationStatus)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthorizationStatusEnum authorizationStatus)? loaded,
    TResult Function(String error)? error,
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
    required TResult Function(_AuthorizationStateInitial value) initial,
    required TResult Function(_AuthorizationStateLoaded value) loaded,
    required TResult Function(_AuthorizationStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthorizationStateInitial value)? initial,
    TResult? Function(_AuthorizationStateLoaded value)? loaded,
    TResult? Function(_AuthorizationStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizationStateInitial value)? initial,
    TResult Function(_AuthorizationStateLoaded value)? loaded,
    TResult Function(_AuthorizationStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AuthorizationStateInitial implements AuthorizationState {
  const factory _AuthorizationStateInitial() = _$_AuthorizationStateInitial;
}

/// @nodoc
abstract class _$$_AuthorizationStateLoadedCopyWith<$Res> {
  factory _$$_AuthorizationStateLoadedCopyWith(
          _$_AuthorizationStateLoaded value,
          $Res Function(_$_AuthorizationStateLoaded) then) =
      __$$_AuthorizationStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthorizationStatusEnum authorizationStatus});
}

/// @nodoc
class __$$_AuthorizationStateLoadedCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res, _$_AuthorizationStateLoaded>
    implements _$$_AuthorizationStateLoadedCopyWith<$Res> {
  __$$_AuthorizationStateLoadedCopyWithImpl(_$_AuthorizationStateLoaded _value,
      $Res Function(_$_AuthorizationStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorizationStatus = null,
  }) {
    return _then(_$_AuthorizationStateLoaded(
      authorizationStatus: null == authorizationStatus
          ? _value.authorizationStatus
          : authorizationStatus // ignore: cast_nullable_to_non_nullable
              as AuthorizationStatusEnum,
    ));
  }
}

/// @nodoc

class _$_AuthorizationStateLoaded implements _AuthorizationStateLoaded {
  const _$_AuthorizationStateLoaded({required this.authorizationStatus});

  @override
  final AuthorizationStatusEnum authorizationStatus;

  @override
  String toString() {
    return 'AuthorizationState.loaded(authorizationStatus: $authorizationStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorizationStateLoaded &&
            (identical(other.authorizationStatus, authorizationStatus) ||
                other.authorizationStatus == authorizationStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authorizationStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorizationStateLoadedCopyWith<_$_AuthorizationStateLoaded>
      get copyWith => __$$_AuthorizationStateLoadedCopyWithImpl<
          _$_AuthorizationStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthorizationStatusEnum authorizationStatus)
        loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(authorizationStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthorizationStatusEnum authorizationStatus)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(authorizationStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthorizationStatusEnum authorizationStatus)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(authorizationStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizationStateInitial value) initial,
    required TResult Function(_AuthorizationStateLoaded value) loaded,
    required TResult Function(_AuthorizationStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthorizationStateInitial value)? initial,
    TResult? Function(_AuthorizationStateLoaded value)? loaded,
    TResult? Function(_AuthorizationStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizationStateInitial value)? initial,
    TResult Function(_AuthorizationStateLoaded value)? loaded,
    TResult Function(_AuthorizationStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _AuthorizationStateLoaded implements AuthorizationState {
  const factory _AuthorizationStateLoaded(
          {required final AuthorizationStatusEnum authorizationStatus}) =
      _$_AuthorizationStateLoaded;

  AuthorizationStatusEnum get authorizationStatus;
  @JsonKey(ignore: true)
  _$$_AuthorizationStateLoadedCopyWith<_$_AuthorizationStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthorizationStateErrorCopyWith<$Res> {
  factory _$$_AuthorizationStateErrorCopyWith(_$_AuthorizationStateError value,
          $Res Function(_$_AuthorizationStateError) then) =
      __$$_AuthorizationStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_AuthorizationStateErrorCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res, _$_AuthorizationStateError>
    implements _$$_AuthorizationStateErrorCopyWith<$Res> {
  __$$_AuthorizationStateErrorCopyWithImpl(_$_AuthorizationStateError _value,
      $Res Function(_$_AuthorizationStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_AuthorizationStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthorizationStateError implements _AuthorizationStateError {
  const _$_AuthorizationStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AuthorizationState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorizationStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorizationStateErrorCopyWith<_$_AuthorizationStateError>
      get copyWith =>
          __$$_AuthorizationStateErrorCopyWithImpl<_$_AuthorizationStateError>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthorizationStatusEnum authorizationStatus)
        loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthorizationStatusEnum authorizationStatus)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthorizationStatusEnum authorizationStatus)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizationStateInitial value) initial,
    required TResult Function(_AuthorizationStateLoaded value) loaded,
    required TResult Function(_AuthorizationStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthorizationStateInitial value)? initial,
    TResult? Function(_AuthorizationStateLoaded value)? loaded,
    TResult? Function(_AuthorizationStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizationStateInitial value)? initial,
    TResult Function(_AuthorizationStateLoaded value)? loaded,
    TResult Function(_AuthorizationStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AuthorizationStateError implements AuthorizationState {
  const factory _AuthorizationStateError({required final String error}) =
      _$_AuthorizationStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_AuthorizationStateErrorCopyWith<_$_AuthorizationStateError>
      get copyWith => throw _privateConstructorUsedError;
}
