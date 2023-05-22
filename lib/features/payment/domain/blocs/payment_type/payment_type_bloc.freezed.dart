// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_type_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentTypeEvent {
  PaymentTypeEnum get paymentType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentTypeEnum paymentType) changedPaymentType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentTypeEnum paymentType)? changedPaymentType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentTypeEnum paymentType)? changedPaymentType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentTypeEventChangedPaymentType value)
        changedPaymentType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentTypeEventChangedPaymentType value)?
        changedPaymentType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentTypeEventChangedPaymentType value)?
        changedPaymentType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentTypeEventCopyWith<PaymentTypeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTypeEventCopyWith<$Res> {
  factory $PaymentTypeEventCopyWith(
          PaymentTypeEvent value, $Res Function(PaymentTypeEvent) then) =
      _$PaymentTypeEventCopyWithImpl<$Res, PaymentTypeEvent>;
  @useResult
  $Res call({PaymentTypeEnum paymentType});
}

/// @nodoc
class _$PaymentTypeEventCopyWithImpl<$Res, $Val extends PaymentTypeEvent>
    implements $PaymentTypeEventCopyWith<$Res> {
  _$PaymentTypeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentType = null,
  }) {
    return _then(_value.copyWith(
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentTypeEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentTypeEventChangedPaymentTypeCopyWith<$Res>
    implements $PaymentTypeEventCopyWith<$Res> {
  factory _$$_PaymentTypeEventChangedPaymentTypeCopyWith(
          _$_PaymentTypeEventChangedPaymentType value,
          $Res Function(_$_PaymentTypeEventChangedPaymentType) then) =
      __$$_PaymentTypeEventChangedPaymentTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaymentTypeEnum paymentType});
}

/// @nodoc
class __$$_PaymentTypeEventChangedPaymentTypeCopyWithImpl<$Res>
    extends _$PaymentTypeEventCopyWithImpl<$Res,
        _$_PaymentTypeEventChangedPaymentType>
    implements _$$_PaymentTypeEventChangedPaymentTypeCopyWith<$Res> {
  __$$_PaymentTypeEventChangedPaymentTypeCopyWithImpl(
      _$_PaymentTypeEventChangedPaymentType _value,
      $Res Function(_$_PaymentTypeEventChangedPaymentType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentType = null,
  }) {
    return _then(_$_PaymentTypeEventChangedPaymentType(
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentTypeEnum,
    ));
  }
}

/// @nodoc

class _$_PaymentTypeEventChangedPaymentType
    implements _PaymentTypeEventChangedPaymentType {
  const _$_PaymentTypeEventChangedPaymentType({required this.paymentType});

  @override
  final PaymentTypeEnum paymentType;

  @override
  String toString() {
    return 'PaymentTypeEvent.changedPaymentType(paymentType: $paymentType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentTypeEventChangedPaymentType &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentTypeEventChangedPaymentTypeCopyWith<
          _$_PaymentTypeEventChangedPaymentType>
      get copyWith => __$$_PaymentTypeEventChangedPaymentTypeCopyWithImpl<
          _$_PaymentTypeEventChangedPaymentType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentTypeEnum paymentType) changedPaymentType,
  }) {
    return changedPaymentType(paymentType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentTypeEnum paymentType)? changedPaymentType,
  }) {
    return changedPaymentType?.call(paymentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentTypeEnum paymentType)? changedPaymentType,
    required TResult orElse(),
  }) {
    if (changedPaymentType != null) {
      return changedPaymentType(paymentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentTypeEventChangedPaymentType value)
        changedPaymentType,
  }) {
    return changedPaymentType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentTypeEventChangedPaymentType value)?
        changedPaymentType,
  }) {
    return changedPaymentType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentTypeEventChangedPaymentType value)?
        changedPaymentType,
    required TResult orElse(),
  }) {
    if (changedPaymentType != null) {
      return changedPaymentType(this);
    }
    return orElse();
  }
}

abstract class _PaymentTypeEventChangedPaymentType implements PaymentTypeEvent {
  const factory _PaymentTypeEventChangedPaymentType(
          {required final PaymentTypeEnum paymentType}) =
      _$_PaymentTypeEventChangedPaymentType;

