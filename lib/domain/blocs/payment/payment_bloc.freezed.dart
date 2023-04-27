// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentStatusEnum paymentStatus,
            PushNotificationsEnum pushNotifications)
        paymentCompleted,
    required TResult Function() dropState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusEnum paymentStatus,
            PushNotificationsEnum pushNotifications)?
        paymentCompleted,
    TResult? Function()? dropState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusEnum paymentStatus,
            PushNotificationsEnum pushNotifications)?
        paymentCompleted,
    TResult Function()? dropState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentEventPaymentCompleted value)
        paymentCompleted,
    required TResult Function(_PaymentEventDropState value) dropState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentEventPaymentCompleted value)? paymentCompleted,
    TResult? Function(_PaymentEventDropState value)? dropState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentEventPaymentCompleted value)? paymentCompleted,
    TResult Function(_PaymentEventDropState value)? dropState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res, PaymentEvent>;
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res, $Val extends PaymentEvent>
    implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PaymentEventPaymentCompletedCopyWith<$Res> {
  factory _$$_PaymentEventPaymentCompletedCopyWith(
          _$_PaymentEventPaymentCompleted value,
          $Res Function(_$_PaymentEventPaymentCompleted) then) =
      __$$_PaymentEventPaymentCompletedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {PaymentStatusEnum paymentStatus,
      PushNotificationsEnum pushNotifications});
}

/// @nodoc
class __$$_PaymentEventPaymentCompletedCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$_PaymentEventPaymentCompleted>
    implements _$$_PaymentEventPaymentCompletedCopyWith<$Res> {
  __$$_PaymentEventPaymentCompletedCopyWithImpl(
      _$_PaymentEventPaymentCompleted _value,
      $Res Function(_$_PaymentEventPaymentCompleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentStatus = null,
    Object? pushNotifications = null,
  }) {
    return _then(_$_PaymentEventPaymentCompleted(
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatusEnum,
      pushNotifications: null == pushNotifications
          ? _value.pushNotifications
          : pushNotifications // ignore: cast_nullable_to_non_nullable
              as PushNotificationsEnum,
    ));
  }
}

/// @nodoc

class _$_PaymentEventPaymentCompleted implements _PaymentEventPaymentCompleted {
  const _$_PaymentEventPaymentCompleted(
      {required this.paymentStatus, required this.pushNotifications});

  @override
  final PaymentStatusEnum paymentStatus;
  @override
  final PushNotificationsEnum pushNotifications;

  @override
  String toString() {
    return 'PaymentEvent.paymentCompleted(paymentStatus: $paymentStatus, pushNotifications: $pushNotifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentEventPaymentCompleted &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.pushNotifications, pushNotifications) ||
                other.pushNotifications == pushNotifications));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, paymentStatus, pushNotifications);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentEventPaymentCompletedCopyWith<_$_PaymentEventPaymentCompleted>
      get copyWith => __$$_PaymentEventPaymentCompletedCopyWithImpl<
          _$_PaymentEventPaymentCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentStatusEnum paymentStatus,
            PushNotificationsEnum pushNotifications)
        paymentCompleted,
    required TResult Function() dropState,
  }) {
    return paymentCompleted(paymentStatus, pushNotifications);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusEnum paymentStatus,
            PushNotificationsEnum pushNotifications)?
        paymentCompleted,
    TResult? Function()? dropState,
  }) {
    return paymentCompleted?.call(paymentStatus, pushNotifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusEnum paymentStatus,
            PushNotificationsEnum pushNotifications)?
        paymentCompleted,
    TResult Function()? dropState,
    required TResult orElse(),
  }) {
    if (paymentCompleted != null) {
      return paymentCompleted(paymentStatus, pushNotifications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentEventPaymentCompleted value)
        paymentCompleted,
    required TResult Function(_PaymentEventDropState value) dropState,
  }) {
    return paymentCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentEventPaymentCompleted value)? paymentCompleted,
    TResult? Function(_PaymentEventDropState value)? dropState,
  }) {
    return paymentCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentEventPaymentCompleted value)? paymentCompleted,
    TResult Function(_PaymentEventDropState value)? dropState,
    required TResult orElse(),
  }) {
    if (paymentCompleted != null) {
      return paymentCompleted(this);
    }
    return orElse();
  }
}

abstract class _PaymentEventPaymentCompleted implements PaymentEvent {
  const factory _PaymentEventPaymentCompleted(
          {required final PaymentStatusEnum paymentStatus,
          required final PushNotificationsEnum pushNotifications}) =
      _$_PaymentEventPaymentCompleted;

