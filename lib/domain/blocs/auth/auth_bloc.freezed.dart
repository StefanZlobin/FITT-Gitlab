// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatusEnum authenticationStatusEnum)
        authenticationStatusChanged,
    required TResult Function() authenticationLogoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatusEnum authenticationStatusEnum)?
        authenticationStatusChanged,
    TResult? Function()? authenticationLogoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatusEnum authenticationStatusEnum)?
        authenticationStatusChanged,
    TResult Function()? authenticationLogoutRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventAuthenticationStatusChanged value)
        authenticationStatusChanged,
    required TResult Function(_AuthEventAuthenticationLogoutRequested value)
        authenticationLogoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventAuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult? Function(_AuthEventAuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventAuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult Function(_AuthEventAuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthEventAuthenticationStatusChangedCopyWith<$Res> {
  factory _$$_AuthEventAuthenticationStatusChangedCopyWith(
          _$_AuthEventAuthenticationStatusChanged value,
          $Res Function(_$_AuthEventAuthenticationStatusChanged) then) =
      __$$_AuthEventAuthenticationStatusChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthenticationStatusEnum authenticationStatusEnum});
}

/// @nodoc
class __$$_AuthEventAuthenticationStatusChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res,
        _$_AuthEventAuthenticationStatusChanged>
    implements _$$_AuthEventAuthenticationStatusChangedCopyWith<$Res> {
  __$$_AuthEventAuthenticationStatusChangedCopyWithImpl(
      _$_AuthEventAuthenticationStatusChanged _value,
      $Res Function(_$_AuthEventAuthenticationStatusChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticationStatusEnum = null,
  }) {
    return _then(_$_AuthEventAuthenticationStatusChanged(
      authenticationStatusEnum: null == authenticationStatusEnum
          ? _value.authenticationStatusEnum
          : authenticationStatusEnum // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatusEnum,
    ));
  }
}

/// @nodoc

class _$_AuthEventAuthenticationStatusChanged
    implements _AuthEventAuthenticationStatusChanged {
  const _$_AuthEventAuthenticationStatusChanged(
      {required this.authenticationStatusEnum});

  @override
  final AuthenticationStatusEnum authenticationStatusEnum;

  @override
  String toString() {
    return 'AuthEvent.authenticationStatusChanged(authenticationStatusEnum: $authenticationStatusEnum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthEventAuthenticationStatusChanged &&
            (identical(
                    other.authenticationStatusEnum, authenticationStatusEnum) ||
                other.authenticationStatusEnum == authenticationStatusEnum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authenticationStatusEnum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthEventAuthenticationStatusChangedCopyWith<
          _$_AuthEventAuthenticationStatusChanged>
      get copyWith => __$$_AuthEventAuthenticationStatusChangedCopyWithImpl<
          _$_AuthEventAuthenticationStatusChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatusEnum authenticationStatusEnum)
        authenticationStatusChanged,
    required TResult Function() authenticationLogoutRequested,
  }) {
    return authenticationStatusChanged(authenticationStatusEnum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatusEnum authenticationStatusEnum)?
        authenticationStatusChanged,
    TResult? Function()? authenticationLogoutRequested,
  }) {
    return authenticationStatusChanged?.call(authenticationStatusEnum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatusEnum authenticationStatusEnum)?
        authenticationStatusChanged,
    TResult Function()? authenticationLogoutRequested,
    required TResult orElse(),
  }) {
    if (authenticationStatusChanged != null) {
      return authenticationStatusChanged(authenticationStatusEnum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventAuthenticationStatusChanged value)
        authenticationStatusChanged,
    required TResult Function(_AuthEventAuthenticationLogoutRequested value)
        authenticationLogoutRequested,
  }) {
    return authenticationStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventAuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult? Function(_AuthEventAuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
  }) {
    return authenticationStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventAuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult Function(_AuthEventAuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    required TResult orElse(),
  }) {
    if (authenticationStatusChanged != null) {
      return authenticationStatusChanged(this);
    }
    return orElse();
  }
}

abstract class _AuthEventAuthenticationStatusChanged implements AuthEvent {
  const factory _AuthEventAuthenticationStatusChanged(
          {required final AuthenticationStatusEnum authenticationStatusEnum}) =
      _$_AuthEventAuthenticationStatusChanged;