  @override
  PaymentTypeEnum get paymentType;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentTypeEventChangedPaymentTypeCopyWith<
          _$_PaymentTypeEventChangedPaymentType>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentTypeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentTypeEnum paymentType) initial,
    required TResult Function(PaymentTypeEnum paymentType) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentTypeEnum paymentType)? initial,
    TResult? Function(PaymentTypeEnum paymentType)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentTypeEnum paymentType)? initial,
    TResult Function(PaymentTypeEnum paymentType)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentTypeStateInitial value) initial,
    required TResult Function(_PaymentTypeStateLoaded value) loaded,
    required TResult Function(_PaymentTypeStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentTypeStateInitial value)? initial,
    TResult? Function(_PaymentTypeStateLoaded value)? loaded,
    TResult? Function(_PaymentTypeStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentTypeStateInitial value)? initial,
    TResult Function(_PaymentTypeStateLoaded value)? loaded,
    TResult Function(_PaymentTypeStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTypeStateCopyWith<$Res> {
  factory $PaymentTypeStateCopyWith(
          PaymentTypeState value, $Res Function(PaymentTypeState) then) =
      _$PaymentTypeStateCopyWithImpl<$Res, PaymentTypeState>;
}

/// @nodoc
class _$PaymentTypeStateCopyWithImpl<$Res, $Val extends PaymentTypeState>
    implements $PaymentTypeStateCopyWith<$Res> {
  _$PaymentTypeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PaymentTypeStateInitialCopyWith<$Res> {
  factory _$$_PaymentTypeStateInitialCopyWith(_$_PaymentTypeStateInitial value,
          $Res Function(_$_PaymentTypeStateInitial) then) =
      __$$_PaymentTypeStateInitialCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentTypeEnum paymentType});
}

/// @nodoc
class __$$_PaymentTypeStateInitialCopyWithImpl<$Res>
    extends _$PaymentTypeStateCopyWithImpl<$Res, _$_PaymentTypeStateInitial>
    implements _$$_PaymentTypeStateInitialCopyWith<$Res> {
  __$$_PaymentTypeStateInitialCopyWithImpl(_$_PaymentTypeStateInitial _value,
      $Res Function(_$_PaymentTypeStateInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentType = null,
  }) {
    return _then(_$_PaymentTypeStateInitial(
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentTypeEnum,
    ));
  }
}

/// @nodoc

class _$_PaymentTypeStateInitial implements _PaymentTypeStateInitial {
  const _$_PaymentTypeStateInitial({this.paymentType = PaymentTypeEnum.money});

  @override
  @JsonKey()
  final PaymentTypeEnum paymentType;

