// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_secure_code_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InputSecureCodeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) requestVerificationCode,
    required TResult Function(String verificationCode) requestCodeVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? requestVerificationCode,
    TResult? Function(String verificationCode)? requestCodeVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? requestVerificationCode,
    TResult Function(String verificationCode)? requestCodeVerification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            _InputSecureCodeEventRequestVerificationCode value)
        requestVerificationCode,
    required TResult Function(
            _InputSecureCodeEventRequestCodeVerification value)
        requestCodeVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputSecureCodeEventRequestVerificationCode value)?
        requestVerificationCode,
    TResult? Function(_InputSecureCodeEventRequestCodeVerification value)?
        requestCodeVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputSecureCodeEventRequestVerificationCode value)?
        requestVerificationCode,
    TResult Function(_InputSecureCodeEventRequestCodeVerification value)?
        requestCodeVerification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputSecureCodeEventCopyWith<$Res> {
  factory $InputSecureCodeEventCopyWith(InputSecureCodeEvent value,
          $Res Function(InputSecureCodeEvent) then) =
      _$InputSecureCodeEventCopyWithImpl<$Res, InputSecureCodeEvent>;
}

/// @nodoc
class _$InputSecureCodeEventCopyWithImpl<$Res,
        $Val extends InputSecureCodeEvent>
    implements $InputSecureCodeEventCopyWith<$Res> {
  _$InputSecureCodeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InputSecureCodeEventRequestVerificationCodeCopyWith<$Res> {
  factory _$$_InputSecureCodeEventRequestVerificationCodeCopyWith(
          _$_InputSecureCodeEventRequestVerificationCode value,
          $Res Function(_$_InputSecureCodeEventRequestVerificationCode) then) =
      __$$_InputSecureCodeEventRequestVerificationCodeCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$_InputSecureCodeEventRequestVerificationCodeCopyWithImpl<$Res>
    extends _$InputSecureCodeEventCopyWithImpl<$Res,
        _$_InputSecureCodeEventRequestVerificationCode>
    implements _$$_InputSecureCodeEventRequestVerificationCodeCopyWith<$Res> {
  __$$_InputSecureCodeEventRequestVerificationCodeCopyWithImpl(
      _$_InputSecureCodeEventRequestVerificationCode _value,
      $Res Function(_$_InputSecureCodeEventRequestVerificationCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$_InputSecureCodeEventRequestVerificationCode(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InputSecureCodeEventRequestVerificationCode
    implements _InputSecureCodeEventRequestVerificationCode {
  const _$_InputSecureCodeEventRequestVerificationCode(
      {required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'InputSecureCodeEvent.requestVerificationCode(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputSecureCodeEventRequestVerificationCode &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputSecureCodeEventRequestVerificationCodeCopyWith<
          _$_InputSecureCodeEventRequestVerificationCode>
      get copyWith =>
          __$$_InputSecureCodeEventRequestVerificationCodeCopyWithImpl<
              _$_InputSecureCodeEventRequestVerificationCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) requestVerificationCode,
    required TResult Function(String verificationCode) requestCodeVerification,
  }) {
    return requestVerificationCode(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? requestVerificationCode,
    TResult? Function(String verificationCode)? requestCodeVerification,
  }) {
    return requestVerificationCode?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? requestVerificationCode,
    TResult Function(String verificationCode)? requestCodeVerification,
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
    required TResult Function(
            _InputSecureCodeEventRequestVerificationCode value)
        requestVerificationCode,
    required TResult Function(
            _InputSecureCodeEventRequestCodeVerification value)
        requestCodeVerification,
  }) {
    return requestVerificationCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputSecureCodeEventRequestVerificationCode value)?
        requestVerificationCode,
    TResult? Function(_InputSecureCodeEventRequestCodeVerification value)?
        requestCodeVerification,
  }) {
    return requestVerificationCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputSecureCodeEventRequestVerificationCode value)?
        requestVerificationCode,
    TResult Function(_InputSecureCodeEventRequestCodeVerification value)?
        requestCodeVerification,
    required TResult orElse(),
  }) {
    if (requestVerificationCode != null) {
      return requestVerificationCode(this);
    }
    return orElse();
  }
}

