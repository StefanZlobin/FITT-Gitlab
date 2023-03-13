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
  String get phoneNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String phoneNumber) requestVerificationCode,
    required TResult Function(
            String verificationCode, String phoneNumber, String fcmToken)
        requestCodeVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String phoneNumber)? requestVerificationCode,
    TResult? Function(
            String verificationCode, String phoneNumber, String fcmToken)?
        requestCodeVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String phoneNumber)? requestVerificationCode,
    TResult Function(
            String verificationCode, String phoneNumber, String fcmToken)?
        requestCodeVerification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEventPhoneNumberChanged value)
        phoneNumberChanged,
    required TResult Function(_LoginEventRequestVerificationCode value)
        requestVerificationCode,
    required TResult Function(_LoginEventRequestCodeVerification value)
        requestCodeVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEventPhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_LoginEventRequestVerificationCode value)?
        requestVerificationCode,
    TResult? Function(_LoginEventRequestCodeVerification value)?
        requestCodeVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEventPhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LoginEventRequestVerificationCode value)?
        requestVerificationCode,
    TResult Function(_LoginEventRequestCodeVerification value)?
        requestCodeVerification,
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
  $Res call({String phoneNumber});
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
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginEventPhoneNumberChangedCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$_LoginEventPhoneNumberChangedCopyWith(
          _$_LoginEventPhoneNumberChanged value,
          $Res Function(_$_LoginEventPhoneNumberChanged) then) =
      __$$_LoginEventPhoneNumberChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$_LoginEventPhoneNumberChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_LoginEventPhoneNumberChanged>
    implements _$$_LoginEventPhoneNumberChangedCopyWith<$Res> {
  __$$_LoginEventPhoneNumberChangedCopyWithImpl(
      _$_LoginEventPhoneNumberChanged _value,
      $Res Function(_$_LoginEventPhoneNumberChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$_LoginEventPhoneNumberChanged(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginEventPhoneNumberChanged implements _LoginEventPhoneNumberChanged {
  const _$_LoginEventPhoneNumberChanged({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'LoginEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginEventPhoneNumberChanged &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginEventPhoneNumberChangedCopyWith<_$_LoginEventPhoneNumberChanged>
      get copyWith => __$$_LoginEventPhoneNumberChangedCopyWithImpl<
          _$_LoginEventPhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String phoneNumber) requestVerificationCode,
    required TResult Function(
            String verificationCode, String phoneNumber, String fcmToken)
        requestCodeVerification,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String phoneNumber)? requestVerificationCode,
    TResult? Function(
            String verificationCode, String phoneNumber, String fcmToken)?
        requestCodeVerification,
  }) {
    return phoneNumberChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String phoneNumber)? requestVerificationCode,
    TResult Function(
            String verificationCode, String phoneNumber, String fcmToken)?
        requestCodeVerification,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEventPhoneNumberChanged value)
        phoneNumberChanged,
    required TResult Function(_LoginEventRequestVerificationCode value)
        requestVerificationCode,
    required TResult Function(_LoginEventRequestCodeVerification value)
        requestCodeVerification,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEventPhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_LoginEventRequestVerificationCode value)?
        requestVerificationCode,
    TResult? Function(_LoginEventRequestCodeVerification value)?
        requestCodeVerification,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEventPhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LoginEventRequestVerificationCode value)?
        requestVerificationCode,
    TResult Function(_LoginEventRequestCodeVerification value)?
        requestCodeVerification,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _LoginEventPhoneNumberChanged implements LoginEvent {
  const factory _LoginEventPhoneNumberChanged(
      {required final String phoneNumber}) = _$_LoginEventPhoneNumberChanged;

  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_LoginEventPhoneNumberChangedCopyWith<_$_LoginEventPhoneNumberChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginEventRequestVerificationCodeCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$_LoginEventRequestVerificationCodeCopyWith(
          _$_LoginEventRequestVerificationCode value,
          $Res Function(_$_LoginEventRequestVerificationCode) then) =
      __$$_LoginEventRequestVerificationCodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$_LoginEventRequestVerificationCodeCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_LoginEventRequestVerificationCode>
    implements _$$_LoginEventRequestVerificationCodeCopyWith<$Res> {
  __$$_LoginEventRequestVerificationCodeCopyWithImpl(
      _$_LoginEventRequestVerificationCode _value,
      $Res Function(_$_LoginEventRequestVerificationCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$_LoginEventRequestVerificationCode(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginEventRequestVerificationCode
    implements _LoginEventRequestVerificationCode {
  const _$_LoginEventRequestVerificationCode({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'LoginEvent.requestVerificationCode(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginEventRequestVerificationCode &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginEventRequestVerificationCodeCopyWith<
          _$_LoginEventRequestVerificationCode>
      get copyWith => __$$_LoginEventRequestVerificationCodeCopyWithImpl<
          _$_LoginEventRequestVerificationCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String phoneNumber) requestVerificationCode,
    required TResult Function(
            String verificationCode, String phoneNumber, String fcmToken)
        requestCodeVerification,
  }) {
    return requestVerificationCode(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String phoneNumber)? requestVerificationCode,
    TResult? Function(
            String verificationCode, String phoneNumber, String fcmToken)?
        requestCodeVerification,
  }) {
    return requestVerificationCode?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String phoneNumber)? requestVerificationCode,
    TResult Function(
            String verificationCode, String phoneNumber, String fcmToken)?
        requestCodeVerification,
    required TResult orElse(),
  }) {
    if (requestVerificationCode != null) {
      return requestVerificationCode(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEventPhoneNumberChanged value)
        phoneNumberChanged,
    required TResult Function(_LoginEventRequestVerificationCode value)
        requestVerificationCode,
    required TResult Function(_LoginEventRequestCodeVerification value)
        requestCodeVerification,
  }) {
    return requestVerificationCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEventPhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_LoginEventRequestVerificationCode value)?
        requestVerificationCode,
    TResult? Function(_LoginEventRequestCodeVerification value)?
        requestCodeVerification,
  }) {
    return requestVerificationCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEventPhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LoginEventRequestVerificationCode value)?
        requestVerificationCode,
    TResult Function(_LoginEventRequestCodeVerification value)?
        requestCodeVerification,
    required TResult orElse(),
  }) {
    if (requestVerificationCode != null) {
      return requestVerificationCode(this);
    }
    return orElse();
  }
}

