// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_workout_button_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentWorkoutButtonEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentTypeEnum paymentType) payment,
    required TResult Function(
            bool paymentAvailable, UserExistEnum userHasFullData)
        checkAvailablePayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentTypeEnum paymentType)? payment,
    TResult? Function(bool paymentAvailable, UserExistEnum userHasFullData)?
        checkAvailablePayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentTypeEnum paymentType)? payment,
    TResult Function(bool paymentAvailable, UserExistEnum userHasFullData)?
        checkAvailablePayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentWorkoutButtonEventPayment value) payment,
    required TResult Function(
            _PaymentWorkoutButtonEventCheckAvailablePayment value)
        checkAvailablePayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentWorkoutButtonEventPayment value)? payment,
    TResult? Function(_PaymentWorkoutButtonEventCheckAvailablePayment value)?
        checkAvailablePayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentWorkoutButtonEventPayment value)? payment,
    TResult Function(_PaymentWorkoutButtonEventCheckAvailablePayment value)?
        checkAvailablePayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentWorkoutButtonEventCopyWith<$Res> {
  factory $PaymentWorkoutButtonEventCopyWith(PaymentWorkoutButtonEvent value,
          $Res Function(PaymentWorkoutButtonEvent) then) =
      _$PaymentWorkoutButtonEventCopyWithImpl<$Res, PaymentWorkoutButtonEvent>;
}

/// @nodoc
class _$PaymentWorkoutButtonEventCopyWithImpl<$Res,
        $Val extends PaymentWorkoutButtonEvent>
    implements $PaymentWorkoutButtonEventCopyWith<$Res> {
  _$PaymentWorkoutButtonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PaymentWorkoutButtonEventPaymentCopyWith<$Res> {
  factory _$$_PaymentWorkoutButtonEventPaymentCopyWith(
          _$_PaymentWorkoutButtonEventPayment value,
          $Res Function(_$_PaymentWorkoutButtonEventPayment) then) =
      __$$_PaymentWorkoutButtonEventPaymentCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentTypeEnum paymentType});
}

/// @nodoc
class __$$_PaymentWorkoutButtonEventPaymentCopyWithImpl<$Res>
    extends _$PaymentWorkoutButtonEventCopyWithImpl<$Res,
        _$_PaymentWorkoutButtonEventPayment>
    implements _$$_PaymentWorkoutButtonEventPaymentCopyWith<$Res> {
  __$$_PaymentWorkoutButtonEventPaymentCopyWithImpl(
      _$_PaymentWorkoutButtonEventPayment _value,
      $Res Function(_$_PaymentWorkoutButtonEventPayment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentType = null,
  }) {
    return _then(_$_PaymentWorkoutButtonEventPayment(
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentTypeEnum,
    ));
  }
}

/// @nodoc

class _$_PaymentWorkoutButtonEventPayment
    implements _PaymentWorkoutButtonEventPayment {
  const _$_PaymentWorkoutButtonEventPayment({required this.paymentType});

  @override
  final PaymentTypeEnum paymentType;

  @override
  String toString() {
    return 'PaymentWorkoutButtonEvent.payment(paymentType: $paymentType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentWorkoutButtonEventPayment &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentWorkoutButtonEventPaymentCopyWith<
          _$_PaymentWorkoutButtonEventPayment>
      get copyWith => __$$_PaymentWorkoutButtonEventPaymentCopyWithImpl<
          _$_PaymentWorkoutButtonEventPayment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentTypeEnum paymentType) payment,
    required TResult Function(
            bool paymentAvailable, UserExistEnum userHasFullData)
        checkAvailablePayment,
  }) {
    return payment(paymentType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentTypeEnum paymentType)? payment,
    TResult? Function(bool paymentAvailable, UserExistEnum userHasFullData)?
        checkAvailablePayment,
  }) {
    return payment?.call(paymentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentTypeEnum paymentType)? payment,
    TResult Function(bool paymentAvailable, UserExistEnum userHasFullData)?
        checkAvailablePayment,
    required TResult orElse(),
  }) {
    if (payment != null) {
      return payment(paymentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentWorkoutButtonEventPayment value) payment,
    required TResult Function(
            _PaymentWorkoutButtonEventCheckAvailablePayment value)
        checkAvailablePayment,
  }) {
    return payment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentWorkoutButtonEventPayment value)? payment,
    TResult? Function(_PaymentWorkoutButtonEventCheckAvailablePayment value)?
        checkAvailablePayment,
  }) {
    return payment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentWorkoutButtonEventPayment value)? payment,
    TResult Function(_PaymentWorkoutButtonEventCheckAvailablePayment value)?
        checkAvailablePayment,
    required TResult orElse(),
  }) {
    if (payment != null) {
      return payment(this);
    }
    return orElse();
  }
}