  PaymentStatusEnum get paymentStatus;
  PushNotificationsEnum get pushNotifications;
  @JsonKey(ignore: true)
  _$$_PaymentEventPaymentCompletedCopyWith<_$_PaymentEventPaymentCompleted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PaymentEventDropStateCopyWith<$Res> {
  factory _$$_PaymentEventDropStateCopyWith(_$_PaymentEventDropState value,
          $Res Function(_$_PaymentEventDropState) then) =
      __$$_PaymentEventDropStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PaymentEventDropStateCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$_PaymentEventDropState>
    implements _$$_PaymentEventDropStateCopyWith<$Res> {
  __$$_PaymentEventDropStateCopyWithImpl(_$_PaymentEventDropState _value,
      $Res Function(_$_PaymentEventDropState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PaymentEventDropState implements _PaymentEventDropState {
  const _$_PaymentEventDropState();

  @override
  String toString() {
    return 'PaymentEvent.dropState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PaymentEventDropState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentStatusEnum paymentStatus,
            PushNotificationsEnum pushNotifications)
        paymentCompleted,
    required TResult Function() dropState,
  }) {
    return dropState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStatusEnum paymentStatus,
            PushNotificationsEnum pushNotifications)?
        paymentCompleted,
    TResult? Function()? dropState,
  }) {
    return dropState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStatusEnum paymentStatus,
            PushNotificationsEnum pushNotifications)?
        paymentCompleted,
    TResult Function()? dropState,
    required TResult orElse(),
  }) {
    if (dropState != null) {
      return dropState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentEventPaymentCompleted value)
        paymentCompleted,
    required TResult Function(_PaymentEventDropState value) dropState,
  }) {
    return dropState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentEventPaymentCompleted value)? paymentCompleted,
    TResult? Function(_PaymentEventDropState value)? dropState,
  }) {
    return dropState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentEventPaymentCompleted value)? paymentCompleted,
    TResult Function(_PaymentEventDropState value)? dropState,
    required TResult orElse(),
  }) {
    if (dropState != null) {
      return dropState(this);
    }
    return orElse();
  }
}

