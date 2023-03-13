// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) signIn,
    required TResult Function(
            String phoneNumber, String secureCode, String fcmToken)
        checkSecureCode,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? signIn,
    TResult? Function(String phoneNumber, String secureCode, String fcmToken)?
        checkSecureCode,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? signIn,
    TResult Function(String phoneNumber, String secureCode, String fcmToken)?
        checkSecureCode,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationEventSignIn value) signIn,
    required TResult Function(_AuthenticationEventCheckSecureCode value)
        checkSecureCode,
    required TResult Function(_AuthenticationEventSignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationEventSignIn value)? signIn,
    TResult? Function(_AuthenticationEventCheckSecureCode value)?
        checkSecureCode,
    TResult? Function(_AuthenticationEventSignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationEventSignIn value)? signIn,
    TResult Function(_AuthenticationEventCheckSecureCode value)?
        checkSecureCode,
    TResult Function(_AuthenticationEventSignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthenticationEventSignInCopyWith<$Res> {
  factory _$$_AuthenticationEventSignInCopyWith(
          _$_AuthenticationEventSignIn value,
          $Res Function(_$_AuthenticationEventSignIn) then) =
      __$$_AuthenticationEventSignInCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$_AuthenticationEventSignInCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$_AuthenticationEventSignIn>
    implements _$$_AuthenticationEventSignInCopyWith<$Res> {
  __$$_AuthenticationEventSignInCopyWithImpl(
      _$_AuthenticationEventSignIn _value,
      $Res Function(_$_AuthenticationEventSignIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$_AuthenticationEventSignIn(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthenticationEventSignIn implements _AuthenticationEventSignIn {
  const _$_AuthenticationEventSignIn({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AuthenticationEvent.signIn(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationEventSignIn &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticationEventSignInCopyWith<_$_AuthenticationEventSignIn>
      get copyWith => __$$_AuthenticationEventSignInCopyWithImpl<
          _$_AuthenticationEventSignIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) signIn,
    required TResult Function(
            String phoneNumber, String secureCode, String fcmToken)
        checkSecureCode,
    required TResult Function() signOut,
  }) {
    return signIn(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? signIn,
    TResult? Function(String phoneNumber, String secureCode, String fcmToken)?
        checkSecureCode,
    TResult? Function()? signOut,
  }) {
    return signIn?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? signIn,
    TResult Function(String phoneNumber, String secureCode, String fcmToken)?
        checkSecureCode,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationEventSignIn value) signIn,
    required TResult Function(_AuthenticationEventCheckSecureCode value)
        checkSecureCode,
    required TResult Function(_AuthenticationEventSignOut value) signOut,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationEventSignIn value)? signIn,
    TResult? Function(_AuthenticationEventCheckSecureCode value)?
        checkSecureCode,
    TResult? Function(_AuthenticationEventSignOut value)? signOut,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationEventSignIn value)? signIn,
    TResult Function(_AuthenticationEventCheckSecureCode value)?
        checkSecureCode,
    TResult Function(_AuthenticationEventSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationEventSignIn implements AuthenticationEvent {
  const factory _AuthenticationEventSignIn(
      {required final String phoneNumber}) = _$_AuthenticationEventSignIn;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$_AuthenticationEventSignInCopyWith<_$_AuthenticationEventSignIn>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthenticationEventCheckSecureCodeCopyWith<$Res> {
  factory _$$_AuthenticationEventCheckSecureCodeCopyWith(
          _$_AuthenticationEventCheckSecureCode value,
          $Res Function(_$_AuthenticationEventCheckSecureCode) then) =
      __$$_AuthenticationEventCheckSecureCodeCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber, String secureCode, String fcmToken});
}

/// @nodoc
class __$$_AuthenticationEventCheckSecureCodeCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$_AuthenticationEventCheckSecureCode>
    implements _$$_AuthenticationEventCheckSecureCodeCopyWith<$Res> {
  __$$_AuthenticationEventCheckSecureCodeCopyWithImpl(
      _$_AuthenticationEventCheckSecureCode _value,
      $Res Function(_$_AuthenticationEventCheckSecureCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? secureCode = null,
    Object? fcmToken = null,
  }) {
    return _then(_$_AuthenticationEventCheckSecureCode(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      secureCode: null == secureCode
          ? _value.secureCode
          : secureCode // ignore: cast_nullable_to_non_nullable
              as String,
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthenticationEventCheckSecureCode
    implements _AuthenticationEventCheckSecureCode {
  const _$_AuthenticationEventCheckSecureCode(
      {required this.phoneNumber,
      required this.secureCode,
      required this.fcmToken});

  @override
  final String phoneNumber;
  @override
  final String secureCode;
  @override
  final String fcmToken;

  @override
  String toString() {
    return 'AuthenticationEvent.checkSecureCode(phoneNumber: $phoneNumber, secureCode: $secureCode, fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationEventCheckSecureCode &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.secureCode, secureCode) ||
                other.secureCode == secureCode) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, phoneNumber, secureCode, fcmToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticationEventCheckSecureCodeCopyWith<
          _$_AuthenticationEventCheckSecureCode>
      get copyWith => __$$_AuthenticationEventCheckSecureCodeCopyWithImpl<
          _$_AuthenticationEventCheckSecureCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) signIn,
    required TResult Function(
            String phoneNumber, String secureCode, String fcmToken)
        checkSecureCode,
    required TResult Function() signOut,
  }) {
    return checkSecureCode(phoneNumber, secureCode, fcmToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? signIn,
    TResult? Function(String phoneNumber, String secureCode, String fcmToken)?
        checkSecureCode,
    TResult? Function()? signOut,
  }) {
    return checkSecureCode?.call(phoneNumber, secureCode, fcmToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? signIn,
    TResult Function(String phoneNumber, String secureCode, String fcmToken)?
        checkSecureCode,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (checkSecureCode != null) {
      return checkSecureCode(phoneNumber, secureCode, fcmToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationEventSignIn value) signIn,
    required TResult Function(_AuthenticationEventCheckSecureCode value)
        checkSecureCode,
    required TResult Function(_AuthenticationEventSignOut value) signOut,
  }) {
    return checkSecureCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationEventSignIn value)? signIn,
    TResult? Function(_AuthenticationEventCheckSecureCode value)?
        checkSecureCode,
    TResult? Function(_AuthenticationEventSignOut value)? signOut,
  }) {
    return checkSecureCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationEventSignIn value)? signIn,
    TResult Function(_AuthenticationEventCheckSecureCode value)?
        checkSecureCode,
    TResult Function(_AuthenticationEventSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (checkSecureCode != null) {
      return checkSecureCode(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationEventCheckSecureCode
    implements AuthenticationEvent {
  const factory _AuthenticationEventCheckSecureCode(
      {required final String phoneNumber,
      required final String secureCode,
      required final String fcmToken}) = _$_AuthenticationEventCheckSecureCode;

  String get phoneNumber;
  String get secureCode;
  String get fcmToken;
  @JsonKey(ignore: true)
  _$$_AuthenticationEventCheckSecureCodeCopyWith<
          _$_AuthenticationEventCheckSecureCode>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthenticationEventSignOutCopyWith<$Res> {
  factory _$$_AuthenticationEventSignOutCopyWith(
          _$_AuthenticationEventSignOut value,
          $Res Function(_$_AuthenticationEventSignOut) then) =
      __$$_AuthenticationEventSignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticationEventSignOutCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$_AuthenticationEventSignOut>
    implements _$$_AuthenticationEventSignOutCopyWith<$Res> {
  __$$_AuthenticationEventSignOutCopyWithImpl(
      _$_AuthenticationEventSignOut _value,
      $Res Function(_$_AuthenticationEventSignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthenticationEventSignOut implements _AuthenticationEventSignOut {
  const _$_AuthenticationEventSignOut();

  @override
  String toString() {
    return 'AuthenticationEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationEventSignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) signIn,
    required TResult Function(
            String phoneNumber, String secureCode, String fcmToken)
        checkSecureCode,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? signIn,
    TResult? Function(String phoneNumber, String secureCode, String fcmToken)?
        checkSecureCode,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? signIn,
    TResult Function(String phoneNumber, String secureCode, String fcmToken)?
        checkSecureCode,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationEventSignIn value) signIn,
    required TResult Function(_AuthenticationEventCheckSecureCode value)
        checkSecureCode,
    required TResult Function(_AuthenticationEventSignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationEventSignIn value)? signIn,
    TResult? Function(_AuthenticationEventCheckSecureCode value)?
        checkSecureCode,
    TResult? Function(_AuthenticationEventSignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationEventSignIn value)? signIn,
    TResult Function(_AuthenticationEventCheckSecureCode value)?
        checkSecureCode,
    TResult Function(_AuthenticationEventSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationEventSignOut implements AuthenticationEvent {
  const factory _AuthenticationEventSignOut() = _$_AuthenticationEventSignOut;
}

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int attemptsEnterSecureCode, int circularAttempt)
        loaded,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int attemptsEnterSecureCode, int circularAttempt)? loaded,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int attemptsEnterSecureCode, int circularAttempt)? loaded,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationStateLoading value) loading,
    required TResult Function(_AuthenticationStateLoaded value) loaded,
    required TResult Function(_AuthenticationStateSuccess value) success,
    required TResult Function(_AuthenticationStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStateLoading value)? loading,
    TResult? Function(_AuthenticationStateLoaded value)? loaded,
    TResult? Function(_AuthenticationStateSuccess value)? success,
    TResult? Function(_AuthenticationStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStateLoading value)? loading,
    TResult Function(_AuthenticationStateLoaded value)? loaded,
    TResult Function(_AuthenticationStateSuccess value)? success,
    TResult Function(_AuthenticationStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthenticationStateLoadingCopyWith<$Res> {
  factory _$$_AuthenticationStateLoadingCopyWith(
          _$_AuthenticationStateLoading value,
          $Res Function(_$_AuthenticationStateLoading) then) =
      __$$_AuthenticationStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticationStateLoadingCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$_AuthenticationStateLoading>
    implements _$$_AuthenticationStateLoadingCopyWith<$Res> {
  __$$_AuthenticationStateLoadingCopyWithImpl(
      _$_AuthenticationStateLoading _value,
      $Res Function(_$_AuthenticationStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthenticationStateLoading implements _AuthenticationStateLoading {
  const _$_AuthenticationStateLoading();

  @override
  String toString() {
    return 'AuthenticationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int attemptsEnterSecureCode, int circularAttempt)
        loaded,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int attemptsEnterSecureCode, int circularAttempt)? loaded,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int attemptsEnterSecureCode, int circularAttempt)? loaded,
    TResult Function()? success,
    TResult Function(String error)? error,
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
    required TResult Function(_AuthenticationStateLoading value) loading,
    required TResult Function(_AuthenticationStateLoaded value) loaded,
    required TResult Function(_AuthenticationStateSuccess value) success,
    required TResult Function(_AuthenticationStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStateLoading value)? loading,
    TResult? Function(_AuthenticationStateLoaded value)? loaded,
    TResult? Function(_AuthenticationStateSuccess value)? success,
    TResult? Function(_AuthenticationStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStateLoading value)? loading,
    TResult Function(_AuthenticationStateLoaded value)? loaded,
    TResult Function(_AuthenticationStateSuccess value)? success,
    TResult Function(_AuthenticationStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationStateLoading implements AuthenticationState {
  const factory _AuthenticationStateLoading() = _$_AuthenticationStateLoading;
}

/// @nodoc
abstract class _$$_AuthenticationStateLoadedCopyWith<$Res> {
  factory _$$_AuthenticationStateLoadedCopyWith(
          _$_AuthenticationStateLoaded value,
          $Res Function(_$_AuthenticationStateLoaded) then) =
      __$$_AuthenticationStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({int attemptsEnterSecureCode, int circularAttempt});
}

/// @nodoc
class __$$_AuthenticationStateLoadedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$_AuthenticationStateLoaded>
    implements _$$_AuthenticationStateLoadedCopyWith<$Res> {
  __$$_AuthenticationStateLoadedCopyWithImpl(
      _$_AuthenticationStateLoaded _value,
      $Res Function(_$_AuthenticationStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attemptsEnterSecureCode = null,
    Object? circularAttempt = null,
  }) {
    return _then(_$_AuthenticationStateLoaded(
      attemptsEnterSecureCode: null == attemptsEnterSecureCode
          ? _value.attemptsEnterSecureCode
          : attemptsEnterSecureCode // ignore: cast_nullable_to_non_nullable
              as int,
      circularAttempt: null == circularAttempt
          ? _value.circularAttempt
          : circularAttempt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AuthenticationStateLoaded implements _AuthenticationStateLoaded {
  const _$_AuthenticationStateLoaded(
      {this.attemptsEnterSecureCode = 5, this.circularAttempt = 0});

  @override
  @JsonKey()
  final int attemptsEnterSecureCode;
  @override
  @JsonKey()
  final int circularAttempt;

  @override
  String toString() {
    return 'AuthenticationState.loaded(attemptsEnterSecureCode: $attemptsEnterSecureCode, circularAttempt: $circularAttempt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationStateLoaded &&
            (identical(
                    other.attemptsEnterSecureCode, attemptsEnterSecureCode) ||
                other.attemptsEnterSecureCode == attemptsEnterSecureCode) &&
            (identical(other.circularAttempt, circularAttempt) ||
                other.circularAttempt == circularAttempt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, attemptsEnterSecureCode, circularAttempt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticationStateLoadedCopyWith<_$_AuthenticationStateLoaded>
      get copyWith => __$$_AuthenticationStateLoadedCopyWithImpl<
          _$_AuthenticationStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int attemptsEnterSecureCode, int circularAttempt)
        loaded,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return loaded(attemptsEnterSecureCode, circularAttempt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int attemptsEnterSecureCode, int circularAttempt)? loaded,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(attemptsEnterSecureCode, circularAttempt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int attemptsEnterSecureCode, int circularAttempt)? loaded,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(attemptsEnterSecureCode, circularAttempt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationStateLoading value) loading,
    required TResult Function(_AuthenticationStateLoaded value) loaded,
    required TResult Function(_AuthenticationStateSuccess value) success,
    required TResult Function(_AuthenticationStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStateLoading value)? loading,
    TResult? Function(_AuthenticationStateLoaded value)? loaded,
    TResult? Function(_AuthenticationStateSuccess value)? success,
    TResult? Function(_AuthenticationStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStateLoading value)? loading,
    TResult Function(_AuthenticationStateLoaded value)? loaded,
    TResult Function(_AuthenticationStateSuccess value)? success,
    TResult Function(_AuthenticationStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationStateLoaded implements AuthenticationState {
  const factory _AuthenticationStateLoaded(
      {final int attemptsEnterSecureCode,
      final int circularAttempt}) = _$_AuthenticationStateLoaded;

  int get attemptsEnterSecureCode;
  int get circularAttempt;
  @JsonKey(ignore: true)
  _$$_AuthenticationStateLoadedCopyWith<_$_AuthenticationStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthenticationStateSuccessCopyWith<$Res> {
  factory _$$_AuthenticationStateSuccessCopyWith(
          _$_AuthenticationStateSuccess value,
          $Res Function(_$_AuthenticationStateSuccess) then) =
      __$$_AuthenticationStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticationStateSuccessCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$_AuthenticationStateSuccess>
    implements _$$_AuthenticationStateSuccessCopyWith<$Res> {
  __$$_AuthenticationStateSuccessCopyWithImpl(
      _$_AuthenticationStateSuccess _value,
      $Res Function(_$_AuthenticationStateSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthenticationStateSuccess implements _AuthenticationStateSuccess {
  const _$_AuthenticationStateSuccess();

  @override
  String toString() {
    return 'AuthenticationState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int attemptsEnterSecureCode, int circularAttempt)
        loaded,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int attemptsEnterSecureCode, int circularAttempt)? loaded,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int attemptsEnterSecureCode, int circularAttempt)? loaded,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationStateLoading value) loading,
    required TResult Function(_AuthenticationStateLoaded value) loaded,
    required TResult Function(_AuthenticationStateSuccess value) success,
    required TResult Function(_AuthenticationStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStateLoading value)? loading,
    TResult? Function(_AuthenticationStateLoaded value)? loaded,
    TResult? Function(_AuthenticationStateSuccess value)? success,
    TResult? Function(_AuthenticationStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStateLoading value)? loading,
    TResult Function(_AuthenticationStateLoaded value)? loaded,
    TResult Function(_AuthenticationStateSuccess value)? success,
    TResult Function(_AuthenticationStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationStateSuccess implements AuthenticationState {
  const factory _AuthenticationStateSuccess() = _$_AuthenticationStateSuccess;
}

/// @nodoc
abstract class _$$_AuthenticationStateErrorCopyWith<$Res> {
  factory _$$_AuthenticationStateErrorCopyWith(
          _$_AuthenticationStateError value,
          $Res Function(_$_AuthenticationStateError) then) =
      __$$_AuthenticationStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_AuthenticationStateErrorCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_AuthenticationStateError>
    implements _$$_AuthenticationStateErrorCopyWith<$Res> {
  __$$_AuthenticationStateErrorCopyWithImpl(_$_AuthenticationStateError _value,
      $Res Function(_$_AuthenticationStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_AuthenticationStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthenticationStateError implements _AuthenticationStateError {
  const _$_AuthenticationStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AuthenticationState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticationStateErrorCopyWith<_$_AuthenticationStateError>
      get copyWith => __$$_AuthenticationStateErrorCopyWithImpl<
          _$_AuthenticationStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int attemptsEnterSecureCode, int circularAttempt)
        loaded,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int attemptsEnterSecureCode, int circularAttempt)? loaded,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int attemptsEnterSecureCode, int circularAttempt)? loaded,
    TResult Function()? success,
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
    required TResult Function(_AuthenticationStateLoading value) loading,
    required TResult Function(_AuthenticationStateLoaded value) loaded,
    required TResult Function(_AuthenticationStateSuccess value) success,
    required TResult Function(_AuthenticationStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStateLoading value)? loading,
    TResult? Function(_AuthenticationStateLoaded value)? loaded,
    TResult? Function(_AuthenticationStateSuccess value)? success,
    TResult? Function(_AuthenticationStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStateLoading value)? loading,
    TResult Function(_AuthenticationStateLoaded value)? loaded,
    TResult Function(_AuthenticationStateSuccess value)? success,
    TResult Function(_AuthenticationStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationStateError implements AuthenticationState {
  const factory _AuthenticationStateError({required final String error}) =
      _$_AuthenticationStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_AuthenticationStateErrorCopyWith<_$_AuthenticationStateError>
      get copyWith => throw _privateConstructorUsedError;
}