abstract class _PaymentWorkoutButtonEventPayment
    implements PaymentWorkoutButtonEvent {
  const factory _PaymentWorkoutButtonEventPayment(
          {required final PaymentTypeEnum paymentType}) =
      _$_PaymentWorkoutButtonEventPayment;

  PaymentTypeEnum get paymentType;
  @JsonKey(ignore: true)
  _$$_PaymentWorkoutButtonEventPaymentCopyWith<
          _$_PaymentWorkoutButtonEventPayment>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PaymentWorkoutButtonEventCheckAvailablePaymentCopyWith<
    $Res> {
  factory _$$_PaymentWorkoutButtonEventCheckAvailablePaymentCopyWith(
          _$_PaymentWorkoutButtonEventCheckAvailablePayment value,
          $Res Function(_$_PaymentWorkoutButtonEventCheckAvailablePayment)
              then) =
      __$$_PaymentWorkoutButtonEventCheckAvailablePaymentCopyWithImpl<$Res>;
  @useResult
  $Res call({bool paymentAvailable, UserExistEnum userHasFullData});
}

/// @nodoc
class __$$_PaymentWorkoutButtonEventCheckAvailablePaymentCopyWithImpl<$Res>
    extends _$PaymentWorkoutButtonEventCopyWithImpl<$Res,
        _$_PaymentWorkoutButtonEventCheckAvailablePayment>
    implements
        _$$_PaymentWorkoutButtonEventCheckAvailablePaymentCopyWith<$Res> {
  __$$_PaymentWorkoutButtonEventCheckAvailablePaymentCopyWithImpl(
      _$_PaymentWorkoutButtonEventCheckAvailablePayment _value,
      $Res Function(_$_PaymentWorkoutButtonEventCheckAvailablePayment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAvailable = null,
    Object? userHasFullData = null,
  }) {
    return _then(_$_PaymentWorkoutButtonEventCheckAvailablePayment(
      paymentAvailable: null == paymentAvailable
          ? _value.paymentAvailable
          : paymentAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      userHasFullData: null == userHasFullData
          ? _value.userHasFullData
          : userHasFullData // ignore: cast_nullable_to_non_nullable
              as UserExistEnum,
    ));
  }
}

/// @nodoc

class _$_PaymentWorkoutButtonEventCheckAvailablePayment
    implements _PaymentWorkoutButtonEventCheckAvailablePayment {
  const _$_PaymentWorkoutButtonEventCheckAvailablePayment(
      {required this.paymentAvailable, required this.userHasFullData});

  @override
  final bool paymentAvailable;
  @override
  final UserExistEnum userHasFullData;

  @override
  String toString() {
    return 'PaymentWorkoutButtonEvent.checkAvailablePayment(paymentAvailable: $paymentAvailable, userHasFullData: $userHasFullData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentWorkoutButtonEventCheckAvailablePayment &&
            (identical(other.paymentAvailable, paymentAvailable) ||
                other.paymentAvailable == paymentAvailable) &&
            (identical(other.userHasFullData, userHasFullData) ||
                other.userHasFullData == userHasFullData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, paymentAvailable, userHasFullData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentWorkoutButtonEventCheckAvailablePaymentCopyWith<
          _$_PaymentWorkoutButtonEventCheckAvailablePayment>
      get copyWith =>
          __$$_PaymentWorkoutButtonEventCheckAvailablePaymentCopyWithImpl<
                  _$_PaymentWorkoutButtonEventCheckAvailablePayment>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentTypeEnum paymentType) payment,
    required TResult Function(
            bool paymentAvailable, UserExistEnum userHasFullData)
        checkAvailablePayment,
  }) {
    return checkAvailablePayment(paymentAvailable, userHasFullData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentTypeEnum paymentType)? payment,
    TResult? Function(bool paymentAvailable, UserExistEnum userHasFullData)?
        checkAvailablePayment,
  }) {
    return checkAvailablePayment?.call(paymentAvailable, userHasFullData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentTypeEnum paymentType)? payment,
    TResult Function(bool paymentAvailable, UserExistEnum userHasFullData)?
        checkAvailablePayment,
    required TResult orElse(),
  }) {
    if (checkAvailablePayment != null) {
      return checkAvailablePayment(paymentAvailable, userHasFullData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentWorkoutButtonEventPayment value) payment,
    required TResult Function(
            _PaymentWorkoutButtonEventCheckAvailablePayment value)
        checkAvailablePayment,
  }) {
    return checkAvailablePayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentWorkoutButtonEventPayment value)? payment,
    TResult? Function(_PaymentWorkoutButtonEventCheckAvailablePayment value)?
        checkAvailablePayment,
  }) {
    return checkAvailablePayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentWorkoutButtonEventPayment value)? payment,
    TResult Function(_PaymentWorkoutButtonEventCheckAvailablePayment value)?
        checkAvailablePayment,
    required TResult orElse(),
  }) {
    if (checkAvailablePayment != null) {
      return checkAvailablePayment(this);
    }
    return orElse();
  }
}