abstract class _LoginEventRequestVerificationCode implements LoginEvent {
  const factory _LoginEventRequestVerificationCode(
          {required final String phoneNumber}) =
      _$_LoginEventRequestVerificationCode;

  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_LoginEventRequestVerificationCodeCopyWith<
          _$_LoginEventRequestVerificationCode>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginEventRequestCodeVerificationCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$_LoginEventRequestCodeVerificationCopyWith(
          _$_LoginEventRequestCodeVerification value,
          $Res Function(_$_LoginEventRequestCodeVerification) then) =
      __$$_LoginEventRequestCodeVerificationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String verificationCode, String phoneNumber, String fcmToken});
}

/// @nodoc
class __$$_LoginEventRequestCodeVerificationCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_LoginEventRequestCodeVerification>
    implements _$$_LoginEventRequestCodeVerificationCopyWith<$Res> {
  __$$_LoginEventRequestCodeVerificationCopyWithImpl(
      _$_LoginEventRequestCodeVerification _value,
      $Res Function(_$_LoginEventRequestCodeVerification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationCode = null,
    Object? phoneNumber = null,
    Object? fcmToken = null,
  }) {
    return _then(_$_LoginEventRequestCodeVerification(
      verificationCode: null == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginEventRequestCodeVerification
    implements _LoginEventRequestCodeVerification {
  const _$_LoginEventRequestCodeVerification(
      {required this.verificationCode,
      required this.phoneNumber,
      required this.fcmToken});

  @override
  final String verificationCode;
  @override
  final String phoneNumber;
  @override
  final String fcmToken;

  @override
  String toString() {
    return 'LoginEvent.requestCodeVerification(verificationCode: $verificationCode, phoneNumber: $phoneNumber, fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginEventRequestCodeVerification &&
            (identical(other.verificationCode, verificationCode) ||
                other.verificationCode == verificationCode) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, verificationCode, phoneNumber, fcmToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginEventRequestCodeVerificationCopyWith<
          _$_LoginEventRequestCodeVerification>
      get copyWith => __$$_LoginEventRequestCodeVerificationCopyWithImpl<
          _$_LoginEventRequestCodeVerification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String phoneNumber) requestVerificationCode,
    required TResult Function(
            String verificationCode, String phoneNumber, String fcmToken)
        requestCodeVerification,
  }) {
    return requestCodeVerification(verificationCode, phoneNumber, fcmToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String phoneNumber)? requestVerificationCode,
    TResult? Function(
            String verificationCode, String phoneNumber, String fcmToken)?
        requestCodeVerification,
  }) {
    return requestCodeVerification?.call(
        verificationCode, phoneNumber, fcmToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String phoneNumber)? requestVerificationCode,
    TResult Function(
            String verificationCode, String phoneNumber, String fcmToken)?
        requestCodeVerification,
    required TResult orElse(),
  }) {
    if (requestCodeVerification != null) {
      return requestCodeVerification(verificationCode, phoneNumber, fcmToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEventPhoneNumberChanged value)
        phoneNumberChanged,
    required TResult Function(_LoginEventRequestVerificationCode value)
        requestVerificationCode,
    required TResult Function(_LoginEventRequestCodeVerification value)
        requestCodeVerification,
  }) {
    return requestCodeVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEventPhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_LoginEventRequestVerificationCode value)?
        requestVerificationCode,
    TResult? Function(_LoginEventRequestCodeVerification value)?
        requestCodeVerification,
  }) {
    return requestCodeVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEventPhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LoginEventRequestVerificationCode value)?
        requestVerificationCode,
    TResult Function(_LoginEventRequestCodeVerification value)?
        requestCodeVerification,
    required TResult orElse(),
  }) {
    if (requestCodeVerification != null) {
      return requestCodeVerification(this);
    }
    return orElse();
  }
}