abstract class _PaymentEventDropState implements PaymentEvent {
  const factory _PaymentEventDropState() = _$_PaymentEventDropState;
}

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PaymentStatusEnum paymentStatus) paymentBatch,
    required TResult Function(PaymentStatusEnum paymentStatus) paymentWorkout,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PaymentStatusEnum paymentStatus)? paymentBatch,
    TResult? Function(PaymentStatusEnum paymentStatus)? paymentWorkout,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PaymentStatusEnum paymentStatus)? paymentBatch,
    TResult Function(PaymentStatusEnum paymentStatus)? paymentWorkout,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentStateInitial value) initial,
    required TResult Function(_PaymentStatePaymentBatch value) paymentBatch,
    required TResult Function(_PaymentStatePaymentWorkout value) paymentWorkout,
    required TResult Function(_PaymentStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentStateInitial value)? initial,
    TResult? Function(_PaymentStatePaymentBatch value)? paymentBatch,
    TResult? Function(_PaymentStatePaymentWorkout value)? paymentWorkout,
    TResult? Function(_PaymentStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentStateInitial value)? initial,
    TResult Function(_PaymentStatePaymentBatch value)? paymentBatch,
    TResult Function(_PaymentStatePaymentWorkout value)? paymentWorkout,
    TResult Function(_PaymentStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PaymentStateInitialCopyWith<$Res> {
  factory _$$_PaymentStateInitialCopyWith(_$_PaymentStateInitial value,
          $Res Function(_$_PaymentStateInitial) then) =
      __$$_PaymentStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PaymentStateInitialCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_PaymentStateInitial>
    implements _$$_PaymentStateInitialCopyWith<$Res> {
  __$$_PaymentStateInitialCopyWithImpl(_$_PaymentStateInitial _value,
      $Res Function(_$_PaymentStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PaymentStateInitial implements _PaymentStateInitial {
  const _$_PaymentStateInitial();

  @override
  String toString() {
    return 'PaymentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PaymentStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PaymentStatusEnum paymentStatus) paymentBatch,
    required TResult Function(PaymentStatusEnum paymentStatus) paymentWorkout,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PaymentStatusEnum paymentStatus)? paymentBatch,
    TResult? Function(PaymentStatusEnum paymentStatus)? paymentWorkout,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PaymentStatusEnum paymentStatus)? paymentBatch,
    TResult Function(PaymentStatusEnum paymentStatus)? paymentWorkout,
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
    required TResult Function(_PaymentStateInitial value) initial,
    required TResult Function(_PaymentStatePaymentBatch value) paymentBatch,
    required TResult Function(_PaymentStatePaymentWorkout value) paymentWorkout,
    required TResult Function(_PaymentStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentStateInitial value)? initial,
    TResult? Function(_PaymentStatePaymentBatch value)? paymentBatch,
    TResult? Function(_PaymentStatePaymentWorkout value)? paymentWorkout,
    TResult? Function(_PaymentStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentStateInitial value)? initial,
    TResult Function(_PaymentStatePaymentBatch value)? paymentBatch,
    TResult Function(_PaymentStatePaymentWorkout value)? paymentWorkout,
    TResult Function(_PaymentStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PaymentStateInitial implements PaymentState {
  const factory _PaymentStateInitial() = _$_PaymentStateInitial;
}

/// @nodoc
abstract class _$$_PaymentStatePaymentBatchCopyWith<$Res> {
  factory _$$_PaymentStatePaymentBatchCopyWith(
          _$_PaymentStatePaymentBatch value,
          $Res Function(_$_PaymentStatePaymentBatch) then) =
      __$$_PaymentStatePaymentBatchCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentStatusEnum paymentStatus});
}

/// @nodoc
class __$$_PaymentStatePaymentBatchCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_PaymentStatePaymentBatch>
    implements _$$_PaymentStatePaymentBatchCopyWith<$Res> {
  __$$_PaymentStatePaymentBatchCopyWithImpl(_$_PaymentStatePaymentBatch _value,
      $Res Function(_$_PaymentStatePaymentBatch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentStatus = null,
  }) {
    return _then(_$_PaymentStatePaymentBatch(
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatusEnum,
    ));
  }
}

/// @nodoc

class _$_PaymentStatePaymentBatch implements _PaymentStatePaymentBatch {
  const _$_PaymentStatePaymentBatch({required this.paymentStatus});

  @override
  final PaymentStatusEnum paymentStatus;

  @override
  String toString() {
    return 'PaymentState.paymentBatch(paymentStatus: $paymentStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentStatePaymentBatch &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentStatePaymentBatchCopyWith<_$_PaymentStatePaymentBatch>
      get copyWith => __$$_PaymentStatePaymentBatchCopyWithImpl<
          _$_PaymentStatePaymentBatch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PaymentStatusEnum paymentStatus) paymentBatch,
    required TResult Function(PaymentStatusEnum paymentStatus) paymentWorkout,
    required TResult Function(String error) error,
  }) {
    return paymentBatch(paymentStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PaymentStatusEnum paymentStatus)? paymentBatch,
    TResult? Function(PaymentStatusEnum paymentStatus)? paymentWorkout,
    TResult? Function(String error)? error,
  }) {
    return paymentBatch?.call(paymentStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PaymentStatusEnum paymentStatus)? paymentBatch,
    TResult Function(PaymentStatusEnum paymentStatus)? paymentWorkout,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (paymentBatch != null) {
      return paymentBatch(paymentStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentStateInitial value) initial,
    required TResult Function(_PaymentStatePaymentBatch value) paymentBatch,
    required TResult Function(_PaymentStatePaymentWorkout value) paymentWorkout,
    required TResult Function(_PaymentStateError value) error,
  }) {
    return paymentBatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentStateInitial value)? initial,
    TResult? Function(_PaymentStatePaymentBatch value)? paymentBatch,
    TResult? Function(_PaymentStatePaymentWorkout value)? paymentWorkout,
    TResult? Function(_PaymentStateError value)? error,
  }) {
    return paymentBatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentStateInitial value)? initial,
    TResult Function(_PaymentStatePaymentBatch value)? paymentBatch,
    TResult Function(_PaymentStatePaymentWorkout value)? paymentWorkout,
    TResult Function(_PaymentStateError value)? error,
    required TResult orElse(),
  }) {
    if (paymentBatch != null) {
      return paymentBatch(this);
    }
    return orElse();
  }
}

abstract class _PaymentStatePaymentBatch implements PaymentState {
  const factory _PaymentStatePaymentBatch(
          {required final PaymentStatusEnum paymentStatus}) =
      _$_PaymentStatePaymentBatch;

  PaymentStatusEnum get paymentStatus;
  @JsonKey(ignore: true)
  _$$_PaymentStatePaymentBatchCopyWith<_$_PaymentStatePaymentBatch>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PaymentStatePaymentWorkoutCopyWith<$Res> {
  factory _$$_PaymentStatePaymentWorkoutCopyWith(
          _$_PaymentStatePaymentWorkout value,
          $Res Function(_$_PaymentStatePaymentWorkout) then) =
      __$$_PaymentStatePaymentWorkoutCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentStatusEnum paymentStatus});
}

/// @nodoc
class __$$_PaymentStatePaymentWorkoutCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_PaymentStatePaymentWorkout>
    implements _$$_PaymentStatePaymentWorkoutCopyWith<$Res> {
  __$$_PaymentStatePaymentWorkoutCopyWithImpl(
      _$_PaymentStatePaymentWorkout _value,
      $Res Function(_$_PaymentStatePaymentWorkout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentStatus = null,
  }) {
    return _then(_$_PaymentStatePaymentWorkout(
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatusEnum,
    ));
  }
}

/// @nodoc

