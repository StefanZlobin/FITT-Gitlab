// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_phone_number_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InputPhoneNumberEvent {
  String get phoneNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputPhoneNumberEventPhoneNumberChanged value)
        phoneNumberChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputPhoneNumberEventPhoneNumberChanged value)?
        phoneNumberChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputPhoneNumberEventPhoneNumberChanged value)?
        phoneNumberChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputPhoneNumberEventCopyWith<InputPhoneNumberEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputPhoneNumberEventCopyWith<$Res> {
  factory $InputPhoneNumberEventCopyWith(InputPhoneNumberEvent value,
          $Res Function(InputPhoneNumberEvent) then) =
      _$InputPhoneNumberEventCopyWithImpl<$Res, InputPhoneNumberEvent>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class _$InputPhoneNumberEventCopyWithImpl<$Res,
        $Val extends InputPhoneNumberEvent>
    implements $InputPhoneNumberEventCopyWith<$Res> {
  _$InputPhoneNumberEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_InputPhoneNumberEventPhoneNumberChangedCopyWith<$Res>
    implements $InputPhoneNumberEventCopyWith<$Res> {
  factory _$$_InputPhoneNumberEventPhoneNumberChangedCopyWith(
          _$_InputPhoneNumberEventPhoneNumberChanged value,
          $Res Function(_$_InputPhoneNumberEventPhoneNumberChanged) then) =
      __$$_InputPhoneNumberEventPhoneNumberChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$_InputPhoneNumberEventPhoneNumberChangedCopyWithImpl<$Res>
    extends _$InputPhoneNumberEventCopyWithImpl<$Res,
        _$_InputPhoneNumberEventPhoneNumberChanged>
    implements _$$_InputPhoneNumberEventPhoneNumberChangedCopyWith<$Res> {
  __$$_InputPhoneNumberEventPhoneNumberChangedCopyWithImpl(
      _$_InputPhoneNumberEventPhoneNumberChanged _value,
      $Res Function(_$_InputPhoneNumberEventPhoneNumberChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$_InputPhoneNumberEventPhoneNumberChanged(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InputPhoneNumberEventPhoneNumberChanged
    implements _InputPhoneNumberEventPhoneNumberChanged {
  const _$_InputPhoneNumberEventPhoneNumberChanged({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'InputPhoneNumberEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputPhoneNumberEventPhoneNumberChanged &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputPhoneNumberEventPhoneNumberChangedCopyWith<
          _$_InputPhoneNumberEventPhoneNumberChanged>
      get copyWith => __$$_InputPhoneNumberEventPhoneNumberChangedCopyWithImpl<
          _$_InputPhoneNumberEventPhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
  }) {
    return phoneNumberChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
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
    required TResult Function(_InputPhoneNumberEventPhoneNumberChanged value)
        phoneNumberChanged,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputPhoneNumberEventPhoneNumberChanged value)?
        phoneNumberChanged,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputPhoneNumberEventPhoneNumberChanged value)?
        phoneNumberChanged,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _InputPhoneNumberEventPhoneNumberChanged
    implements InputPhoneNumberEvent {
  const factory _InputPhoneNumberEventPhoneNumberChanged(
          {required final String phoneNumber}) =
      _$_InputPhoneNumberEventPhoneNumberChanged;

  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_InputPhoneNumberEventPhoneNumberChangedCopyWith<
          _$_InputPhoneNumberEventPhoneNumberChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InputPhoneNumberState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber) loaded,
    required TResult Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String phoneNumber)? loaded,
    TResult? Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber)? loaded,
    TResult Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputPhoneNumberStateInitial value) initial,
    required TResult Function(_InputPhoneNumberStateLoaded value) loaded,
    required TResult Function(_InputPhoneNumberStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputPhoneNumberStateInitial value)? initial,
    TResult? Function(_InputPhoneNumberStateLoaded value)? loaded,
    TResult? Function(_InputPhoneNumberStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputPhoneNumberStateInitial value)? initial,
    TResult Function(_InputPhoneNumberStateLoaded value)? loaded,
    TResult Function(_InputPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputPhoneNumberStateCopyWith<$Res> {
  factory $InputPhoneNumberStateCopyWith(InputPhoneNumberState value,
          $Res Function(InputPhoneNumberState) then) =
      _$InputPhoneNumberStateCopyWithImpl<$Res, InputPhoneNumberState>;
}

/// @nodoc
class _$InputPhoneNumberStateCopyWithImpl<$Res,
        $Val extends InputPhoneNumberState>
    implements $InputPhoneNumberStateCopyWith<$Res> {
  _$InputPhoneNumberStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InputPhoneNumberStateInitialCopyWith<$Res> {
  factory _$$_InputPhoneNumberStateInitialCopyWith(
          _$_InputPhoneNumberStateInitial value,
          $Res Function(_$_InputPhoneNumberStateInitial) then) =
      __$$_InputPhoneNumberStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InputPhoneNumberStateInitialCopyWithImpl<$Res>
    extends _$InputPhoneNumberStateCopyWithImpl<$Res,
        _$_InputPhoneNumberStateInitial>
    implements _$$_InputPhoneNumberStateInitialCopyWith<$Res> {
  __$$_InputPhoneNumberStateInitialCopyWithImpl(
      _$_InputPhoneNumberStateInitial _value,
      $Res Function(_$_InputPhoneNumberStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InputPhoneNumberStateInitial implements _InputPhoneNumberStateInitial {
  const _$_InputPhoneNumberStateInitial();

  @override
  String toString() {
    return 'InputPhoneNumberState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputPhoneNumberStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber) loaded,
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
    TResult? Function(String phoneNumber)? loaded,
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
    TResult Function(String phoneNumber)? loaded,
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
    required TResult Function(_InputPhoneNumberStateInitial value) initial,
    required TResult Function(_InputPhoneNumberStateLoaded value) loaded,
    required TResult Function(_InputPhoneNumberStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputPhoneNumberStateInitial value)? initial,
    TResult? Function(_InputPhoneNumberStateLoaded value)? loaded,
    TResult? Function(_InputPhoneNumberStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputPhoneNumberStateInitial value)? initial,
    TResult Function(_InputPhoneNumberStateLoaded value)? loaded,
    TResult Function(_InputPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InputPhoneNumberStateInitial implements InputPhoneNumberState {
  const factory _InputPhoneNumberStateInitial() =
      _$_InputPhoneNumberStateInitial;
}

/// @nodoc
abstract class _$$_InputPhoneNumberStateLoadedCopyWith<$Res> {
  factory _$$_InputPhoneNumberStateLoadedCopyWith(
          _$_InputPhoneNumberStateLoaded value,
          $Res Function(_$_InputPhoneNumberStateLoaded) then) =
      __$$_InputPhoneNumberStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$_InputPhoneNumberStateLoadedCopyWithImpl<$Res>
    extends _$InputPhoneNumberStateCopyWithImpl<$Res,
        _$_InputPhoneNumberStateLoaded>
    implements _$$_InputPhoneNumberStateLoadedCopyWith<$Res> {
  __$$_InputPhoneNumberStateLoadedCopyWithImpl(
      _$_InputPhoneNumberStateLoaded _value,
      $Res Function(_$_InputPhoneNumberStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$_InputPhoneNumberStateLoaded(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InputPhoneNumberStateLoaded implements _InputPhoneNumberStateLoaded {
  const _$_InputPhoneNumberStateLoaded({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'InputPhoneNumberState.loaded(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputPhoneNumberStateLoaded &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputPhoneNumberStateLoadedCopyWith<_$_InputPhoneNumberStateLoaded>
      get copyWith => __$$_InputPhoneNumberStateLoadedCopyWithImpl<
          _$_InputPhoneNumberStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber) loaded,
    required TResult Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)
        error,
  }) {
    return loaded(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String phoneNumber)? loaded,
    TResult? Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)?
        error,
  }) {
    return loaded?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String phoneNumber)? loaded,
    TResult Function(
            String error, int countSecureCodeEntryAttempts, String phoneNumber)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InputPhoneNumberStateInitial value) initial,
    required TResult Function(_InputPhoneNumberStateLoaded value) loaded,
    required TResult Function(_InputPhoneNumberStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputPhoneNumberStateInitial value)? initial,
    TResult? Function(_InputPhoneNumberStateLoaded value)? loaded,
    TResult? Function(_InputPhoneNumberStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputPhoneNumberStateInitial value)? initial,
    TResult Function(_InputPhoneNumberStateLoaded value)? loaded,
    TResult Function(_InputPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _InputPhoneNumberStateLoaded implements InputPhoneNumberState {
  const factory _InputPhoneNumberStateLoaded(
      {required final String phoneNumber}) = _$_InputPhoneNumberStateLoaded;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$_InputPhoneNumberStateLoadedCopyWith<_$_InputPhoneNumberStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InputPhoneNumberStateErrorCopyWith<$Res> {
  factory _$$_InputPhoneNumberStateErrorCopyWith(
          _$_InputPhoneNumberStateError value,
          $Res Function(_$_InputPhoneNumberStateError) then) =
      __$$_InputPhoneNumberStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String error, int countSecureCodeEntryAttempts, String phoneNumber});
}

/// @nodoc
class __$$_InputPhoneNumberStateErrorCopyWithImpl<$Res>
    extends _$InputPhoneNumberStateCopyWithImpl<$Res,
        _$_InputPhoneNumberStateError>
    implements _$$_InputPhoneNumberStateErrorCopyWith<$Res> {
  __$$_InputPhoneNumberStateErrorCopyWithImpl(
      _$_InputPhoneNumberStateError _value,
      $Res Function(_$_InputPhoneNumberStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? countSecureCodeEntryAttempts = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$_InputPhoneNumberStateError(
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

class _$_InputPhoneNumberStateError implements _InputPhoneNumberStateError {
  const _$_InputPhoneNumberStateError(
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
    return 'InputPhoneNumberState.error(error: $error, countSecureCodeEntryAttempts: $countSecureCodeEntryAttempts, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputPhoneNumberStateError &&
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
  _$$_InputPhoneNumberStateErrorCopyWith<_$_InputPhoneNumberStateError>
      get copyWith => __$$_InputPhoneNumberStateErrorCopyWithImpl<
          _$_InputPhoneNumberStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String phoneNumber) loaded,
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
    TResult? Function(String phoneNumber)? loaded,
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
    TResult Function(String phoneNumber)? loaded,
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
    required TResult Function(_InputPhoneNumberStateInitial value) initial,
    required TResult Function(_InputPhoneNumberStateLoaded value) loaded,
    required TResult Function(_InputPhoneNumberStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InputPhoneNumberStateInitial value)? initial,
    TResult? Function(_InputPhoneNumberStateLoaded value)? loaded,
    TResult? Function(_InputPhoneNumberStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InputPhoneNumberStateInitial value)? initial,
    TResult Function(_InputPhoneNumberStateLoaded value)? loaded,
    TResult Function(_InputPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _InputPhoneNumberStateError implements InputPhoneNumberState {
  const factory _InputPhoneNumberStateError(
      {required final String error,
      final int countSecureCodeEntryAttempts,
      final String phoneNumber}) = _$_InputPhoneNumberStateError;

  String get error;
  int get countSecureCodeEntryAttempts;
  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$_InputPhoneNumberStateErrorCopyWith<_$_InputPhoneNumberStateError>
      get copyWith => throw _privateConstructorUsedError;
}