  @override
  String toString() {
    return 'PaymentTypeState.initial(paymentType: $paymentType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentTypeStateInitial &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentTypeStateInitialCopyWith<_$_PaymentTypeStateInitial>
      get copyWith =>
          __$$_PaymentTypeStateInitialCopyWithImpl<_$_PaymentTypeStateInitial>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentTypeEnum paymentType) initial,
    required TResult Function(PaymentTypeEnum paymentType) loaded,
    required TResult Function(String error) error,
  }) {
    return initial(paymentType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentTypeEnum paymentType)? initial,
    TResult? Function(PaymentTypeEnum paymentType)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call(paymentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentTypeEnum paymentType)? initial,
    TResult Function(PaymentTypeEnum paymentType)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(paymentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentTypeStateInitial value) initial,
    required TResult Function(_PaymentTypeStateLoaded value) loaded,
    required TResult Function(_PaymentTypeStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentTypeStateInitial value)? initial,
    TResult? Function(_PaymentTypeStateLoaded value)? loaded,
    TResult? Function(_PaymentTypeStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentTypeStateInitial value)? initial,
    TResult Function(_PaymentTypeStateLoaded value)? loaded,
    TResult Function(_PaymentTypeStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PaymentTypeStateInitial implements PaymentTypeState {
  const factory _PaymentTypeStateInitial({final PaymentTypeEnum paymentType}) =
      _$_PaymentTypeStateInitial;

  PaymentTypeEnum get paymentType;
  @JsonKey(ignore: true)
  _$$_PaymentTypeStateInitialCopyWith<_$_PaymentTypeStateInitial>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PaymentTypeStateLoadedCopyWith<$Res> {
  factory _$$_PaymentTypeStateLoadedCopyWith(_$_PaymentTypeStateLoaded value,
          $Res Function(_$_PaymentTypeStateLoaded) then) =
      __$$_PaymentTypeStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentTypeEnum paymentType});
}

/// @nodoc
class __$$_PaymentTypeStateLoadedCopyWithImpl<$Res>
    extends _$PaymentTypeStateCopyWithImpl<$Res, _$_PaymentTypeStateLoaded>
    implements _$$_PaymentTypeStateLoadedCopyWith<$Res> {
  __$$_PaymentTypeStateLoadedCopyWithImpl(_$_PaymentTypeStateLoaded _value,
      $Res Function(_$_PaymentTypeStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentType = null,
  }) {
    return _then(_$_PaymentTypeStateLoaded(
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentTypeEnum,
    ));
  }
}

/// @nodoc

class _$_PaymentTypeStateLoaded implements _PaymentTypeStateLoaded {
  const _$_PaymentTypeStateLoaded({required this.paymentType});

  @override
  final PaymentTypeEnum paymentType;

  @override
  String toString() {
    return 'PaymentTypeState.loaded(paymentType: $paymentType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentTypeStateLoaded &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentTypeStateLoadedCopyWith<_$_PaymentTypeStateLoaded> get copyWith =>
      __$$_PaymentTypeStateLoadedCopyWithImpl<_$_PaymentTypeStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentTypeEnum paymentType) initial,
    required TResult Function(PaymentTypeEnum paymentType) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(paymentType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentTypeEnum paymentType)? initial,
    TResult? Function(PaymentTypeEnum paymentType)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(paymentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentTypeEnum paymentType)? initial,
    TResult Function(PaymentTypeEnum paymentType)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(paymentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentTypeStateInitial value) initial,
    required TResult Function(_PaymentTypeStateLoaded value) loaded,
    required TResult Function(_PaymentTypeStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentTypeStateInitial value)? initial,
    TResult? Function(_PaymentTypeStateLoaded value)? loaded,
    TResult? Function(_PaymentTypeStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentTypeStateInitial value)? initial,
    TResult Function(_PaymentTypeStateLoaded value)? loaded,
    TResult Function(_PaymentTypeStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _PaymentTypeStateLoaded implements PaymentTypeState {
  const factory _PaymentTypeStateLoaded(
      {required final PaymentTypeEnum paymentType}) = _$_PaymentTypeStateLoaded;

  PaymentTypeEnum get paymentType;
  @JsonKey(ignore: true)
  _$$_PaymentTypeStateLoadedCopyWith<_$_PaymentTypeStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PaymentTypeStateErrorCopyWith<$Res> {
  factory _$$_PaymentTypeStateErrorCopyWith(_$_PaymentTypeStateError value,
          $Res Function(_$_PaymentTypeStateError) then) =
      __$$_PaymentTypeStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_PaymentTypeStateErrorCopyWithImpl<$Res>
    extends _$PaymentTypeStateCopyWithImpl<$Res, _$_PaymentTypeStateError>
    implements _$$_PaymentTypeStateErrorCopyWith<$Res> {
  __$$_PaymentTypeStateErrorCopyWithImpl(_$_PaymentTypeStateError _value,
      $Res Function(_$_PaymentTypeStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_PaymentTypeStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PaymentTypeStateError implements _PaymentTypeStateError {
  const _$_PaymentTypeStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'PaymentTypeState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentTypeStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentTypeStateErrorCopyWith<_$_PaymentTypeStateError> get copyWith =>
      __$$_PaymentTypeStateErrorCopyWithImpl<_$_PaymentTypeStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentTypeEnum paymentType) initial,
    required TResult Function(PaymentTypeEnum paymentType) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentTypeEnum paymentType)? initial,
    TResult? Function(PaymentTypeEnum paymentType)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentTypeEnum paymentType)? initial,
    TResult Function(PaymentTypeEnum paymentType)? loaded,
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
    required TResult Function(_PaymentTypeStateInitial value) initial,
    required TResult Function(_PaymentTypeStateLoaded value) loaded,
    required TResult Function(_PaymentTypeStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentTypeStateInitial value)? initial,
    TResult? Function(_PaymentTypeStateLoaded value)? loaded,
    TResult? Function(_PaymentTypeStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentTypeStateInitial value)? initial,
    TResult Function(_PaymentTypeStateLoaded value)? loaded,
    TResult Function(_PaymentTypeStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _PaymentTypeStateError implements PaymentTypeState {
  const factory _PaymentTypeStateError({required final String error}) =
      _$_PaymentTypeStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_PaymentTypeStateErrorCopyWith<_$_PaymentTypeStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
