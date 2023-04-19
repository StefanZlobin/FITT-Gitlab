// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  AuthenticationStatusEnum get authenticationStatus =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatusEnum authenticationStatus)
        authenticationStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatusEnum authenticationStatus)?
        authenticationStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatusEnum authenticationStatus)?
        authenticationStatusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEventAuthenticationStatusChanged value)
        authenticationStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEventAuthenticationStatusChanged value)?
        authenticationStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEventAuthenticationStatusChanged value)?
        authenticationStatusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginEventCopyWith<LoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
  @useResult
  $Res call({AuthenticationStatusEnum authenticationStatus});
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticationStatus = null,
  }) {
    return _then(_value.copyWith(
      authenticationStatus: null == authenticationStatus
          ? _value.authenticationStatus
          : authenticationStatus // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatusEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginEventAuthenticationStatusChangedCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$_LoginEventAuthenticationStatusChangedCopyWith(
          _$_LoginEventAuthenticationStatusChanged value,
          $Res Function(_$_LoginEventAuthenticationStatusChanged) then) =
      __$$_LoginEventAuthenticationStatusChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthenticationStatusEnum authenticationStatus});
}

/// @nodoc
class __$$_LoginEventAuthenticationStatusChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res,
        _$_LoginEventAuthenticationStatusChanged>
    implements _$$_LoginEventAuthenticationStatusChangedCopyWith<$Res> {
  __$$_LoginEventAuthenticationStatusChangedCopyWithImpl(
      _$_LoginEventAuthenticationStatusChanged _value,
      $Res Function(_$_LoginEventAuthenticationStatusChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticationStatus = null,
  }) {
    return _then(_$_LoginEventAuthenticationStatusChanged(
      authenticationStatus: null == authenticationStatus
          ? _value.authenticationStatus
          : authenticationStatus // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatusEnum,
    ));
  }
}

/// @nodoc

class _$_LoginEventAuthenticationStatusChanged
    implements _LoginEventAuthenticationStatusChanged {
  const _$_LoginEventAuthenticationStatusChanged(
      {required this.authenticationStatus});

  @override
  final AuthenticationStatusEnum authenticationStatus;

  @override
  String toString() {
    return 'LoginEvent.authenticationStatusChanged(authenticationStatus: $authenticationStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginEventAuthenticationStatusChanged &&
            (identical(other.authenticationStatus, authenticationStatus) ||
                other.authenticationStatus == authenticationStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authenticationStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginEventAuthenticationStatusChangedCopyWith<
          _$_LoginEventAuthenticationStatusChanged>
      get copyWith => __$$_LoginEventAuthenticationStatusChangedCopyWithImpl<
          _$_LoginEventAuthenticationStatusChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatusEnum authenticationStatus)
        authenticationStatusChanged,
  }) {
    return authenticationStatusChanged(authenticationStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatusEnum authenticationStatus)?
        authenticationStatusChanged,
  }) {
    return authenticationStatusChanged?.call(authenticationStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatusEnum authenticationStatus)?
        authenticationStatusChanged,
    required TResult orElse(),
  }) {
    if (authenticationStatusChanged != null) {
      return authenticationStatusChanged(authenticationStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEventAuthenticationStatusChanged value)
        authenticationStatusChanged,
  }) {
    return authenticationStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEventAuthenticationStatusChanged value)?
        authenticationStatusChanged,
  }) {
    return authenticationStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEventAuthenticationStatusChanged value)?
        authenticationStatusChanged,
    required TResult orElse(),
  }) {
    if (authenticationStatusChanged != null) {
      return authenticationStatusChanged(this);
    }
    return orElse();
  }
}

abstract class _LoginEventAuthenticationStatusChanged implements LoginEvent {
  const factory _LoginEventAuthenticationStatusChanged(
          {required final AuthenticationStatusEnum authenticationStatus}) =
      _$_LoginEventAuthenticationStatusChanged;