abstract class _LoginEventRequestCodeVerification implements LoginEvent {
  const factory _LoginEventRequestCodeVerification(
      {required final String verificationCode,
      required final String phoneNumber,
      required final String fcmToken}) = _$_LoginEventRequestCodeVerification;

  String get verificationCode;
  @override
  String get phoneNumber;
  String get fcmToken;
  @override
  @JsonKey(ignore: true)
  _$$_LoginEventRequestCodeVerificationCopyWith<
          _$_LoginEventRequestCodeVerification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String phoneNumber, String verifiationCode)
        loaded,
    required TResult Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String phoneNumber, String verifiationCode)? loaded,
    TResult? Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String phoneNumber, String verifiationCode)? loaded,
    TResult Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoading value) loading,
    required TResult Function(_LoginStateLoaded value) loaded,
    required TResult Function(_LoginStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginStateInitial value)? initial,
    TResult? Function(_LoginStateLoading value)? loading,
    TResult? Function(_LoginStateLoaded value)? loaded,
    TResult? Function(_LoginStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
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
    required TResult Function() loading,
    required TResult Function(String phoneNumber, String verifiationCode)
        loaded,
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
    TResult? Function()? loading,
    TResult? Function(String phoneNumber, String verifiationCode)? loaded,
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
    TResult Function()? loading,
    TResult Function(String phoneNumber, String verifiationCode)? loaded,
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
    required TResult Function(_LoginStateLoading value) loading,
    required TResult Function(_LoginStateLoaded value) loaded,
    required TResult Function(_LoginStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginStateInitial value)? initial,
    TResult? Function(_LoginStateLoading value)? loading,
    TResult? Function(_LoginStateLoaded value)? loaded,
    TResult? Function(_LoginStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
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
abstract class _$$_LoginStateLoadingCopyWith<$Res> {
  factory _$$_LoginStateLoadingCopyWith(_$_LoginStateLoading value,
          $Res Function(_$_LoginStateLoading) then) =
      __$$_LoginStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginStateLoadingCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginStateLoading>
    implements _$$_LoginStateLoadingCopyWith<$Res> {
  __$$_LoginStateLoadingCopyWithImpl(
      _$_LoginStateLoading _value, $Res Function(_$_LoginStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginStateLoading implements _LoginStateLoading {
  const _$_LoginStateLoading();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String phoneNumber, String verifiationCode)
        loaded,
    required TResult Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)
        error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String phoneNumber, String verifiationCode)? loaded,
    TResult? Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)?
        error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String phoneNumber, String verifiationCode)? loaded,
    TResult Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)?
        error,
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
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoading value) loading,
    required TResult Function(_LoginStateLoaded value) loaded,
    required TResult Function(_LoginStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginStateInitial value)? initial,
    TResult? Function(_LoginStateLoading value)? loading,
    TResult? Function(_LoginStateLoaded value)? loaded,
    TResult? Function(_LoginStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateLoaded value)? loaded,
    TResult Function(_LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoginStateLoading implements LoginState {
  const factory _LoginStateLoading() = _$_LoginStateLoading;
}

/// @nodoc
abstract class _$$_LoginStateLoadedCopyWith<$Res> {
  factory _$$_LoginStateLoadedCopyWith(
          _$_LoginStateLoaded value, $Res Function(_$_LoginStateLoaded) then) =
      __$$_LoginStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber, String verifiationCode});
}