  AuthenticationStatusEnum get authenticationStatusEnum;
  @JsonKey(ignore: true)
  _$$_AuthEventAuthenticationStatusChangedCopyWith<
          _$_AuthEventAuthenticationStatusChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthEventAuthenticationLogoutRequestedCopyWith<$Res> {
  factory _$$_AuthEventAuthenticationLogoutRequestedCopyWith(
          _$_AuthEventAuthenticationLogoutRequested value,
          $Res Function(_$_AuthEventAuthenticationLogoutRequested) then) =
      __$$_AuthEventAuthenticationLogoutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthEventAuthenticationLogoutRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res,
        _$_AuthEventAuthenticationLogoutRequested>
    implements _$$_AuthEventAuthenticationLogoutRequestedCopyWith<$Res> {
  __$$_AuthEventAuthenticationLogoutRequestedCopyWithImpl(
      _$_AuthEventAuthenticationLogoutRequested _value,
      $Res Function(_$_AuthEventAuthenticationLogoutRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthEventAuthenticationLogoutRequested
    implements _AuthEventAuthenticationLogoutRequested {
  const _$_AuthEventAuthenticationLogoutRequested();

  @override
  String toString() {
    return 'AuthEvent.authenticationLogoutRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthEventAuthenticationLogoutRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatusEnum authenticationStatusEnum)
        authenticationStatusChanged,
    required TResult Function() authenticationLogoutRequested,
  }) {
    return authenticationLogoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatusEnum authenticationStatusEnum)?
        authenticationStatusChanged,
    TResult? Function()? authenticationLogoutRequested,
  }) {
    return authenticationLogoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatusEnum authenticationStatusEnum)?
        authenticationStatusChanged,
    TResult Function()? authenticationLogoutRequested,
    required TResult orElse(),
  }) {
    if (authenticationLogoutRequested != null) {
      return authenticationLogoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventAuthenticationStatusChanged value)
        authenticationStatusChanged,
    required TResult Function(_AuthEventAuthenticationLogoutRequested value)
        authenticationLogoutRequested,
  }) {
    return authenticationLogoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventAuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult? Function(_AuthEventAuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
  }) {
    return authenticationLogoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventAuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult Function(_AuthEventAuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    required TResult orElse(),
  }) {
    if (authenticationLogoutRequested != null) {
      return authenticationLogoutRequested(this);
    }
    return orElse();
  }
}

abstract class _AuthEventAuthenticationLogoutRequested implements AuthEvent {
  const factory _AuthEventAuthenticationLogoutRequested() =
      _$_AuthEventAuthenticationLogoutRequested;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() authenticated,
    required TResult Function(Duration repearCallAfter) loading,
    required TResult Function() unauthenticated,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? authenticated,
    TResult? Function(Duration repearCallAfter)? loading,
    TResult? Function()? unauthenticated,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? authenticated,
    TResult Function(Duration repearCallAfter)? loading,
    TResult Function()? unauthenticated,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateUnknown value) unknown,
    required TResult Function(_AuthStateAuthenticated value) authenticated,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateUnauthenticated value) unauthenticated,
    required TResult Function(_AuthStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateUnknown value)? unknown,
    TResult? Function(_AuthStateAuthenticated value)? authenticated,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateUnauthenticated value)? unauthenticated,
    TResult? Function(_AuthStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateUnknown value)? unknown,
    TResult Function(_AuthStateAuthenticated value)? authenticated,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateUnauthenticated value)? unauthenticated,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthStateUnknownCopyWith<$Res> {
  factory _$$_AuthStateUnknownCopyWith(
          _$_AuthStateUnknown value, $Res Function(_$_AuthStateUnknown) then) =
      __$$_AuthStateUnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStateUnknownCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthStateUnknown>
    implements _$$_AuthStateUnknownCopyWith<$Res> {
  __$$_AuthStateUnknownCopyWithImpl(
      _$_AuthStateUnknown _value, $Res Function(_$_AuthStateUnknown) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthStateUnknown implements _AuthStateUnknown {
  const _$_AuthStateUnknown();

  @override
  String toString() {
    return 'AuthState.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthStateUnknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() authenticated,
    required TResult Function(Duration repearCallAfter) loading,
    required TResult Function() unauthenticated,
    required TResult Function(String error) error,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? authenticated,
    TResult? Function(Duration repearCallAfter)? loading,
    TResult? Function()? unauthenticated,
    TResult? Function(String error)? error,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? authenticated,
    TResult Function(Duration repearCallAfter)? loading,
    TResult Function()? unauthenticated,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateUnknown value) unknown,
    required TResult Function(_AuthStateAuthenticated value) authenticated,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateUnauthenticated value) unauthenticated,
    required TResult Function(_AuthStateError value) error,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateUnknown value)? unknown,
    TResult? Function(_AuthStateAuthenticated value)? authenticated,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateUnauthenticated value)? unauthenticated,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateUnknown value)? unknown,
    TResult Function(_AuthStateAuthenticated value)? authenticated,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateUnauthenticated value)? unauthenticated,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _AuthStateUnknown implements AuthState {
  const factory _AuthStateUnknown() = _$_AuthStateUnknown;
}