abstract class _PaymentWorkoutButtonEventCheckAvailablePayment
    implements PaymentWorkoutButtonEvent {
  const factory _PaymentWorkoutButtonEventCheckAvailablePayment(
          {required final bool paymentAvailable,
          required final UserExistEnum userHasFullData}) =
      _$_PaymentWorkoutButtonEventCheckAvailablePayment;

  bool get paymentAvailable;
  UserExistEnum get userHasFullData;
  @JsonKey(ignore: true)
  _$$_PaymentWorkoutButtonEventCheckAvailablePaymentCopyWith<
          _$_PaymentWorkoutButtonEventCheckAvailablePayment>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentWorkoutButtonState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool paymentAvailable, UserExistEnum userHasFullData)
        initial,
    required TResult Function(
            PaymentTypeEnum paymentType, Workout workout, String? paymentLink)
        loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool paymentAvailable, UserExistEnum userHasFullData)?
        initial,
    TResult? Function(
            PaymentTypeEnum paymentType, Workout workout, String? paymentLink)?
        loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool paymentAvailable, UserExistEnum userHasFullData)?
        initial,
    TResult Function(
            PaymentTypeEnum paymentType, Workout workout, String? paymentLink)?
        loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentWorkoutButtonStateInitial value) initial,
    required TResult Function(_PaymentWorkoutButtonStateLoaded value) loaded,
    required TResult Function(_PaymentWorkoutButtonStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentWorkoutButtonStateInitial value)? initial,
    TResult? Function(_PaymentWorkoutButtonStateLoaded value)? loaded,
    TResult? Function(_PaymentWorkoutButtonStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentWorkoutButtonStateInitial value)? initial,
    TResult Function(_PaymentWorkoutButtonStateLoaded value)? loaded,
    TResult Function(_PaymentWorkoutButtonStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentWorkoutButtonStateCopyWith<$Res> {
  factory $PaymentWorkoutButtonStateCopyWith(PaymentWorkoutButtonState value,
          $Res Function(PaymentWorkoutButtonState) then) =
      _$PaymentWorkoutButtonStateCopyWithImpl<$Res, PaymentWorkoutButtonState>;
}

/// @nodoc
class _$PaymentWorkoutButtonStateCopyWithImpl<$Res,
        $Val extends PaymentWorkoutButtonState>
    implements $PaymentWorkoutButtonStateCopyWith<$Res> {
  _$PaymentWorkoutButtonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PaymentWorkoutButtonStateInitialCopyWith<$Res> {
  factory _$$_PaymentWorkoutButtonStateInitialCopyWith(
          _$_PaymentWorkoutButtonStateInitial value,
          $Res Function(_$_PaymentWorkoutButtonStateInitial) then) =
      __$$_PaymentWorkoutButtonStateInitialCopyWithImpl<$Res>;
  @useResult
  $Res call({bool paymentAvailable, UserExistEnum userHasFullData});
}

/// @nodoc
class __$$_PaymentWorkoutButtonStateInitialCopyWithImpl<$Res>
    extends _$PaymentWorkoutButtonStateCopyWithImpl<$Res,
        _$_PaymentWorkoutButtonStateInitial>
    implements _$$_PaymentWorkoutButtonStateInitialCopyWith<$Res> {
  __$$_PaymentWorkoutButtonStateInitialCopyWithImpl(
      _$_PaymentWorkoutButtonStateInitial _value,
      $Res Function(_$_PaymentWorkoutButtonStateInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAvailable = null,
    Object? userHasFullData = null,
  }) {
    return _then(_$_PaymentWorkoutButtonStateInitial(
      paymentAvailable: null == paymentAvailable
          ? _value.paymentAvailable
          : paymentAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      userHasFullData: null == userHasFullData
          ? _value.userHasFullData
          : userHasFullData // ignore: cast_nullable_to_non_nullable
              as UserExistEnum,
    ));
  }
}

/// @nodoc

class _$_PaymentWorkoutButtonStateInitial
    implements _PaymentWorkoutButtonStateInitial {
  const _$_PaymentWorkoutButtonStateInitial(
      {this.paymentAvailable = false,
      this.userHasFullData = UserExistEnum.none});

  @override
  @JsonKey()
  final bool paymentAvailable;
  @override
  @JsonKey()
  final UserExistEnum userHasFullData;

  @override
  String toString() {
    return 'PaymentWorkoutButtonState.initial(paymentAvailable: $paymentAvailable, userHasFullData: $userHasFullData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentWorkoutButtonStateInitial &&
            (identical(other.paymentAvailable, paymentAvailable) ||
                other.paymentAvailable == paymentAvailable) &&
            (identical(other.userHasFullData, userHasFullData) ||
                other.userHasFullData == userHasFullData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, paymentAvailable, userHasFullData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentWorkoutButtonStateInitialCopyWith<
          _$_PaymentWorkoutButtonStateInitial>
      get copyWith => __$$_PaymentWorkoutButtonStateInitialCopyWithImpl<
          _$_PaymentWorkoutButtonStateInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool paymentAvailable, UserExistEnum userHasFullData)
        initial,
    required TResult Function(
            PaymentTypeEnum paymentType, Workout workout, String? paymentLink)
        loaded,
    required TResult Function(String error) error,
  }) {
    return initial(paymentAvailable, userHasFullData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool paymentAvailable, UserExistEnum userHasFullData)?
        initial,
    TResult? Function(
            PaymentTypeEnum paymentType, Workout workout, String? paymentLink)?
        loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call(paymentAvailable, userHasFullData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool paymentAvailable, UserExistEnum userHasFullData)?
        initial,
    TResult Function(
            PaymentTypeEnum paymentType, Workout workout, String? paymentLink)?
        loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(paymentAvailable, userHasFullData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentWorkoutButtonStateInitial value) initial,
    required TResult Function(_PaymentWorkoutButtonStateLoaded value) loaded,
    required TResult Function(_PaymentWorkoutButtonStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentWorkoutButtonStateInitial value)? initial,
    TResult? Function(_PaymentWorkoutButtonStateLoaded value)? loaded,
    TResult? Function(_PaymentWorkoutButtonStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentWorkoutButtonStateInitial value)? initial,
    TResult Function(_PaymentWorkoutButtonStateLoaded value)? loaded,
    TResult Function(_PaymentWorkoutButtonStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PaymentWorkoutButtonStateInitial
    implements PaymentWorkoutButtonState {
  const factory _PaymentWorkoutButtonStateInitial(
          {final bool paymentAvailable, final UserExistEnum userHasFullData}) =
      _$_PaymentWorkoutButtonStateInitial;

  bool get paymentAvailable;
  UserExistEnum get userHasFullData;
  @JsonKey(ignore: true)
  _$$_PaymentWorkoutButtonStateInitialCopyWith<
          _$_PaymentWorkoutButtonStateInitial>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PaymentWorkoutButtonStateLoadedCopyWith<$Res> {
  factory _$$_PaymentWorkoutButtonStateLoadedCopyWith(
          _$_PaymentWorkoutButtonStateLoaded value,
          $Res Function(_$_PaymentWorkoutButtonStateLoaded) then) =
      __$$_PaymentWorkoutButtonStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {PaymentTypeEnum paymentType, Workout workout, String? paymentLink});

  $WorkoutCopyWith<$Res> get workout;
}

/// @nodoc
class __$$_PaymentWorkoutButtonStateLoadedCopyWithImpl<$Res>
    extends _$PaymentWorkoutButtonStateCopyWithImpl<$Res,
        _$_PaymentWorkoutButtonStateLoaded>
    implements _$$_PaymentWorkoutButtonStateLoadedCopyWith<$Res> {
  __$$_PaymentWorkoutButtonStateLoadedCopyWithImpl(
      _$_PaymentWorkoutButtonStateLoaded _value,
      $Res Function(_$_PaymentWorkoutButtonStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentType = null,
    Object? workout = null,
    Object? paymentLink = freezed,
  }) {
    return _then(_$_PaymentWorkoutButtonStateLoaded(
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentTypeEnum,
      workout: null == workout
          ? _value.workout
          : workout // ignore: cast_nullable_to_non_nullable
              as Workout,
      paymentLink: freezed == paymentLink
          ? _value.paymentLink
          : paymentLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkoutCopyWith<$Res> get workout {
    return $WorkoutCopyWith<$Res>(_value.workout, (value) {
      return _then(_value.copyWith(workout: value));
    });
  }
}

/// @nodoc

class _$_PaymentWorkoutButtonStateLoaded
    implements _PaymentWorkoutButtonStateLoaded {
  const _$_PaymentWorkoutButtonStateLoaded(
      {required this.paymentType, required this.workout, this.paymentLink});

  @override
  final PaymentTypeEnum paymentType;
  @override
  final Workout workout;
  @override
  final String? paymentLink;

  @override
  String toString() {
    return 'PaymentWorkoutButtonState.loaded(paymentType: $paymentType, workout: $workout, paymentLink: $paymentLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentWorkoutButtonStateLoaded &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.workout, workout) || other.workout == workout) &&
            (identical(other.paymentLink, paymentLink) ||
                other.paymentLink == paymentLink));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, paymentType, workout, paymentLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentWorkoutButtonStateLoadedCopyWith<
          _$_PaymentWorkoutButtonStateLoaded>
      get copyWith => __$$_PaymentWorkoutButtonStateLoadedCopyWithImpl<
          _$_PaymentWorkoutButtonStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool paymentAvailable, UserExistEnum userHasFullData)
        initial,
    required TResult Function(
            PaymentTypeEnum paymentType, Workout workout, String? paymentLink)
        loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(paymentType, workout, paymentLink);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool paymentAvailable, UserExistEnum userHasFullData)?
        initial,
    TResult? Function(
            PaymentTypeEnum paymentType, Workout workout, String? paymentLink)?
        loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(paymentType, workout, paymentLink);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool paymentAvailable, UserExistEnum userHasFullData)?
        initial,
    TResult Function(
            PaymentTypeEnum paymentType, Workout workout, String? paymentLink)?
        loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(paymentType, workout, paymentLink);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentWorkoutButtonStateInitial value) initial,
    required TResult Function(_PaymentWorkoutButtonStateLoaded value) loaded,
    required TResult Function(_PaymentWorkoutButtonStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentWorkoutButtonStateInitial value)? initial,
    TResult? Function(_PaymentWorkoutButtonStateLoaded value)? loaded,
    TResult? Function(_PaymentWorkoutButtonStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentWorkoutButtonStateInitial value)? initial,
    TResult Function(_PaymentWorkoutButtonStateLoaded value)? loaded,
    TResult Function(_PaymentWorkoutButtonStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _PaymentWorkoutButtonStateLoaded
    implements PaymentWorkoutButtonState {
  const factory _PaymentWorkoutButtonStateLoaded(
      {required final PaymentTypeEnum paymentType,
      required final Workout workout,
      final String? paymentLink}) = _$_PaymentWorkoutButtonStateLoaded;

  PaymentTypeEnum get paymentType;
  Workout get workout;
  String? get paymentLink;
  @JsonKey(ignore: true)
  _$$_PaymentWorkoutButtonStateLoadedCopyWith<
          _$_PaymentWorkoutButtonStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PaymentWorkoutButtonStateErrorCopyWith<$Res> {
  factory _$$_PaymentWorkoutButtonStateErrorCopyWith(
          _$_PaymentWorkoutButtonStateError value,
          $Res Function(_$_PaymentWorkoutButtonStateError) then) =
      __$$_PaymentWorkoutButtonStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_PaymentWorkoutButtonStateErrorCopyWithImpl<$Res>
    extends _$PaymentWorkoutButtonStateCopyWithImpl<$Res,
        _$_PaymentWorkoutButtonStateError>
    implements _$$_PaymentWorkoutButtonStateErrorCopyWith<$Res> {
  __$$_PaymentWorkoutButtonStateErrorCopyWithImpl(
      _$_PaymentWorkoutButtonStateError _value,
      $Res Function(_$_PaymentWorkoutButtonStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_PaymentWorkoutButtonStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PaymentWorkoutButtonStateError
    implements _PaymentWorkoutButtonStateError {
  const _$_PaymentWorkoutButtonStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'PaymentWorkoutButtonState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentWorkoutButtonStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentWorkoutButtonStateErrorCopyWith<_$_PaymentWorkoutButtonStateError>
      get copyWith => __$$_PaymentWorkoutButtonStateErrorCopyWithImpl<
          _$_PaymentWorkoutButtonStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool paymentAvailable, UserExistEnum userHasFullData)
        initial,
    required TResult Function(
            PaymentTypeEnum paymentType, Workout workout, String? paymentLink)
        loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool paymentAvailable, UserExistEnum userHasFullData)?
        initial,
    TResult? Function(
            PaymentTypeEnum paymentType, Workout workout, String? paymentLink)?
        loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool paymentAvailable, UserExistEnum userHasFullData)?
        initial,
    TResult Function(
            PaymentTypeEnum paymentType, Workout workout, String? paymentLink)?
        loaded,
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
    required TResult Function(_PaymentWorkoutButtonStateInitial value) initial,
    required TResult Function(_PaymentWorkoutButtonStateLoaded value) loaded,
    required TResult Function(_PaymentWorkoutButtonStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentWorkoutButtonStateInitial value)? initial,
    TResult? Function(_PaymentWorkoutButtonStateLoaded value)? loaded,
    TResult? Function(_PaymentWorkoutButtonStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentWorkoutButtonStateInitial value)? initial,
    TResult Function(_PaymentWorkoutButtonStateLoaded value)? loaded,
    TResult Function(_PaymentWorkoutButtonStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _PaymentWorkoutButtonStateError
    implements PaymentWorkoutButtonState {
  const factory _PaymentWorkoutButtonStateError({required final String error}) =
      _$_PaymentWorkoutButtonStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_PaymentWorkoutButtonStateErrorCopyWith<_$_PaymentWorkoutButtonStateError>
      get copyWith => throw _privateConstructorUsedError;
}