class _$_PaymentStatePaymentWorkout implements _PaymentStatePaymentWorkout {
  const _$_PaymentStatePaymentWorkout({required this.paymentStatus});

  @override
  final PaymentStatusEnum paymentStatus;

  @override
  String toString() {
    return 'PaymentState.paymentWorkout(paymentStatus: $paymentStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentStatePaymentWorkout &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentStatePaymentWorkoutCopyWith<_$_PaymentStatePaymentWorkout>
      get copyWith => __$$_PaymentStatePaymentWorkoutCopyWithImpl<
          _$_PaymentStatePaymentWorkout>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PaymentStatusEnum paymentStatus) paymentBatch,
    required TResult Function(PaymentStatusEnum paymentStatus) paymentWorkout,
    required TResult Function(String error) error,
  }) {
    return paymentWorkout(paymentStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PaymentStatusEnum paymentStatus)? paymentBatch,
    TResult? Function(PaymentStatusEnum paymentStatus)? paymentWorkout,
    TResult? Function(String error)? error,
  }) {
    return paymentWorkout?.call(paymentStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PaymentStatusEnum paymentStatus)? paymentBatch,
    TResult Function(PaymentStatusEnum paymentStatus)? paymentWorkout,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (paymentWorkout != null) {
      return paymentWorkout(paymentStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentStateInitial value) initial,
    required TResult Function(_PaymentStatePaymentBatch value) paymentBatch,
    required TResult Function(_PaymentStatePaymentWorkout value) paymentWorkout,
    required TResult Function(_PaymentStateError value) error,
  }) {
    return paymentWorkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentStateInitial value)? initial,
    TResult? Function(_PaymentStatePaymentBatch value)? paymentBatch,
    TResult? Function(_PaymentStatePaymentWorkout value)? paymentWorkout,
    TResult? Function(_PaymentStateError value)? error,
  }) {
    return paymentWorkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentStateInitial value)? initial,
    TResult Function(_PaymentStatePaymentBatch value)? paymentBatch,
    TResult Function(_PaymentStatePaymentWorkout value)? paymentWorkout,
    TResult Function(_PaymentStateError value)? error,
    required TResult orElse(),
  }) {
    if (paymentWorkout != null) {
      return paymentWorkout(this);
    }
    return orElse();
  }
}

abstract class _PaymentStatePaymentWorkout implements PaymentState {
  const factory _PaymentStatePaymentWorkout(
          {required final PaymentStatusEnum paymentStatus}) =
      _$_PaymentStatePaymentWorkout;

  PaymentStatusEnum get paymentStatus;
  @JsonKey(ignore: true)
  _$$_PaymentStatePaymentWorkoutCopyWith<_$_PaymentStatePaymentWorkout>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PaymentStateErrorCopyWith<$Res> {
  factory _$$_PaymentStateErrorCopyWith(_$_PaymentStateError value,
          $Res Function(_$_PaymentStateError) then) =
      __$$_PaymentStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_PaymentStateErrorCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_PaymentStateError>
    implements _$$_PaymentStateErrorCopyWith<$Res> {
  __$$_PaymentStateErrorCopyWithImpl(
      _$_PaymentStateError _value, $Res Function(_$_PaymentStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_PaymentStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PaymentStateError implements _PaymentStateError {
  const _$_PaymentStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'PaymentState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentStateErrorCopyWith<_$_PaymentStateError> get copyWith =>
      __$$_PaymentStateErrorCopyWithImpl<_$_PaymentStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PaymentStatusEnum paymentStatus) paymentBatch,
    required TResult Function(PaymentStatusEnum paymentStatus) paymentWorkout,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PaymentStatusEnum paymentStatus)? paymentBatch,
    TResult? Function(PaymentStatusEnum paymentStatus)? paymentWorkout,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PaymentStatusEnum paymentStatus)? paymentBatch,
    TResult Function(PaymentStatusEnum paymentStatus)? paymentWorkout,
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
    required TResult Function(_PaymentStateInitial value) initial,
    required TResult Function(_PaymentStatePaymentBatch value) paymentBatch,
    required TResult Function(_PaymentStatePaymentWorkout value) paymentWorkout,
    required TResult Function(_PaymentStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentStateInitial value)? initial,
    TResult? Function(_PaymentStatePaymentBatch value)? paymentBatch,
    TResult? Function(_PaymentStatePaymentWorkout value)? paymentWorkout,
    TResult? Function(_PaymentStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentStateInitial value)? initial,
    TResult Function(_PaymentStatePaymentBatch value)? paymentBatch,
    TResult Function(_PaymentStatePaymentWorkout value)? paymentWorkout,
    TResult Function(_PaymentStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _PaymentStateError implements PaymentState {
  const factory _PaymentStateError({required final String error}) =
      _$_PaymentStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_PaymentStateErrorCopyWith<_$_PaymentStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