/// @nodoc
abstract class _$$_AuthStateAuthenticatedCopyWith<$Res> {
  factory _$$_AuthStateAuthenticatedCopyWith(_$_AuthStateAuthenticated value,
          $Res Function(_$_AuthStateAuthenticated) then) =
      __$$_AuthStateAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStateAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthStateAuthenticated>
    implements _$$_AuthStateAuthenticatedCopyWith<$Res> {
  __$$_AuthStateAuthenticatedCopyWithImpl(_$_AuthStateAuthenticated _value,
      $Res Function(_$_AuthStateAuthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthStateAuthenticated implements _AuthStateAuthenticated {
  const _$_AuthStateAuthenticated();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStateAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() authenticated,
    required TResult Function(Duration repearCallAfter) loading,
    required TResult Function() unauthenticated,
    required TResult Function(String error) error,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? authenticated,
    TResult? Function(Duration repearCallAfter)? loading,
    TResult? Function()? unauthenticated,
    TResult? Function(String error)? error,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? authenticated,
    TResult Function(Duration repearCallAfter)? loading,
    TResult Function()? unauthenticated,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateUnknown value) unknown,
    required TResult Function(_AuthStateAuthenticated value) authenticated,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateUnauthenticated value) unauthenticated,
    required TResult Function(_AuthStateError value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateUnknown value)? unknown,
    TResult? Function(_AuthStateAuthenticated value)? authenticated,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateUnauthenticated value)? unauthenticated,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateUnknown value)? unknown,
    TResult Function(_AuthStateAuthenticated value)? authenticated,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateUnauthenticated value)? unauthenticated,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthStateAuthenticated implements AuthState {
  const factory _AuthStateAuthenticated() = _$_AuthStateAuthenticated;
}

/// @nodoc
abstract class _$$_AuthStateLoadingCopyWith<$Res> {
  factory _$$_AuthStateLoadingCopyWith(
          _$_AuthStateLoading value, $Res Function(_$_AuthStateLoading) then) =
      __$$_AuthStateLoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration repearCallAfter});
}