  @override
  AuthenticationStatusEnum get authenticationStatus;
  @override
  @JsonKey(ignore: true)
  _$$_LoginEventAuthenticationStatusChangedCopyWith<
          _$_LoginEventAuthenticationStatusChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoaded value) loaded,
    required TResult Function(_LoginStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginStateInitial value)? initial,
    TResult? Function(_LoginStateLoaded value)? loaded,
    TResult? Function(_LoginStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoaded value)? loaded,
    TResult Function(_LoginStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoginStateInitialCopyWith<$Res> {
  factory _$$_LoginStateInitialCopyWith(_$_LoginStateInitial value,
          $Res Function(_$_LoginStateInitial) then) =
      __$$_LoginStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginStateInitialCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginStateInitial>
    implements _$$_LoginStateInitialCopyWith<$Res> {
  __$$_LoginStateInitialCopyWithImpl(
      _$_LoginStateInitial _value, $Res Function(_$_LoginStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginStateInitial implements _LoginStateInitial {
  const _$_LoginStateInitial();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)
        error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)?
        error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)?
        error,
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
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoaded value) loaded,
    required TResult Function(_LoginStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginStateInitial value)? initial,
    TResult? Function(_LoginStateLoaded value)? loaded,
    TResult? Function(_LoginStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoaded value)? loaded,
    TResult Function(_LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LoginStateInitial implements LoginState {
  const factory _LoginStateInitial() = _$_LoginStateInitial;
}

/// @nodoc
abstract class _$$_LoginStateLoadedCopyWith<$Res> {
  factory _$$_LoginStateLoadedCopyWith(
          _$_LoginStateLoaded value, $Res Function(_$_LoginStateLoaded) then) =
      __$$_LoginStateLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginStateLoadedCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginStateLoaded>
    implements _$$_LoginStateLoadedCopyWith<$Res> {
  __$$_LoginStateLoadedCopyWithImpl(
      _$_LoginStateLoaded _value, $Res Function(_$_LoginStateLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginStateLoaded implements _LoginStateLoaded {
  const _$_LoginStateLoaded();

  @override
  String toString() {
    return 'LoginState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginStateLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)
        error,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)?
        error,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoaded value) loaded,
    required TResult Function(_LoginStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginStateInitial value)? initial,
    TResult? Function(_LoginStateLoaded value)? loaded,
    TResult? Function(_LoginStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoaded value)? loaded,
    TResult Function(_LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoginStateLoaded implements LoginState {
  const factory _LoginStateLoaded() = _$_LoginStateLoaded;
}

/// @nodoc
abstract class _$$_LoginStateErrorCopyWith<$Res> {
  factory _$$_LoginStateErrorCopyWith(
          _$_LoginStateError value, $Res Function(_$_LoginStateError) then) =
      __$$_LoginStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String error, int countSecureCodeEntryAttempts, String phoneNumber});
}

/// @nodoc
class __$$_LoginStateErrorCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginStateError>
    implements _$$_LoginStateErrorCopyWith<$Res> {
  __$$_LoginStateErrorCopyWithImpl(
      _$_LoginStateError _value, $Res Function(_$_LoginStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? countSecureCodeEntryAttempts = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$_LoginStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      countSecureCodeEntryAttempts: null == countSecureCodeEntryAttempts
          ? _value.countSecureCodeEntryAttempts
          : countSecureCodeEntryAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginStateError implements _LoginStateError {
  const _$_LoginStateError(
      {required this.error,
      this.countSecureCodeEntryAttempts = 5,
      this.phoneNumber = ''});

  @override
  final String error;
  @override
  @JsonKey()
  final int countSecureCodeEntryAttempts;
  @override
  @JsonKey()
  final String phoneNumber;

  @override
  String toString() {
    return 'LoginState.error(error: $error, countSecureCodeEntryAttempts: $countSecureCodeEntryAttempts, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginStateError &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.countSecureCodeEntryAttempts,
                    countSecureCodeEntryAttempts) ||
                other.countSecureCodeEntryAttempts ==
                    countSecureCodeEntryAttempts) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, error, countSecureCodeEntryAttempts, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateErrorCopyWith<_$_LoginStateError> get copyWith =>
      __$$_LoginStateErrorCopyWithImpl<_$_LoginStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)
        error,
  }) {
    return error(this.error, countSecureCodeEntryAttempts, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)?
        error,
  }) {
    return error?.call(this.error, countSecureCodeEntryAttempts, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, countSecureCodeEntryAttempts, phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoaded value) loaded,
    required TResult Function(_LoginStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginStateInitial value)? initial,
    TResult? Function(_LoginStateLoaded value)? loaded,
    TResult? Function(_LoginStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoaded value)? loaded,
    TResult Function(_LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _LoginStateError implements LoginState {
  const factory _LoginStateError(
      {required final String error,
      final int countSecureCodeEntryAttempts,
      final String phoneNumber}) = _$_LoginStateError;

  String get error;
  int get countSecureCodeEntryAttempts;
  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$_LoginStateErrorCopyWith<_$_LoginStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