/// @nodoc
class __$$_LoginStateLoadedCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginStateLoaded>
    implements _$$_LoginStateLoadedCopyWith<$Res> {
  __$$_LoginStateLoadedCopyWithImpl(
      _$_LoginStateLoaded _value, $Res Function(_$_LoginStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? verifiationCode = null,
  }) {
    return _then(_$_LoginStateLoaded(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      verifiationCode: null == verifiationCode
          ? _value.verifiationCode
          : verifiationCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginStateLoaded implements _LoginStateLoaded {
  const _$_LoginStateLoaded({this.phoneNumber = '', this.verifiationCode = ''});

  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final String verifiationCode;

  @override
  String toString() {
    return 'LoginState.loaded(phoneNumber: $phoneNumber, verifiationCode: $verifiationCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginStateLoaded &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.verifiationCode, verifiationCode) ||
                other.verifiationCode == verifiationCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, verifiationCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateLoadedCopyWith<_$_LoginStateLoaded> get copyWith =>
      __$$_LoginStateLoadedCopyWithImpl<_$_LoginStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String phoneNumber, String verifiationCode)
        loaded,
    required TResult Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)
        error,
  }) {
    return loaded(phoneNumber, verifiationCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String phoneNumber, String verifiationCode)? loaded,
    TResult? Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)?
        error,
  }) {
    return loaded?.call(phoneNumber, verifiationCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String phoneNumber, String verifiationCode)? loaded,
    TResult Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(phoneNumber, verifiationCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoading value) loading,
    required TResult Function(_LoginStateLoaded value) loaded,
    required TResult Function(_LoginStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginStateInitial value)? initial,
    TResult? Function(_LoginStateLoading value)? loading,
    TResult? Function(_LoginStateLoaded value)? loaded,
    TResult? Function(_LoginStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
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
  const factory _LoginStateLoaded(
      {final String phoneNumber,
      final String verifiationCode}) = _$_LoginStateLoaded;

  String get phoneNumber;
  String get verifiationCode;
  @JsonKey(ignore: true)
  _$$_LoginStateLoadedCopyWith<_$_LoginStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function() loading,
    required TResult Function(String phoneNumber, String verifiationCode)
        loaded,
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
    TResult? Function()? loading,
    TResult? Function(String phoneNumber, String verifiationCode)? loaded,
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
    TResult Function()? loading,
    TResult Function(String phoneNumber, String verifiationCode)? loaded,
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
    required TResult Function(_LoginStateLoading value) loading,
    required TResult Function(_LoginStateLoaded value) loaded,
    required TResult Function(_LoginStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginStateInitial value)? initial,
    TResult? Function(_LoginStateLoading value)? loading,
    TResult? Function(_LoginStateLoaded value)? loaded,
    TResult? Function(_LoginStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
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