/// @nodoc
class __$$_AuthStateLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthStateLoading>
    implements _$$_AuthStateLoadingCopyWith<$Res> {
  __$$_AuthStateLoadingCopyWithImpl(
      _$_AuthStateLoading _value, $Res Function(_$_AuthStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repearCallAfter = null,
  }) {
    return _then(_$_AuthStateLoading(
      repearCallAfter: null == repearCallAfter
          ? _value.repearCallAfter
          : repearCallAfter // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_AuthStateLoading implements _AuthStateLoading {
  const _$_AuthStateLoading({required this.repearCallAfter});

  @override
  final Duration repearCallAfter;

  @override
  String toString() {
    return 'AuthState.loading(repearCallAfter: $repearCallAfter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStateLoading &&
            (identical(other.repearCallAfter, repearCallAfter) ||
                other.repearCallAfter == repearCallAfter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, repearCallAfter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateLoadingCopyWith<_$_AuthStateLoading> get copyWith =>
      __$$_AuthStateLoadingCopyWithImpl<_$_AuthStateLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() authenticated,
    required TResult Function(Duration repearCallAfter) loading,
    required TResult Function() unauthenticated,
    required TResult Function(String error) error,
  }) {
    return loading(repearCallAfter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? authenticated,
    TResult? Function(Duration repearCallAfter)? loading,
    TResult? Function()? unauthenticated,
    TResult? Function(String error)? error,
  }) {
    return loading?.call(repearCallAfter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? authenticated,
    TResult Function(Duration repearCallAfter)? loading,
    TResult Function()? unauthenticated,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(repearCallAfter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateUnknown value) unknown,
    required TResult Function(_AuthStateAuthenticated value) authenticated,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateUnauthenticated value) unauthenticated,
    required TResult Function(_AuthStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateUnknown value)? unknown,
    TResult? Function(_AuthStateAuthenticated value)? authenticated,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateUnauthenticated value)? unauthenticated,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateUnknown value)? unknown,
    TResult Function(_AuthStateAuthenticated value)? authenticated,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateUnauthenticated value)? unauthenticated,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AuthStateLoading implements AuthState {
  const factory _AuthStateLoading({required final Duration repearCallAfter}) =
      _$_AuthStateLoading;

  Duration get repearCallAfter;
  @JsonKey(ignore: true)
  _$$_AuthStateLoadingCopyWith<_$_AuthStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthStateUnauthenticatedCopyWith<$Res> {
  factory _$$_AuthStateUnauthenticatedCopyWith(
          _$_AuthStateUnauthenticated value,
          $Res Function(_$_AuthStateUnauthenticated) then) =
      __$$_AuthStateUnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStateUnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthStateUnauthenticated>
    implements _$$_AuthStateUnauthenticatedCopyWith<$Res> {
  __$$_AuthStateUnauthenticatedCopyWithImpl(_$_AuthStateUnauthenticated _value,
      $Res Function(_$_AuthStateUnauthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthStateUnauthenticated implements _AuthStateUnauthenticated {
  const _$_AuthStateUnauthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStateUnauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() authenticated,
    required TResult Function(Duration repearCallAfter) loading,
    required TResult Function() unauthenticated,
    required TResult Function(String error) error,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? authenticated,
    TResult? Function(Duration repearCallAfter)? loading,
    TResult? Function()? unauthenticated,
    TResult? Function(String error)? error,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? authenticated,
    TResult Function(Duration repearCallAfter)? loading,
    TResult Function()? unauthenticated,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateUnknown value) unknown,
    required TResult Function(_AuthStateAuthenticated value) authenticated,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateUnauthenticated value) unauthenticated,
    required TResult Function(_AuthStateError value) error,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateUnknown value)? unknown,
    TResult? Function(_AuthStateAuthenticated value)? authenticated,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateUnauthenticated value)? unauthenticated,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateUnknown value)? unknown,
    TResult Function(_AuthStateAuthenticated value)? authenticated,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateUnauthenticated value)? unauthenticated,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthStateUnauthenticated implements AuthState {
  const factory _AuthStateUnauthenticated() = _$_AuthStateUnauthenticated;
}

/// @nodoc
abstract class _$$_AuthStateErrorCopyWith<$Res> {
  factory _$$_AuthStateErrorCopyWith(
          _$_AuthStateError value, $Res Function(_$_AuthStateError) then) =
      __$$_AuthStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_AuthStateErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthStateError>
    implements _$$_AuthStateErrorCopyWith<$Res> {
  __$$_AuthStateErrorCopyWithImpl(
      _$_AuthStateError _value, $Res Function(_$_AuthStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_AuthStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthStateError implements _AuthStateError {
  const _$_AuthStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateErrorCopyWith<_$_AuthStateError> get copyWith =>
      __$$_AuthStateErrorCopyWithImpl<_$_AuthStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() authenticated,
    required TResult Function(Duration repearCallAfter) loading,
    required TResult Function() unauthenticated,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? authenticated,
    TResult? Function(Duration repearCallAfter)? loading,
    TResult? Function()? unauthenticated,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? authenticated,
    TResult Function(Duration repearCallAfter)? loading,
    TResult Function()? unauthenticated,
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
    required TResult Function(_AuthStateUnknown value) unknown,
    required TResult Function(_AuthStateAuthenticated value) authenticated,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateUnauthenticated value) unauthenticated,
    required TResult Function(_AuthStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateUnknown value)? unknown,
    TResult? Function(_AuthStateAuthenticated value)? authenticated,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateUnauthenticated value)? unauthenticated,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateUnknown value)? unknown,
    TResult Function(_AuthStateAuthenticated value)? authenticated,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateUnauthenticated value)? unauthenticated,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AuthStateError implements AuthState {
  const factory _AuthStateError({required final String error}) =
      _$_AuthStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_AuthStateErrorCopyWith<_$_AuthStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