abstract class _InputSecureCodeEventRequestVerificationCode
    implements InputSecureCodeEvent {
  const factory _InputSecureCodeEventRequestVerificationCode(
          {required final String phoneNumber}) =
      _$_InputSecureCodeEventRequestVerificationCode;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$_InputSecureCodeEventRequestVerificationCodeCopyWith<
          _$_InputSecureCodeEventRequestVerificationCode>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InputSecureCodeEventRequestCodeVerificationCopyWith<$Res> {
  factory _$$_InputSecureCodeEventRequestCodeVerificationCopyWith(
          _$_InputSecureCodeEventRequestCodeVerification value,
          $Res Function(_$_InputSecureCodeEventRequestCodeVerification) then) =
      __$$_InputSecureCodeEventRequestCodeVerificationCopyWithImpl<$Res>;
  @useResult
  $Res call({String verificationCode});
}

/// @nodoc
class __$$_InputSecureCodeEventRequestCodeVerificationCopyWithImpl<$Res>
    extends _$InputSecureCodeEventCopyWithImpl<$Res,
        _$_InputSecureCodeEventRequestCodeVerification>
    implements _$$_InputSecureCodeEventRequestCodeVerificationCopyWith<$Res> {
  __$$_InputSecureCodeEventRequestCodeVerificationCopyWithImpl(
      _$_InputSecureCodeEventRequestCodeVerification _value,
      $Res Function(_$_InputSecureCodeEventRequestCodeVerification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationCode = null,
  }) {
    return _then(_$_InputSecureCodeEventRequestCodeVerification(
      verificationCode: null == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InputSecureCodeEventRequestCodeVerification
    implements _InputSecureCodeEventRequestCodeVerification {
  const _$_InputSecureCodeEventRequestCodeVerification(
      {required this.verificationCode});

  @override
  final String verificationCode;

  @override
  String toString() {
    return 'InputSecureCodeEvent.requestCodeVerification(verificationCode: $verificationCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputSecureCodeEventRequestCodeVerification &&
            (identical(other.verificationCode, verificationCode) ||
                other.verificationCode == verificationCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verificationCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputSecureCodeEventRequestCodeVerificationCopyWith<
          _$_InputSecureCodeEventRequestCodeVerification>
      get copyWith =>
          __$$_InputSecureCodeEventRequestCodeVerificationCopyWithImpl<
              _$_InputSecureCodeEventRequestCodeVerification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) requestVerificationCode,
    required TResult Function(String verificationCode) requestCodeVerification,
  }) {
    return requestCodeVerification(verificationCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? requestVerificationCode,
    TResult? Function(String verificationCode)? requestCodeVerification,
  }) {
    return requestCodeVerification?.call(verificationCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? requestVerificationCode,
    TResult Function(String verificationCode)? requestCodeVerification,
    required TResult orElse(),
  }) {
    if (requestCodeVerification != null) {
      return requestCodeVerification(verificationCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            _InputSecureCodeEventRequestVerificationCode value)
        requestVerificationCode,
    required TResult Function(
            _InputSecureCodeEventRequestCodeVerification value)
        requestCodeVerification,
  }) {
    return requestCodeVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputSecureCodeEventRequestVerificationCode value)?
        requestVerificationCode,
    TResult? Function(_InputSecureCodeEventRequestCodeVerification value)?
        requestCodeVerification,
  }) {
    return requestCodeVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputSecureCodeEventRequestVerificationCode value)?
        requestVerificationCode,
    TResult Function(_InputSecureCodeEventRequestCodeVerification value)?
        requestCodeVerification,
    required TResult orElse(),
  }) {
    if (requestCodeVerification != null) {
      return requestCodeVerification(this);
    }
    return orElse();
  }
}

abstract class _InputSecureCodeEventRequestCodeVerification
    implements InputSecureCodeEvent {
  const factory _InputSecureCodeEventRequestCodeVerification(
          {required final String verificationCode}) =
      _$_InputSecureCodeEventRequestCodeVerification;

  String get verificationCode;
  @JsonKey(ignore: true)
  _$$_InputSecureCodeEventRequestCodeVerificationCopyWith<
          _$_InputSecureCodeEventRequestCodeVerification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InputSecureCodeState {
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
    required TResult Function(_InputSecureCodeStateInitial value) initial,
    required TResult Function(_InputSecureCodeStateLoaded value) loaded,
    required TResult Function(_InputSecureCodeStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputSecureCodeStateInitial value)? initial,
    TResult? Function(_InputSecureCodeStateLoaded value)? loaded,
    TResult? Function(_InputSecureCodeStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputSecureCodeStateInitial value)? initial,
    TResult Function(_InputSecureCodeStateLoaded value)? loaded,
    TResult Function(_InputSecureCodeStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputSecureCodeStateCopyWith<$Res> {
  factory $InputSecureCodeStateCopyWith(InputSecureCodeState value,
          $Res Function(InputSecureCodeState) then) =
      _$InputSecureCodeStateCopyWithImpl<$Res, InputSecureCodeState>;
}

/// @nodoc
class _$InputSecureCodeStateCopyWithImpl<$Res,
        $Val extends InputSecureCodeState>
    implements $InputSecureCodeStateCopyWith<$Res> {
  _$InputSecureCodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InputSecureCodeStateInitialCopyWith<$Res> {
  factory _$$_InputSecureCodeStateInitialCopyWith(
          _$_InputSecureCodeStateInitial value,
          $Res Function(_$_InputSecureCodeStateInitial) then) =
      __$$_InputSecureCodeStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InputSecureCodeStateInitialCopyWithImpl<$Res>
    extends _$InputSecureCodeStateCopyWithImpl<$Res,
        _$_InputSecureCodeStateInitial>
    implements _$$_InputSecureCodeStateInitialCopyWith<$Res> {
  __$$_InputSecureCodeStateInitialCopyWithImpl(
      _$_InputSecureCodeStateInitial _value,
      $Res Function(_$_InputSecureCodeStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InputSecureCodeStateInitial implements _InputSecureCodeStateInitial {
  const _$_InputSecureCodeStateInitial();

  @override
  String toString() {
    return 'InputSecureCodeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputSecureCodeStateInitial);
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
    required TResult Function(_InputSecureCodeStateInitial value) initial,
    required TResult Function(_InputSecureCodeStateLoaded value) loaded,
    required TResult Function(_InputSecureCodeStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputSecureCodeStateInitial value)? initial,
    TResult? Function(_InputSecureCodeStateLoaded value)? loaded,
    TResult? Function(_InputSecureCodeStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputSecureCodeStateInitial value)? initial,
    TResult Function(_InputSecureCodeStateLoaded value)? loaded,
    TResult Function(_InputSecureCodeStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InputSecureCodeStateInitial implements InputSecureCodeState {
  const factory _InputSecureCodeStateInitial() = _$_InputSecureCodeStateInitial;
}

/// @nodoc
abstract class _$$_InputSecureCodeStateLoadedCopyWith<$Res> {
  factory _$$_InputSecureCodeStateLoadedCopyWith(
          _$_InputSecureCodeStateLoaded value,
          $Res Function(_$_InputSecureCodeStateLoaded) then) =
      __$$_InputSecureCodeStateLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InputSecureCodeStateLoadedCopyWithImpl<$Res>
    extends _$InputSecureCodeStateCopyWithImpl<$Res,
        _$_InputSecureCodeStateLoaded>
    implements _$$_InputSecureCodeStateLoadedCopyWith<$Res> {
  __$$_InputSecureCodeStateLoadedCopyWithImpl(
      _$_InputSecureCodeStateLoaded _value,
      $Res Function(_$_InputSecureCodeStateLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InputSecureCodeStateLoaded implements _InputSecureCodeStateLoaded {
  const _$_InputSecureCodeStateLoaded();

  @override
  String toString() {
    return 'InputSecureCodeState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputSecureCodeStateLoaded);
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
    required TResult Function(_InputSecureCodeStateInitial value) initial,
    required TResult Function(_InputSecureCodeStateLoaded value) loaded,
    required TResult Function(_InputSecureCodeStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputSecureCodeStateInitial value)? initial,
    TResult? Function(_InputSecureCodeStateLoaded value)? loaded,
    TResult? Function(_InputSecureCodeStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputSecureCodeStateInitial value)? initial,
    TResult Function(_InputSecureCodeStateLoaded value)? loaded,
    TResult Function(_InputSecureCodeStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _InputSecureCodeStateLoaded implements InputSecureCodeState {
  const factory _InputSecureCodeStateLoaded() = _$_InputSecureCodeStateLoaded;
}

/// @nodoc
abstract class _$$_InputSecureCodeStateErrorCopyWith<$Res> {
  factory _$$_InputSecureCodeStateErrorCopyWith(
          _$_InputSecureCodeStateError value,
          $Res Function(_$_InputSecureCodeStateError) then) =
      __$$_InputSecureCodeStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String error, int countSecureCodeEntryAttempts, String phoneNumber});
}

/// @nodoc
class __$$_InputSecureCodeStateErrorCopyWithImpl<$Res>
    extends _$InputSecureCodeStateCopyWithImpl<$Res,
        _$_InputSecureCodeStateError>
    implements _$$_InputSecureCodeStateErrorCopyWith<$Res> {
  __$$_InputSecureCodeStateErrorCopyWithImpl(
      _$_InputSecureCodeStateError _value,
      $Res Function(_$_InputSecureCodeStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? countSecureCodeEntryAttempts = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$_InputSecureCodeStateError(
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

class _$_InputSecureCodeStateError implements _InputSecureCodeStateError {
  const _$_InputSecureCodeStateError(
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
    return 'InputSecureCodeState.error(error: $error, countSecureCodeEntryAttempts: $countSecureCodeEntryAttempts, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputSecureCodeStateError &&
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
  _$$_InputSecureCodeStateErrorCopyWith<_$_InputSecureCodeStateError>
      get copyWith => __$$_InputSecureCodeStateErrorCopyWithImpl<
          _$_InputSecureCodeStateError>(this, _$identity);

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
    required TResult Function(_InputSecureCodeStateInitial value) initial,
    required TResult Function(_InputSecureCodeStateLoaded value) loaded,
    required TResult Function(_InputSecureCodeStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputSecureCodeStateInitial value)? initial,
    TResult? Function(_InputSecureCodeStateLoaded value)? loaded,
    TResult? Function(_InputSecureCodeStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputSecureCodeStateInitial value)? initial,
    TResult Function(_InputSecureCodeStateLoaded value)? loaded,
    TResult Function(_InputSecureCodeStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _InputSecureCodeStateError implements InputSecureCodeState {
  const factory _InputSecureCodeStateError(
      {required final String error,
      final int countSecureCodeEntryAttempts,
      final String phoneNumber}) = _$_InputSecureCodeStateError;

  String get error;
  int get countSecureCodeEntryAttempts;
  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$_InputSecureCodeStateErrorCopyWith<_$_InputSecureCodeStateError>
      get copyWith => throw _privateConstructorUsedError;
}
