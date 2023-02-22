// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(RemoteMessage message)
        onChangeWorkoutNotification,
    required TResult Function(RemoteMessage message)
        onPaymentWorkoutNotification,
    required TResult Function(RemoteMessage message) onPaymentBatchNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(RemoteMessage message)? onChangeWorkoutNotification,
    TResult? Function(RemoteMessage message)? onPaymentWorkoutNotification,
    TResult? Function(RemoteMessage message)? onPaymentBatchNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RemoteMessage message)? onChangeWorkoutNotification,
    TResult Function(RemoteMessage message)? onPaymentWorkoutNotification,
    TResult Function(RemoteMessage message)? onPaymentBatchNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnChangeWorkoutNotification value)
        onChangeWorkoutNotification,
    required TResult Function(_OnPaymentWorkoutNotification value)
        onPaymentWorkoutNotification,
    required TResult Function(_OnPaymentBatchNotification value)
        onPaymentBatchNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnChangeWorkoutNotification value)?
        onChangeWorkoutNotification,
    TResult? Function(_OnPaymentWorkoutNotification value)?
        onPaymentWorkoutNotification,
    TResult? Function(_OnPaymentBatchNotification value)?
        onPaymentBatchNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnChangeWorkoutNotification value)?
        onChangeWorkoutNotification,
    TResult Function(_OnPaymentWorkoutNotification value)?
        onPaymentWorkoutNotification,
    TResult Function(_OnPaymentBatchNotification value)?
        onPaymentBatchNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsEventCopyWith<$Res> {
  factory $NotificationsEventCopyWith(
          NotificationsEvent value, $Res Function(NotificationsEvent) then) =
      _$NotificationsEventCopyWithImpl<$Res, NotificationsEvent>;
}

/// @nodoc
class _$NotificationsEventCopyWithImpl<$Res, $Val extends NotificationsEvent>
    implements $NotificationsEventCopyWith<$Res> {
  _$NotificationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'NotificationsEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(RemoteMessage message)
        onChangeWorkoutNotification,
    required TResult Function(RemoteMessage message)
        onPaymentWorkoutNotification,
    required TResult Function(RemoteMessage message) onPaymentBatchNotification,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(RemoteMessage message)? onChangeWorkoutNotification,
    TResult? Function(RemoteMessage message)? onPaymentWorkoutNotification,
    TResult? Function(RemoteMessage message)? onPaymentBatchNotification,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RemoteMessage message)? onChangeWorkoutNotification,
    TResult Function(RemoteMessage message)? onPaymentWorkoutNotification,
    TResult Function(RemoteMessage message)? onPaymentBatchNotification,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnChangeWorkoutNotification value)
        onChangeWorkoutNotification,
    required TResult Function(_OnPaymentWorkoutNotification value)
        onPaymentWorkoutNotification,
    required TResult Function(_OnPaymentBatchNotification value)
        onPaymentBatchNotification,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnChangeWorkoutNotification value)?
        onChangeWorkoutNotification,
    TResult? Function(_OnPaymentWorkoutNotification value)?
        onPaymentWorkoutNotification,
    TResult? Function(_OnPaymentBatchNotification value)?
        onPaymentBatchNotification,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnChangeWorkoutNotification value)?
        onChangeWorkoutNotification,
    TResult Function(_OnPaymentWorkoutNotification value)?
        onPaymentWorkoutNotification,
    TResult Function(_OnPaymentBatchNotification value)?
        onPaymentBatchNotification,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements NotificationsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_OnChangeWorkoutNotificationCopyWith<$Res> {
  factory _$$_OnChangeWorkoutNotificationCopyWith(
          _$_OnChangeWorkoutNotification value,
          $Res Function(_$_OnChangeWorkoutNotification) then) =
      __$$_OnChangeWorkoutNotificationCopyWithImpl<$Res>;
  @useResult
  $Res call({RemoteMessage message});
}

/// @nodoc
class __$$_OnChangeWorkoutNotificationCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res,
        _$_OnChangeWorkoutNotification>
    implements _$$_OnChangeWorkoutNotificationCopyWith<$Res> {
  __$$_OnChangeWorkoutNotificationCopyWithImpl(
      _$_OnChangeWorkoutNotification _value,
      $Res Function(_$_OnChangeWorkoutNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_OnChangeWorkoutNotification(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as RemoteMessage,
    ));
  }
}

/// @nodoc

class _$_OnChangeWorkoutNotification implements _OnChangeWorkoutNotification {
  const _$_OnChangeWorkoutNotification({required this.message});

  @override
  final RemoteMessage message;

  @override
  String toString() {
    return 'NotificationsEvent.onChangeWorkoutNotification(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnChangeWorkoutNotification &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnChangeWorkoutNotificationCopyWith<_$_OnChangeWorkoutNotification>
      get copyWith => __$$_OnChangeWorkoutNotificationCopyWithImpl<
          _$_OnChangeWorkoutNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(RemoteMessage message)
        onChangeWorkoutNotification,
    required TResult Function(RemoteMessage message)
        onPaymentWorkoutNotification,
    required TResult Function(RemoteMessage message) onPaymentBatchNotification,
  }) {
    return onChangeWorkoutNotification(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(RemoteMessage message)? onChangeWorkoutNotification,
    TResult? Function(RemoteMessage message)? onPaymentWorkoutNotification,
    TResult? Function(RemoteMessage message)? onPaymentBatchNotification,
  }) {
    return onChangeWorkoutNotification?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RemoteMessage message)? onChangeWorkoutNotification,
    TResult Function(RemoteMessage message)? onPaymentWorkoutNotification,
    TResult Function(RemoteMessage message)? onPaymentBatchNotification,
    required TResult orElse(),
  }) {
    if (onChangeWorkoutNotification != null) {
      return onChangeWorkoutNotification(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnChangeWorkoutNotification value)
        onChangeWorkoutNotification,
    required TResult Function(_OnPaymentWorkoutNotification value)
        onPaymentWorkoutNotification,
    required TResult Function(_OnPaymentBatchNotification value)
        onPaymentBatchNotification,
  }) {
    return onChangeWorkoutNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnChangeWorkoutNotification value)?
        onChangeWorkoutNotification,
    TResult? Function(_OnPaymentWorkoutNotification value)?
        onPaymentWorkoutNotification,
    TResult? Function(_OnPaymentBatchNotification value)?
        onPaymentBatchNotification,
  }) {
    return onChangeWorkoutNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnChangeWorkoutNotification value)?
        onChangeWorkoutNotification,
    TResult Function(_OnPaymentWorkoutNotification value)?
        onPaymentWorkoutNotification,
    TResult Function(_OnPaymentBatchNotification value)?
        onPaymentBatchNotification,
    required TResult orElse(),
  }) {
    if (onChangeWorkoutNotification != null) {
      return onChangeWorkoutNotification(this);
    }
    return orElse();
  }
}

abstract class _OnChangeWorkoutNotification implements NotificationsEvent {
  const factory _OnChangeWorkoutNotification(
      {required final RemoteMessage message}) = _$_OnChangeWorkoutNotification;

  RemoteMessage get message;
  @JsonKey(ignore: true)
  _$$_OnChangeWorkoutNotificationCopyWith<_$_OnChangeWorkoutNotification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnPaymentWorkoutNotificationCopyWith<$Res> {
  factory _$$_OnPaymentWorkoutNotificationCopyWith(
          _$_OnPaymentWorkoutNotification value,
          $Res Function(_$_OnPaymentWorkoutNotification) then) =
      __$$_OnPaymentWorkoutNotificationCopyWithImpl<$Res>;
  @useResult
  $Res call({RemoteMessage message});
}

/// @nodoc
class __$$_OnPaymentWorkoutNotificationCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res,
        _$_OnPaymentWorkoutNotification>
    implements _$$_OnPaymentWorkoutNotificationCopyWith<$Res> {
  __$$_OnPaymentWorkoutNotificationCopyWithImpl(
      _$_OnPaymentWorkoutNotification _value,
      $Res Function(_$_OnPaymentWorkoutNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_OnPaymentWorkoutNotification(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as RemoteMessage,
    ));
  }
}

/// @nodoc

class _$_OnPaymentWorkoutNotification implements _OnPaymentWorkoutNotification {
  const _$_OnPaymentWorkoutNotification({required this.message});

  @override
  final RemoteMessage message;

  @override
  String toString() {
    return 'NotificationsEvent.onPaymentWorkoutNotification(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnPaymentWorkoutNotification &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnPaymentWorkoutNotificationCopyWith<_$_OnPaymentWorkoutNotification>
      get copyWith => __$$_OnPaymentWorkoutNotificationCopyWithImpl<
          _$_OnPaymentWorkoutNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(RemoteMessage message)
        onChangeWorkoutNotification,
    required TResult Function(RemoteMessage message)
        onPaymentWorkoutNotification,
    required TResult Function(RemoteMessage message) onPaymentBatchNotification,
  }) {
    return onPaymentWorkoutNotification(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(RemoteMessage message)? onChangeWorkoutNotification,
    TResult? Function(RemoteMessage message)? onPaymentWorkoutNotification,
    TResult? Function(RemoteMessage message)? onPaymentBatchNotification,
  }) {
    return onPaymentWorkoutNotification?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RemoteMessage message)? onChangeWorkoutNotification,
    TResult Function(RemoteMessage message)? onPaymentWorkoutNotification,
    TResult Function(RemoteMessage message)? onPaymentBatchNotification,
    required TResult orElse(),
  }) {
    if (onPaymentWorkoutNotification != null) {
      return onPaymentWorkoutNotification(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnChangeWorkoutNotification value)
        onChangeWorkoutNotification,
    required TResult Function(_OnPaymentWorkoutNotification value)
        onPaymentWorkoutNotification,
    required TResult Function(_OnPaymentBatchNotification value)
        onPaymentBatchNotification,
  }) {
    return onPaymentWorkoutNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnChangeWorkoutNotification value)?
        onChangeWorkoutNotification,
    TResult? Function(_OnPaymentWorkoutNotification value)?
        onPaymentWorkoutNotification,
    TResult? Function(_OnPaymentBatchNotification value)?
        onPaymentBatchNotification,
  }) {
    return onPaymentWorkoutNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnChangeWorkoutNotification value)?
        onChangeWorkoutNotification,
    TResult Function(_OnPaymentWorkoutNotification value)?
        onPaymentWorkoutNotification,
    TResult Function(_OnPaymentBatchNotification value)?
        onPaymentBatchNotification,
    required TResult orElse(),
  }) {
    if (onPaymentWorkoutNotification != null) {
      return onPaymentWorkoutNotification(this);
    }
    return orElse();
  }
}

abstract class _OnPaymentWorkoutNotification implements NotificationsEvent {
  const factory _OnPaymentWorkoutNotification(
      {required final RemoteMessage message}) = _$_OnPaymentWorkoutNotification;

  RemoteMessage get message;
  @JsonKey(ignore: true)
  _$$_OnPaymentWorkoutNotificationCopyWith<_$_OnPaymentWorkoutNotification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnPaymentBatchNotificationCopyWith<$Res> {
  factory _$$_OnPaymentBatchNotificationCopyWith(
          _$_OnPaymentBatchNotification value,
          $Res Function(_$_OnPaymentBatchNotification) then) =
      __$$_OnPaymentBatchNotificationCopyWithImpl<$Res>;
  @useResult
  $Res call({RemoteMessage message});
}

/// @nodoc
class __$$_OnPaymentBatchNotificationCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res,
        _$_OnPaymentBatchNotification>
    implements _$$_OnPaymentBatchNotificationCopyWith<$Res> {
  __$$_OnPaymentBatchNotificationCopyWithImpl(
      _$_OnPaymentBatchNotification _value,
      $Res Function(_$_OnPaymentBatchNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_OnPaymentBatchNotification(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as RemoteMessage,
    ));
  }
}

/// @nodoc

class _$_OnPaymentBatchNotification implements _OnPaymentBatchNotification {
  const _$_OnPaymentBatchNotification({required this.message});

  @override
  final RemoteMessage message;

  @override
  String toString() {
    return 'NotificationsEvent.onPaymentBatchNotification(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnPaymentBatchNotification &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnPaymentBatchNotificationCopyWith<_$_OnPaymentBatchNotification>
      get copyWith => __$$_OnPaymentBatchNotificationCopyWithImpl<
          _$_OnPaymentBatchNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(RemoteMessage message)
        onChangeWorkoutNotification,
    required TResult Function(RemoteMessage message)
        onPaymentWorkoutNotification,
    required TResult Function(RemoteMessage message) onPaymentBatchNotification,
  }) {
    return onPaymentBatchNotification(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(RemoteMessage message)? onChangeWorkoutNotification,
    TResult? Function(RemoteMessage message)? onPaymentWorkoutNotification,
    TResult? Function(RemoteMessage message)? onPaymentBatchNotification,
  }) {
    return onPaymentBatchNotification?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(RemoteMessage message)? onChangeWorkoutNotification,
    TResult Function(RemoteMessage message)? onPaymentWorkoutNotification,
    TResult Function(RemoteMessage message)? onPaymentBatchNotification,
    required TResult orElse(),
  }) {
    if (onPaymentBatchNotification != null) {
      return onPaymentBatchNotification(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnChangeWorkoutNotification value)
        onChangeWorkoutNotification,
    required TResult Function(_OnPaymentWorkoutNotification value)
        onPaymentWorkoutNotification,
    required TResult Function(_OnPaymentBatchNotification value)
        onPaymentBatchNotification,
  }) {
    return onPaymentBatchNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnChangeWorkoutNotification value)?
        onChangeWorkoutNotification,
    TResult? Function(_OnPaymentWorkoutNotification value)?
        onPaymentWorkoutNotification,
    TResult? Function(_OnPaymentBatchNotification value)?
        onPaymentBatchNotification,
  }) {
    return onPaymentBatchNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnChangeWorkoutNotification value)?
        onChangeWorkoutNotification,
    TResult Function(_OnPaymentWorkoutNotification value)?
        onPaymentWorkoutNotification,
    TResult Function(_OnPaymentBatchNotification value)?
        onPaymentBatchNotification,
    required TResult orElse(),
  }) {
    if (onPaymentBatchNotification != null) {
      return onPaymentBatchNotification(this);
    }
    return orElse();
  }
}

abstract class _OnPaymentBatchNotification implements NotificationsEvent {
  const factory _OnPaymentBatchNotification(
      {required final RemoteMessage message}) = _$_OnPaymentBatchNotification;

  RemoteMessage get message;
  @JsonKey(ignore: true)
  _$$_OnPaymentBatchNotificationCopyWith<_$_OnPaymentBatchNotification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paymentBatchSuccess,
    required TResult Function() paymentBatchReject,
    required TResult Function() paymentWorkoutSuccess,
    required TResult Function() paymentWorkoutReject,
    required TResult Function() workoutStatusPlanned,
    required TResult Function() workoutStatusRS,
    required TResult Function() workoutStatusStarted,
    required TResult Function() workoutStatusRF,
    required TResult Function() workoutStatusFinished,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paymentBatchSuccess,
    TResult? Function()? paymentBatchReject,
    TResult? Function()? paymentWorkoutSuccess,
    TResult? Function()? paymentWorkoutReject,
    TResult? Function()? workoutStatusPlanned,
    TResult? Function()? workoutStatusRS,
    TResult? Function()? workoutStatusStarted,
    TResult? Function()? workoutStatusRF,
    TResult? Function()? workoutStatusFinished,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paymentBatchSuccess,
    TResult Function()? paymentBatchReject,
    TResult Function()? paymentWorkoutSuccess,
    TResult Function()? paymentWorkoutReject,
    TResult Function()? workoutStatusPlanned,
    TResult Function()? workoutStatusRS,
    TResult Function()? workoutStatusStarted,
    TResult Function()? workoutStatusRF,
    TResult Function()? workoutStatusFinished,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PaymentBatchSuccess value) paymentBatchSuccess,
    required TResult Function(_PaymentBatchReject value) paymentBatchReject,
    required TResult Function(_PaymentWorkoutSuccess value)
        paymentWorkoutSuccess,
    required TResult Function(_PaymentWorkoutReject value) paymentWorkoutReject,
    required TResult Function(_WorkoutStatusPlanned value) workoutStatusPlanned,
    required TResult Function(_WorkoutStatusRS value) workoutStatusRS,
    required TResult Function(_WorkoutStatusStarted value) workoutStatusStarted,
    required TResult Function(_WorkoutStatusRF value) workoutStatusRF,
    required TResult Function(_WorkoutStatusFinished value)
        workoutStatusFinished,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PaymentBatchSuccess value)? paymentBatchSuccess,
    TResult? Function(_PaymentBatchReject value)? paymentBatchReject,
    TResult? Function(_PaymentWorkoutSuccess value)? paymentWorkoutSuccess,
    TResult? Function(_PaymentWorkoutReject value)? paymentWorkoutReject,
    TResult? Function(_WorkoutStatusPlanned value)? workoutStatusPlanned,
    TResult? Function(_WorkoutStatusRS value)? workoutStatusRS,
    TResult? Function(_WorkoutStatusStarted value)? workoutStatusStarted,
    TResult? Function(_WorkoutStatusRF value)? workoutStatusRF,
    TResult? Function(_WorkoutStatusFinished value)? workoutStatusFinished,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PaymentBatchSuccess value)? paymentBatchSuccess,
    TResult Function(_PaymentBatchReject value)? paymentBatchReject,
    TResult Function(_PaymentWorkoutSuccess value)? paymentWorkoutSuccess,
    TResult Function(_PaymentWorkoutReject value)? paymentWorkoutReject,
    TResult Function(_WorkoutStatusPlanned value)? workoutStatusPlanned,
    TResult Function(_WorkoutStatusRS value)? workoutStatusRS,
    TResult Function(_WorkoutStatusStarted value)? workoutStatusStarted,
    TResult Function(_WorkoutStatusRF value)? workoutStatusRF,
    TResult Function(_WorkoutStatusFinished value)? workoutStatusFinished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsStateCopyWith<$Res> {
  factory $NotificationsStateCopyWith(
          NotificationsState value, $Res Function(NotificationsState) then) =
      _$NotificationsStateCopyWithImpl<$Res, NotificationsState>;
}

/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res, $Val extends NotificationsState>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NotificationsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paymentBatchSuccess,
    required TResult Function() paymentBatchReject,
    required TResult Function() paymentWorkoutSuccess,
    required TResult Function() paymentWorkoutReject,
    required TResult Function() workoutStatusPlanned,
    required TResult Function() workoutStatusRS,
    required TResult Function() workoutStatusStarted,
    required TResult Function() workoutStatusRF,
    required TResult Function() workoutStatusFinished,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paymentBatchSuccess,
    TResult? Function()? paymentBatchReject,
    TResult? Function()? paymentWorkoutSuccess,
    TResult? Function()? paymentWorkoutReject,
    TResult? Function()? workoutStatusPlanned,
    TResult? Function()? workoutStatusRS,
    TResult? Function()? workoutStatusStarted,
    TResult? Function()? workoutStatusRF,
    TResult? Function()? workoutStatusFinished,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paymentBatchSuccess,
    TResult Function()? paymentBatchReject,
    TResult Function()? paymentWorkoutSuccess,
    TResult Function()? paymentWorkoutReject,
    TResult Function()? workoutStatusPlanned,
    TResult Function()? workoutStatusRS,
    TResult Function()? workoutStatusStarted,
    TResult Function()? workoutStatusRF,
    TResult Function()? workoutStatusFinished,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_PaymentBatchSuccess value) paymentBatchSuccess,
    required TResult Function(_PaymentBatchReject value) paymentBatchReject,
    required TResult Function(_PaymentWorkoutSuccess value)
        paymentWorkoutSuccess,
    required TResult Function(_PaymentWorkoutReject value) paymentWorkoutReject,
    required TResult Function(_WorkoutStatusPlanned value) workoutStatusPlanned,
    required TResult Function(_WorkoutStatusRS value) workoutStatusRS,
    required TResult Function(_WorkoutStatusStarted value) workoutStatusStarted,
    required TResult Function(_WorkoutStatusRF value) workoutStatusRF,
    required TResult Function(_WorkoutStatusFinished value)
        workoutStatusFinished,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PaymentBatchSuccess value)? paymentBatchSuccess,
    TResult? Function(_PaymentBatchReject value)? paymentBatchReject,
    TResult? Function(_PaymentWorkoutSuccess value)? paymentWorkoutSuccess,
    TResult? Function(_PaymentWorkoutReject value)? paymentWorkoutReject,
    TResult? Function(_WorkoutStatusPlanned value)? workoutStatusPlanned,
    TResult? Function(_WorkoutStatusRS value)? workoutStatusRS,
    TResult? Function(_WorkoutStatusStarted value)? workoutStatusStarted,
    TResult? Function(_WorkoutStatusRF value)? workoutStatusRF,
    TResult? Function(_WorkoutStatusFinished value)? workoutStatusFinished,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PaymentBatchSuccess value)? paymentBatchSuccess,
    TResult Function(_PaymentBatchReject value)? paymentBatchReject,
    TResult Function(_PaymentWorkoutSuccess value)? paymentWorkoutSuccess,
    TResult Function(_PaymentWorkoutReject value)? paymentWorkoutReject,
    TResult Function(_WorkoutStatusPlanned value)? workoutStatusPlanned,
    TResult Function(_WorkoutStatusRS value)? workoutStatusRS,
    TResult Function(_WorkoutStatusStarted value)? workoutStatusStarted,
    TResult Function(_WorkoutStatusRF value)? workoutStatusRF,
    TResult Function(_WorkoutStatusFinished value)? workoutStatusFinished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NotificationsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_PaymentBatchSuccessCopyWith<$Res> {
  factory _$$_PaymentBatchSuccessCopyWith(_$_PaymentBatchSuccess value,
          $Res Function(_$_PaymentBatchSuccess) then) =
      __$$_PaymentBatchSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PaymentBatchSuccessCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$_PaymentBatchSuccess>
    implements _$$_PaymentBatchSuccessCopyWith<$Res> {
  __$$_PaymentBatchSuccessCopyWithImpl(_$_PaymentBatchSuccess _value,
      $Res Function(_$_PaymentBatchSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PaymentBatchSuccess implements _PaymentBatchSuccess {
  const _$_PaymentBatchSuccess();

  @override
  String toString() {
    return 'NotificationsState.paymentBatchSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PaymentBatchSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paymentBatchSuccess,
    required TResult Function() paymentBatchReject,
    required TResult Function() paymentWorkoutSuccess,
    required TResult Function() paymentWorkoutReject,
    required TResult Function() workoutStatusPlanned,
    required TResult Function() workoutStatusRS,
    required TResult Function() workoutStatusStarted,
    required TResult Function() workoutStatusRF,
    required TResult Function() workoutStatusFinished,
    required TResult Function(String error) error,
  }) {
    return paymentBatchSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paymentBatchSuccess,
    TResult? Function()? paymentBatchReject,
    TResult? Function()? paymentWorkoutSuccess,
    TResult? Function()? paymentWorkoutReject,
    TResult? Function()? workoutStatusPlanned,
    TResult? Function()? workoutStatusRS,
    TResult? Function()? workoutStatusStarted,
    TResult? Function()? workoutStatusRF,
    TResult? Function()? workoutStatusFinished,
    TResult? Function(String error)? error,
  }) {
    return paymentBatchSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paymentBatchSuccess,
    TResult Function()? paymentBatchReject,
    TResult Function()? paymentWorkoutSuccess,
    TResult Function()? paymentWorkoutReject,
    TResult Function()? workoutStatusPlanned,
    TResult Function()? workoutStatusRS,
    TResult Function()? workoutStatusStarted,
    TResult Function()? workoutStatusRF,
    TResult Function()? workoutStatusFinished,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (paymentBatchSuccess != null) {
      return paymentBatchSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PaymentBatchSuccess value) paymentBatchSuccess,
    required TResult Function(_PaymentBatchReject value) paymentBatchReject,
    required TResult Function(_PaymentWorkoutSuccess value)
        paymentWorkoutSuccess,
    required TResult Function(_PaymentWorkoutReject value) paymentWorkoutReject,
    required TResult Function(_WorkoutStatusPlanned value) workoutStatusPlanned,
    required TResult Function(_WorkoutStatusRS value) workoutStatusRS,
    required TResult Function(_WorkoutStatusStarted value) workoutStatusStarted,
    required TResult Function(_WorkoutStatusRF value) workoutStatusRF,
    required TResult Function(_WorkoutStatusFinished value)
        workoutStatusFinished,
    required TResult Function(_Error value) error,
  }) {
    return paymentBatchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PaymentBatchSuccess value)? paymentBatchSuccess,
    TResult? Function(_PaymentBatchReject value)? paymentBatchReject,
    TResult? Function(_PaymentWorkoutSuccess value)? paymentWorkoutSuccess,
    TResult? Function(_PaymentWorkoutReject value)? paymentWorkoutReject,
    TResult? Function(_WorkoutStatusPlanned value)? workoutStatusPlanned,
    TResult? Function(_WorkoutStatusRS value)? workoutStatusRS,
    TResult? Function(_WorkoutStatusStarted value)? workoutStatusStarted,
    TResult? Function(_WorkoutStatusRF value)? workoutStatusRF,
    TResult? Function(_WorkoutStatusFinished value)? workoutStatusFinished,
    TResult? Function(_Error value)? error,
  }) {
    return paymentBatchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PaymentBatchSuccess value)? paymentBatchSuccess,
    TResult Function(_PaymentBatchReject value)? paymentBatchReject,
    TResult Function(_PaymentWorkoutSuccess value)? paymentWorkoutSuccess,
    TResult Function(_PaymentWorkoutReject value)? paymentWorkoutReject,
    TResult Function(_WorkoutStatusPlanned value)? workoutStatusPlanned,
    TResult Function(_WorkoutStatusRS value)? workoutStatusRS,
    TResult Function(_WorkoutStatusStarted value)? workoutStatusStarted,
    TResult Function(_WorkoutStatusRF value)? workoutStatusRF,
    TResult Function(_WorkoutStatusFinished value)? workoutStatusFinished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (paymentBatchSuccess != null) {
      return paymentBatchSuccess(this);
    }
    return orElse();
  }
}

abstract class _PaymentBatchSuccess implements NotificationsState {
  const factory _PaymentBatchSuccess() = _$_PaymentBatchSuccess;
}

/// @nodoc
abstract class _$$_PaymentBatchRejectCopyWith<$Res> {
  factory _$$_PaymentBatchRejectCopyWith(_$_PaymentBatchReject value,
          $Res Function(_$_PaymentBatchReject) then) =
      __$$_PaymentBatchRejectCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PaymentBatchRejectCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$_PaymentBatchReject>
    implements _$$_PaymentBatchRejectCopyWith<$Res> {
  __$$_PaymentBatchRejectCopyWithImpl(
      _$_PaymentBatchReject _value, $Res Function(_$_PaymentBatchReject) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PaymentBatchReject implements _PaymentBatchReject {
  const _$_PaymentBatchReject();

  @override
  String toString() {
    return 'NotificationsState.paymentBatchReject()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PaymentBatchReject);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paymentBatchSuccess,
    required TResult Function() paymentBatchReject,
    required TResult Function() paymentWorkoutSuccess,
    required TResult Function() paymentWorkoutReject,
    required TResult Function() workoutStatusPlanned,
    required TResult Function() workoutStatusRS,
    required TResult Function() workoutStatusStarted,
    required TResult Function() workoutStatusRF,
    required TResult Function() workoutStatusFinished,
    required TResult Function(String error) error,
  }) {
    return paymentBatchReject();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paymentBatchSuccess,
    TResult? Function()? paymentBatchReject,
    TResult? Function()? paymentWorkoutSuccess,
    TResult? Function()? paymentWorkoutReject,
    TResult? Function()? workoutStatusPlanned,
    TResult? Function()? workoutStatusRS,
    TResult? Function()? workoutStatusStarted,
    TResult? Function()? workoutStatusRF,
    TResult? Function()? workoutStatusFinished,
    TResult? Function(String error)? error,
  }) {
    return paymentBatchReject?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paymentBatchSuccess,
    TResult Function()? paymentBatchReject,
    TResult Function()? paymentWorkoutSuccess,
    TResult Function()? paymentWorkoutReject,
    TResult Function()? workoutStatusPlanned,
    TResult Function()? workoutStatusRS,
    TResult Function()? workoutStatusStarted,
    TResult Function()? workoutStatusRF,
    TResult Function()? workoutStatusFinished,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (paymentBatchReject != null) {
      return paymentBatchReject();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PaymentBatchSuccess value) paymentBatchSuccess,
    required TResult Function(_PaymentBatchReject value) paymentBatchReject,
    required TResult Function(_PaymentWorkoutSuccess value)
        paymentWorkoutSuccess,
    required TResult Function(_PaymentWorkoutReject value) paymentWorkoutReject,
    required TResult Function(_WorkoutStatusPlanned value) workoutStatusPlanned,
    required TResult Function(_WorkoutStatusRS value) workoutStatusRS,
    required TResult Function(_WorkoutStatusStarted value) workoutStatusStarted,
    required TResult Function(_WorkoutStatusRF value) workoutStatusRF,
    required TResult Function(_WorkoutStatusFinished value)
        workoutStatusFinished,
    required TResult Function(_Error value) error,
  }) {
    return paymentBatchReject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PaymentBatchSuccess value)? paymentBatchSuccess,
    TResult? Function(_PaymentBatchReject value)? paymentBatchReject,
    TResult? Function(_PaymentWorkoutSuccess value)? paymentWorkoutSuccess,
    TResult? Function(_PaymentWorkoutReject value)? paymentWorkoutReject,
    TResult? Function(_WorkoutStatusPlanned value)? workoutStatusPlanned,
    TResult? Function(_WorkoutStatusRS value)? workoutStatusRS,
    TResult? Function(_WorkoutStatusStarted value)? workoutStatusStarted,
    TResult? Function(_WorkoutStatusRF value)? workoutStatusRF,
    TResult? Function(_WorkoutStatusFinished value)? workoutStatusFinished,
    TResult? Function(_Error value)? error,
  }) {
    return paymentBatchReject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PaymentBatchSuccess value)? paymentBatchSuccess,
    TResult Function(_PaymentBatchReject value)? paymentBatchReject,
    TResult Function(_PaymentWorkoutSuccess value)? paymentWorkoutSuccess,
    TResult Function(_PaymentWorkoutReject value)? paymentWorkoutReject,
    TResult Function(_WorkoutStatusPlanned value)? workoutStatusPlanned,
    TResult Function(_WorkoutStatusRS value)? workoutStatusRS,
    TResult Function(_WorkoutStatusStarted value)? workoutStatusStarted,
    TResult Function(_WorkoutStatusRF value)? workoutStatusRF,
    TResult Function(_WorkoutStatusFinished value)? workoutStatusFinished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (paymentBatchReject != null) {
      return paymentBatchReject(this);
    }
    return orElse();
  }
}

abstract class _PaymentBatchReject implements NotificationsState {
  const factory _PaymentBatchReject() = _$_PaymentBatchReject;
}

/// @nodoc
abstract class _$$_PaymentWorkoutSuccessCopyWith<$Res> {
  factory _$$_PaymentWorkoutSuccessCopyWith(_$_PaymentWorkoutSuccess value,
          $Res Function(_$_PaymentWorkoutSuccess) then) =
      __$$_PaymentWorkoutSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PaymentWorkoutSuccessCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$_PaymentWorkoutSuccess>
    implements _$$_PaymentWorkoutSuccessCopyWith<$Res> {
  __$$_PaymentWorkoutSuccessCopyWithImpl(_$_PaymentWorkoutSuccess _value,
      $Res Function(_$_PaymentWorkoutSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PaymentWorkoutSuccess implements _PaymentWorkoutSuccess {
  const _$_PaymentWorkoutSuccess();

  @override
  String toString() {
    return 'NotificationsState.paymentWorkoutSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PaymentWorkoutSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paymentBatchSuccess,
    required TResult Function() paymentBatchReject,
    required TResult Function() paymentWorkoutSuccess,
    required TResult Function() paymentWorkoutReject,
    required TResult Function() workoutStatusPlanned,
    required TResult Function() workoutStatusRS,
    required TResult Function() workoutStatusStarted,
    required TResult Function() workoutStatusRF,
    required TResult Function() workoutStatusFinished,
    required TResult Function(String error) error,
  }) {
    return paymentWorkoutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paymentBatchSuccess,
    TResult? Function()? paymentBatchReject,
    TResult? Function()? paymentWorkoutSuccess,
    TResult? Function()? paymentWorkoutReject,
    TResult? Function()? workoutStatusPlanned,
    TResult? Function()? workoutStatusRS,
    TResult? Function()? workoutStatusStarted,
    TResult? Function()? workoutStatusRF,
    TResult? Function()? workoutStatusFinished,
    TResult? Function(String error)? error,
  }) {
    return paymentWorkoutSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paymentBatchSuccess,
    TResult Function()? paymentBatchReject,
    TResult Function()? paymentWorkoutSuccess,
    TResult Function()? paymentWorkoutReject,
    TResult Function()? workoutStatusPlanned,
    TResult Function()? workoutStatusRS,
    TResult Function()? workoutStatusStarted,
    TResult Function()? workoutStatusRF,
    TResult Function()? workoutStatusFinished,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (paymentWorkoutSuccess != null) {
      return paymentWorkoutSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PaymentBatchSuccess value) paymentBatchSuccess,
    required TResult Function(_PaymentBatchReject value) paymentBatchReject,
    required TResult Function(_PaymentWorkoutSuccess value)
        paymentWorkoutSuccess,
    required TResult Function(_PaymentWorkoutReject value) paymentWorkoutReject,
    required TResult Function(_WorkoutStatusPlanned value) workoutStatusPlanned,
    required TResult Function(_WorkoutStatusRS value) workoutStatusRS,
    required TResult Function(_WorkoutStatusStarted value) workoutStatusStarted,
    required TResult Function(_WorkoutStatusRF value) workoutStatusRF,
    required TResult Function(_WorkoutStatusFinished value)
        workoutStatusFinished,
    required TResult Function(_Error value) error,
  }) {
    return paymentWorkoutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PaymentBatchSuccess value)? paymentBatchSuccess,
    TResult? Function(_PaymentBatchReject value)? paymentBatchReject,
    TResult? Function(_PaymentWorkoutSuccess value)? paymentWorkoutSuccess,
    TResult? Function(_PaymentWorkoutReject value)? paymentWorkoutReject,
    TResult? Function(_WorkoutStatusPlanned value)? workoutStatusPlanned,
    TResult? Function(_WorkoutStatusRS value)? workoutStatusRS,
    TResult? Function(_WorkoutStatusStarted value)? workoutStatusStarted,
    TResult? Function(_WorkoutStatusRF value)? workoutStatusRF,
    TResult? Function(_WorkoutStatusFinished value)? workoutStatusFinished,
    TResult? Function(_Error value)? error,
  }) {
    return paymentWorkoutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PaymentBatchSuccess value)? paymentBatchSuccess,
    TResult Function(_PaymentBatchReject value)? paymentBatchReject,
    TResult Function(_PaymentWorkoutSuccess value)? paymentWorkoutSuccess,
    TResult Function(_PaymentWorkoutReject value)? paymentWorkoutReject,
    TResult Function(_WorkoutStatusPlanned value)? workoutStatusPlanned,
    TResult Function(_WorkoutStatusRS value)? workoutStatusRS,
    TResult Function(_WorkoutStatusStarted value)? workoutStatusStarted,
    TResult Function(_WorkoutStatusRF value)? workoutStatusRF,
    TResult Function(_WorkoutStatusFinished value)? workoutStatusFinished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (paymentWorkoutSuccess != null) {
      return paymentWorkoutSuccess(this);
    }
    return orElse();
  }
}

abstract class _PaymentWorkoutSuccess implements NotificationsState {
  const factory _PaymentWorkoutSuccess() = _$_PaymentWorkoutSuccess;
}

/// @nodoc
abstract class _$$_PaymentWorkoutRejectCopyWith<$Res> {
  factory _$$_PaymentWorkoutRejectCopyWith(_$_PaymentWorkoutReject value,
          $Res Function(_$_PaymentWorkoutReject) then) =
      __$$_PaymentWorkoutRejectCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PaymentWorkoutRejectCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$_PaymentWorkoutReject>
    implements _$$_PaymentWorkoutRejectCopyWith<$Res> {
  __$$_PaymentWorkoutRejectCopyWithImpl(_$_PaymentWorkoutReject _value,
      $Res Function(_$_PaymentWorkoutReject) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PaymentWorkoutReject implements _PaymentWorkoutReject {
  const _$_PaymentWorkoutReject();

  @override
  String toString() {
    return 'NotificationsState.paymentWorkoutReject()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PaymentWorkoutReject);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paymentBatchSuccess,
    required TResult Function() paymentBatchReject,
    required TResult Function() paymentWorkoutSuccess,
    required TResult Function() paymentWorkoutReject,
    required TResult Function() workoutStatusPlanned,
    required TResult Function() workoutStatusRS,
    required TResult Function() workoutStatusStarted,
    required TResult Function() workoutStatusRF,
    required TResult Function() workoutStatusFinished,
    required TResult Function(String error) error,
  }) {
    return paymentWorkoutReject();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paymentBatchSuccess,
    TResult? Function()? paymentBatchReject,
    TResult? Function()? paymentWorkoutSuccess,
    TResult? Function()? paymentWorkoutReject,
    TResult? Function()? workoutStatusPlanned,
    TResult? Function()? workoutStatusRS,
    TResult? Function()? workoutStatusStarted,
    TResult? Function()? workoutStatusRF,
    TResult? Function()? workoutStatusFinished,
    TResult? Function(String error)? error,
  }) {
    return paymentWorkoutReject?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paymentBatchSuccess,
    TResult Function()? paymentBatchReject,
    TResult Function()? paymentWorkoutSuccess,
    TResult Function()? paymentWorkoutReject,
    TResult Function()? workoutStatusPlanned,
    TResult Function()? workoutStatusRS,
    TResult Function()? workoutStatusStarted,
    TResult Function()? workoutStatusRF,
    TResult Function()? workoutStatusFinished,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (paymentWorkoutReject != null) {
      return paymentWorkoutReject();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PaymentBatchSuccess value) paymentBatchSuccess,
    required TResult Function(_PaymentBatchReject value) paymentBatchReject,
    required TResult Function(_PaymentWorkoutSuccess value)
        paymentWorkoutSuccess,
    required TResult Function(_PaymentWorkoutReject value) paymentWorkoutReject,
    required TResult Function(_WorkoutStatusPlanned value) workoutStatusPlanned,
    required TResult Function(_WorkoutStatusRS value) workoutStatusRS,
    required TResult Function(_WorkoutStatusStarted value) workoutStatusStarted,
    required TResult Function(_WorkoutStatusRF value) workoutStatusRF,
    required TResult Function(_WorkoutStatusFinished value)
        workoutStatusFinished,
    required TResult Function(_Error value) error,
  }) {
    return paymentWorkoutReject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PaymentBatchSuccess value)? paymentBatchSuccess,
    TResult? Function(_PaymentBatchReject value)? paymentBatchReject,
    TResult? Function(_PaymentWorkoutSuccess value)? paymentWorkoutSuccess,
    TResult? Function(_PaymentWorkoutReject value)? paymentWorkoutReject,
    TResult? Function(_WorkoutStatusPlanned value)? workoutStatusPlanned,
    TResult? Function(_WorkoutStatusRS value)? workoutStatusRS,
    TResult? Function(_WorkoutStatusStarted value)? workoutStatusStarted,
    TResult? Function(_WorkoutStatusRF value)? workoutStatusRF,
    TResult? Function(_WorkoutStatusFinished value)? workoutStatusFinished,
    TResult? Function(_Error value)? error,
  }) {
    return paymentWorkoutReject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PaymentBatchSuccess value)? paymentBatchSuccess,
    TResult Function(_PaymentBatchReject value)? paymentBatchReject,
    TResult Function(_PaymentWorkoutSuccess value)? paymentWorkoutSuccess,
    TResult Function(_PaymentWorkoutReject value)? paymentWorkoutReject,
    TResult Function(_WorkoutStatusPlanned value)? workoutStatusPlanned,
    TResult Function(_WorkoutStatusRS value)? workoutStatusRS,
    TResult Function(_WorkoutStatusStarted value)? workoutStatusStarted,
    TResult Function(_WorkoutStatusRF value)? workoutStatusRF,
    TResult Function(_WorkoutStatusFinished value)? workoutStatusFinished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (paymentWorkoutReject != null) {
      return paymentWorkoutReject(this);
    }
    return orElse();
  }
}

abstract class _PaymentWorkoutReject implements NotificationsState {
  const factory _PaymentWorkoutReject() = _$_PaymentWorkoutReject;
}

/// @nodoc
abstract class _$$_WorkoutStatusPlannedCopyWith<$Res> {
  factory _$$_WorkoutStatusPlannedCopyWith(_$_WorkoutStatusPlanned value,
          $Res Function(_$_WorkoutStatusPlanned) then) =
      __$$_WorkoutStatusPlannedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WorkoutStatusPlannedCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$_WorkoutStatusPlanned>
    implements _$$_WorkoutStatusPlannedCopyWith<$Res> {
  __$$_WorkoutStatusPlannedCopyWithImpl(_$_WorkoutStatusPlanned _value,
      $Res Function(_$_WorkoutStatusPlanned) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WorkoutStatusPlanned implements _WorkoutStatusPlanned {
  const _$_WorkoutStatusPlanned();

  @override
  String toString() {
    return 'NotificationsState.workoutStatusPlanned()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WorkoutStatusPlanned);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paymentBatchSuccess,
    required TResult Function() paymentBatchReject,
    required TResult Function() paymentWorkoutSuccess,
    required TResult Function() paymentWorkoutReject,
    required TResult Function() workoutStatusPlanned,
    required TResult Function() workoutStatusRS,
    required TResult Function() workoutStatusStarted,
    required TResult Function() workoutStatusRF,
    required TResult Function() workoutStatusFinished,
    required TResult Function(String error) error,
  }) {
    return workoutStatusPlanned();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paymentBatchSuccess,
    TResult? Function()? paymentBatchReject,
    TResult? Function()? paymentWorkoutSuccess,
    TResult? Function()? paymentWorkoutReject,
    TResult? Function()? workoutStatusPlanned,
    TResult? Function()? workoutStatusRS,
    TResult? Function()? workoutStatusStarted,
    TResult? Function()? workoutStatusRF,
    TResult? Function()? workoutStatusFinished,
    TResult? Function(String error)? error,
  }) {
    return workoutStatusPlanned?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paymentBatchSuccess,
    TResult Function()? paymentBatchReject,
    TResult Function()? paymentWorkoutSuccess,
    TResult Function()? paymentWorkoutReject,
    TResult Function()? workoutStatusPlanned,
    TResult Function()? workoutStatusRS,
    TResult Function()? workoutStatusStarted,
    TResult Function()? workoutStatusRF,
    TResult Function()? workoutStatusFinished,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (workoutStatusPlanned != null) {
      return workoutStatusPlanned();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PaymentBatchSuccess value) paymentBatchSuccess,
    required TResult Function(_PaymentBatchReject value) paymentBatchReject,
    required TResult Function(_PaymentWorkoutSuccess value)
        paymentWorkoutSuccess,
    required TResult Function(_PaymentWorkoutReject value) paymentWorkoutReject,
    required TResult Function(_WorkoutStatusPlanned value) workoutStatusPlanned,
    required TResult Function(_WorkoutStatusRS value) workoutStatusRS,
    required TResult Function(_WorkoutStatusStarted value) workoutStatusStarted,
    required TResult Function(_WorkoutStatusRF value) workoutStatusRF,
    required TResult Function(_WorkoutStatusFinished value)
        workoutStatusFinished,
    required TResult Function(_Error value) error,
  }) {
    return workoutStatusPlanned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PaymentBatchSuccess value)? paymentBatchSuccess,
    TResult? Function(_PaymentBatchReject value)? paymentBatchReject,
    TResult? Function(_PaymentWorkoutSuccess value)? paymentWorkoutSuccess,
    TResult? Function(_PaymentWorkoutReject value)? paymentWorkoutReject,
    TResult? Function(_WorkoutStatusPlanned value)? workoutStatusPlanned,
    TResult? Function(_WorkoutStatusRS value)? workoutStatusRS,
    TResult? Function(_WorkoutStatusStarted value)? workoutStatusStarted,
    TResult? Function(_WorkoutStatusRF value)? workoutStatusRF,
    TResult? Function(_WorkoutStatusFinished value)? workoutStatusFinished,
    TResult? Function(_Error value)? error,
  }) {
    return workoutStatusPlanned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PaymentBatchSuccess value)? paymentBatchSuccess,
    TResult Function(_PaymentBatchReject value)? paymentBatchReject,
    TResult Function(_PaymentWorkoutSuccess value)? paymentWorkoutSuccess,
    TResult Function(_PaymentWorkoutReject value)? paymentWorkoutReject,
    TResult Function(_WorkoutStatusPlanned value)? workoutStatusPlanned,
    TResult Function(_WorkoutStatusRS value)? workoutStatusRS,
    TResult Function(_WorkoutStatusStarted value)? workoutStatusStarted,
    TResult Function(_WorkoutStatusRF value)? workoutStatusRF,
    TResult Function(_WorkoutStatusFinished value)? workoutStatusFinished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (workoutStatusPlanned != null) {
      return workoutStatusPlanned(this);
    }
    return orElse();
  }
}

abstract class _WorkoutStatusPlanned implements NotificationsState {
  const factory _WorkoutStatusPlanned() = _$_WorkoutStatusPlanned;
}

/// @nodoc
abstract class _$$_WorkoutStatusRSCopyWith<$Res> {
  factory _$$_WorkoutStatusRSCopyWith(
          _$_WorkoutStatusRS value, $Res Function(_$_WorkoutStatusRS) then) =
      __$$_WorkoutStatusRSCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WorkoutStatusRSCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$_WorkoutStatusRS>
    implements _$$_WorkoutStatusRSCopyWith<$Res> {
  __$$_WorkoutStatusRSCopyWithImpl(
      _$_WorkoutStatusRS _value, $Res Function(_$_WorkoutStatusRS) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WorkoutStatusRS implements _WorkoutStatusRS {
  const _$_WorkoutStatusRS();

  @override
  String toString() {
    return 'NotificationsState.workoutStatusRS()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WorkoutStatusRS);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paymentBatchSuccess,
    required TResult Function() paymentBatchReject,
    required TResult Function() paymentWorkoutSuccess,
    required TResult Function() paymentWorkoutReject,
    required TResult Function() workoutStatusPlanned,
    required TResult Function() workoutStatusRS,
    required TResult Function() workoutStatusStarted,
    required TResult Function() workoutStatusRF,
    required TResult Function() workoutStatusFinished,
    required TResult Function(String error) error,
  }) {
    return workoutStatusRS();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paymentBatchSuccess,
    TResult? Function()? paymentBatchReject,
    TResult? Function()? paymentWorkoutSuccess,
    TResult? Function()? paymentWorkoutReject,
    TResult? Function()? workoutStatusPlanned,
    TResult? Function()? workoutStatusRS,
    TResult? Function()? workoutStatusStarted,
    TResult? Function()? workoutStatusRF,
    TResult? Function()? workoutStatusFinished,
    TResult? Function(String error)? error,
  }) {
    return workoutStatusRS?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paymentBatchSuccess,
    TResult Function()? paymentBatchReject,
    TResult Function()? paymentWorkoutSuccess,
    TResult Function()? paymentWorkoutReject,
    TResult Function()? workoutStatusPlanned,
    TResult Function()? workoutStatusRS,
    TResult Function()? workoutStatusStarted,
    TResult Function()? workoutStatusRF,
    TResult Function()? workoutStatusFinished,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (workoutStatusRS != null) {
      return workoutStatusRS();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PaymentBatchSuccess value) paymentBatchSuccess,
    required TResult Function(_PaymentBatchReject value) paymentBatchReject,
    required TResult Function(_PaymentWorkoutSuccess value)
        paymentWorkoutSuccess,
    required TResult Function(_PaymentWorkoutReject value) paymentWorkoutReject,
    required TResult Function(_WorkoutStatusPlanned value) workoutStatusPlanned,
    required TResult Function(_WorkoutStatusRS value) workoutStatusRS,
    required TResult Function(_WorkoutStatusStarted value) workoutStatusStarted,
    required TResult Function(_WorkoutStatusRF value) workoutStatusRF,
    required TResult Function(_WorkoutStatusFinished value)
        workoutStatusFinished,
    required TResult Function(_Error value) error,
  }) {
    return workoutStatusRS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PaymentBatchSuccess value)? paymentBatchSuccess,
    TResult? Function(_PaymentBatchReject value)? paymentBatchReject,
    TResult? Function(_PaymentWorkoutSuccess value)? paymentWorkoutSuccess,
    TResult? Function(_PaymentWorkoutReject value)? paymentWorkoutReject,
    TResult? Function(_WorkoutStatusPlanned value)? workoutStatusPlanned,
    TResult? Function(_WorkoutStatusRS value)? workoutStatusRS,
    TResult? Function(_WorkoutStatusStarted value)? workoutStatusStarted,
    TResult? Function(_WorkoutStatusRF value)? workoutStatusRF,
    TResult? Function(_WorkoutStatusFinished value)? workoutStatusFinished,
    TResult? Function(_Error value)? error,
  }) {
    return workoutStatusRS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PaymentBatchSuccess value)? paymentBatchSuccess,
    TResult Function(_PaymentBatchReject value)? paymentBatchReject,
    TResult Function(_PaymentWorkoutSuccess value)? paymentWorkoutSuccess,
    TResult Function(_PaymentWorkoutReject value)? paymentWorkoutReject,
    TResult Function(_WorkoutStatusPlanned value)? workoutStatusPlanned,
    TResult Function(_WorkoutStatusRS value)? workoutStatusRS,
    TResult Function(_WorkoutStatusStarted value)? workoutStatusStarted,
    TResult Function(_WorkoutStatusRF value)? workoutStatusRF,
    TResult Function(_WorkoutStatusFinished value)? workoutStatusFinished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (workoutStatusRS != null) {
      return workoutStatusRS(this);
    }
    return orElse();
  }
}

abstract class _WorkoutStatusRS implements NotificationsState {
  const factory _WorkoutStatusRS() = _$_WorkoutStatusRS;
}

/// @nodoc
abstract class _$$_WorkoutStatusStartedCopyWith<$Res> {
  factory _$$_WorkoutStatusStartedCopyWith(_$_WorkoutStatusStarted value,
          $Res Function(_$_WorkoutStatusStarted) then) =
      __$$_WorkoutStatusStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WorkoutStatusStartedCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$_WorkoutStatusStarted>
    implements _$$_WorkoutStatusStartedCopyWith<$Res> {
  __$$_WorkoutStatusStartedCopyWithImpl(_$_WorkoutStatusStarted _value,
      $Res Function(_$_WorkoutStatusStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WorkoutStatusStarted implements _WorkoutStatusStarted {
  const _$_WorkoutStatusStarted();

  @override
  String toString() {
    return 'NotificationsState.workoutStatusStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WorkoutStatusStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paymentBatchSuccess,
    required TResult Function() paymentBatchReject,
    required TResult Function() paymentWorkoutSuccess,
    required TResult Function() paymentWorkoutReject,
    required TResult Function() workoutStatusPlanned,
    required TResult Function() workoutStatusRS,
    required TResult Function() workoutStatusStarted,
    required TResult Function() workoutStatusRF,
    required TResult Function() workoutStatusFinished,
    required TResult Function(String error) error,
  }) {
    return workoutStatusStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paymentBatchSuccess,
    TResult? Function()? paymentBatchReject,
    TResult? Function()? paymentWorkoutSuccess,
    TResult? Function()? paymentWorkoutReject,
    TResult? Function()? workoutStatusPlanned,
    TResult? Function()? workoutStatusRS,
    TResult? Function()? workoutStatusStarted,
    TResult? Function()? workoutStatusRF,
    TResult? Function()? workoutStatusFinished,
    TResult? Function(String error)? error,
  }) {
    return workoutStatusStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paymentBatchSuccess,
    TResult Function()? paymentBatchReject,
    TResult Function()? paymentWorkoutSuccess,
    TResult Function()? paymentWorkoutReject,
    TResult Function()? workoutStatusPlanned,
    TResult Function()? workoutStatusRS,
    TResult Function()? workoutStatusStarted,
    TResult Function()? workoutStatusRF,
    TResult Function()? workoutStatusFinished,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (workoutStatusStarted != null) {
      return workoutStatusStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PaymentBatchSuccess value) paymentBatchSuccess,
    required TResult Function(_PaymentBatchReject value) paymentBatchReject,
    required TResult Function(_PaymentWorkoutSuccess value)
        paymentWorkoutSuccess,
    required TResult Function(_PaymentWorkoutReject value) paymentWorkoutReject,
    required TResult Function(_WorkoutStatusPlanned value) workoutStatusPlanned,
    required TResult Function(_WorkoutStatusRS value) workoutStatusRS,
    required TResult Function(_WorkoutStatusStarted value) workoutStatusStarted,
    required TResult Function(_WorkoutStatusRF value) workoutStatusRF,
    required TResult Function(_WorkoutStatusFinished value)
        workoutStatusFinished,
    required TResult Function(_Error value) error,
  }) {
    return workoutStatusStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PaymentBatchSuccess value)? paymentBatchSuccess,
    TResult? Function(_PaymentBatchReject value)? paymentBatchReject,
    TResult? Function(_PaymentWorkoutSuccess value)? paymentWorkoutSuccess,
    TResult? Function(_PaymentWorkoutReject value)? paymentWorkoutReject,
    TResult? Function(_WorkoutStatusPlanned value)? workoutStatusPlanned,
    TResult? Function(_WorkoutStatusRS value)? workoutStatusRS,
    TResult? Function(_WorkoutStatusStarted value)? workoutStatusStarted,
    TResult? Function(_WorkoutStatusRF value)? workoutStatusRF,
    TResult? Function(_WorkoutStatusFinished value)? workoutStatusFinished,
    TResult? Function(_Error value)? error,
  }) {
    return workoutStatusStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PaymentBatchSuccess value)? paymentBatchSuccess,
    TResult Function(_PaymentBatchReject value)? paymentBatchReject,
    TResult Function(_PaymentWorkoutSuccess value)? paymentWorkoutSuccess,
    TResult Function(_PaymentWorkoutReject value)? paymentWorkoutReject,
    TResult Function(_WorkoutStatusPlanned value)? workoutStatusPlanned,
    TResult Function(_WorkoutStatusRS value)? workoutStatusRS,
    TResult Function(_WorkoutStatusStarted value)? workoutStatusStarted,
    TResult Function(_WorkoutStatusRF value)? workoutStatusRF,
    TResult Function(_WorkoutStatusFinished value)? workoutStatusFinished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (workoutStatusStarted != null) {
      return workoutStatusStarted(this);
    }
    return orElse();
  }
}

abstract class _WorkoutStatusStarted implements NotificationsState {
  const factory _WorkoutStatusStarted() = _$_WorkoutStatusStarted;
}

/// @nodoc
abstract class _$$_WorkoutStatusRFCopyWith<$Res> {
  factory _$$_WorkoutStatusRFCopyWith(
          _$_WorkoutStatusRF value, $Res Function(_$_WorkoutStatusRF) then) =
      __$$_WorkoutStatusRFCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WorkoutStatusRFCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$_WorkoutStatusRF>
    implements _$$_WorkoutStatusRFCopyWith<$Res> {
  __$$_WorkoutStatusRFCopyWithImpl(
      _$_WorkoutStatusRF _value, $Res Function(_$_WorkoutStatusRF) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WorkoutStatusRF implements _WorkoutStatusRF {
  const _$_WorkoutStatusRF();

  @override
  String toString() {
    return 'NotificationsState.workoutStatusRF()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WorkoutStatusRF);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paymentBatchSuccess,
    required TResult Function() paymentBatchReject,
    required TResult Function() paymentWorkoutSuccess,
    required TResult Function() paymentWorkoutReject,
    required TResult Function() workoutStatusPlanned,
    required TResult Function() workoutStatusRS,
    required TResult Function() workoutStatusStarted,
    required TResult Function() workoutStatusRF,
    required TResult Function() workoutStatusFinished,
    required TResult Function(String error) error,
  }) {
    return workoutStatusRF();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paymentBatchSuccess,
    TResult? Function()? paymentBatchReject,
    TResult? Function()? paymentWorkoutSuccess,
    TResult? Function()? paymentWorkoutReject,
    TResult? Function()? workoutStatusPlanned,
    TResult? Function()? workoutStatusRS,
    TResult? Function()? workoutStatusStarted,
    TResult? Function()? workoutStatusRF,
    TResult? Function()? workoutStatusFinished,
    TResult? Function(String error)? error,
  }) {
    return workoutStatusRF?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paymentBatchSuccess,
    TResult Function()? paymentBatchReject,
    TResult Function()? paymentWorkoutSuccess,
    TResult Function()? paymentWorkoutReject,
    TResult Function()? workoutStatusPlanned,
    TResult Function()? workoutStatusRS,
    TResult Function()? workoutStatusStarted,
    TResult Function()? workoutStatusRF,
    TResult Function()? workoutStatusFinished,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (workoutStatusRF != null) {
      return workoutStatusRF();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PaymentBatchSuccess value) paymentBatchSuccess,
    required TResult Function(_PaymentBatchReject value) paymentBatchReject,
    required TResult Function(_PaymentWorkoutSuccess value)
        paymentWorkoutSuccess,
    required TResult Function(_PaymentWorkoutReject value) paymentWorkoutReject,
    required TResult Function(_WorkoutStatusPlanned value) workoutStatusPlanned,
    required TResult Function(_WorkoutStatusRS value) workoutStatusRS,
    required TResult Function(_WorkoutStatusStarted value) workoutStatusStarted,
    required TResult Function(_WorkoutStatusRF value) workoutStatusRF,
    required TResult Function(_WorkoutStatusFinished value)
        workoutStatusFinished,
    required TResult Function(_Error value) error,
  }) {
    return workoutStatusRF(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PaymentBatchSuccess value)? paymentBatchSuccess,
    TResult? Function(_PaymentBatchReject value)? paymentBatchReject,
    TResult? Function(_PaymentWorkoutSuccess value)? paymentWorkoutSuccess,
    TResult? Function(_PaymentWorkoutReject value)? paymentWorkoutReject,
    TResult? Function(_WorkoutStatusPlanned value)? workoutStatusPlanned,
    TResult? Function(_WorkoutStatusRS value)? workoutStatusRS,
    TResult? Function(_WorkoutStatusStarted value)? workoutStatusStarted,
    TResult? Function(_WorkoutStatusRF value)? workoutStatusRF,
    TResult? Function(_WorkoutStatusFinished value)? workoutStatusFinished,
    TResult? Function(_Error value)? error,
  }) {
    return workoutStatusRF?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PaymentBatchSuccess value)? paymentBatchSuccess,
    TResult Function(_PaymentBatchReject value)? paymentBatchReject,
    TResult Function(_PaymentWorkoutSuccess value)? paymentWorkoutSuccess,
    TResult Function(_PaymentWorkoutReject value)? paymentWorkoutReject,
    TResult Function(_WorkoutStatusPlanned value)? workoutStatusPlanned,
    TResult Function(_WorkoutStatusRS value)? workoutStatusRS,
    TResult Function(_WorkoutStatusStarted value)? workoutStatusStarted,
    TResult Function(_WorkoutStatusRF value)? workoutStatusRF,
    TResult Function(_WorkoutStatusFinished value)? workoutStatusFinished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (workoutStatusRF != null) {
      return workoutStatusRF(this);
    }
    return orElse();
  }
}

abstract class _WorkoutStatusRF implements NotificationsState {
  const factory _WorkoutStatusRF() = _$_WorkoutStatusRF;
}

/// @nodoc
abstract class _$$_WorkoutStatusFinishedCopyWith<$Res> {
  factory _$$_WorkoutStatusFinishedCopyWith(_$_WorkoutStatusFinished value,
          $Res Function(_$_WorkoutStatusFinished) then) =
      __$$_WorkoutStatusFinishedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WorkoutStatusFinishedCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$_WorkoutStatusFinished>
    implements _$$_WorkoutStatusFinishedCopyWith<$Res> {
  __$$_WorkoutStatusFinishedCopyWithImpl(_$_WorkoutStatusFinished _value,
      $Res Function(_$_WorkoutStatusFinished) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WorkoutStatusFinished implements _WorkoutStatusFinished {
  const _$_WorkoutStatusFinished();

  @override
  String toString() {
    return 'NotificationsState.workoutStatusFinished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WorkoutStatusFinished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paymentBatchSuccess,
    required TResult Function() paymentBatchReject,
    required TResult Function() paymentWorkoutSuccess,
    required TResult Function() paymentWorkoutReject,
    required TResult Function() workoutStatusPlanned,
    required TResult Function() workoutStatusRS,
    required TResult Function() workoutStatusStarted,
    required TResult Function() workoutStatusRF,
    required TResult Function() workoutStatusFinished,
    required TResult Function(String error) error,
  }) {
    return workoutStatusFinished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paymentBatchSuccess,
    TResult? Function()? paymentBatchReject,
    TResult? Function()? paymentWorkoutSuccess,
    TResult? Function()? paymentWorkoutReject,
    TResult? Function()? workoutStatusPlanned,
    TResult? Function()? workoutStatusRS,
    TResult? Function()? workoutStatusStarted,
    TResult? Function()? workoutStatusRF,
    TResult? Function()? workoutStatusFinished,
    TResult? Function(String error)? error,
  }) {
    return workoutStatusFinished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paymentBatchSuccess,
    TResult Function()? paymentBatchReject,
    TResult Function()? paymentWorkoutSuccess,
    TResult Function()? paymentWorkoutReject,
    TResult Function()? workoutStatusPlanned,
    TResult Function()? workoutStatusRS,
    TResult Function()? workoutStatusStarted,
    TResult Function()? workoutStatusRF,
    TResult Function()? workoutStatusFinished,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (workoutStatusFinished != null) {
      return workoutStatusFinished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PaymentBatchSuccess value) paymentBatchSuccess,
    required TResult Function(_PaymentBatchReject value) paymentBatchReject,
    required TResult Function(_PaymentWorkoutSuccess value)
        paymentWorkoutSuccess,
    required TResult Function(_PaymentWorkoutReject value) paymentWorkoutReject,
    required TResult Function(_WorkoutStatusPlanned value) workoutStatusPlanned,
    required TResult Function(_WorkoutStatusRS value) workoutStatusRS,
    required TResult Function(_WorkoutStatusStarted value) workoutStatusStarted,
    required TResult Function(_WorkoutStatusRF value) workoutStatusRF,
    required TResult Function(_WorkoutStatusFinished value)
        workoutStatusFinished,
    required TResult Function(_Error value) error,
  }) {
    return workoutStatusFinished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PaymentBatchSuccess value)? paymentBatchSuccess,
    TResult? Function(_PaymentBatchReject value)? paymentBatchReject,
    TResult? Function(_PaymentWorkoutSuccess value)? paymentWorkoutSuccess,
    TResult? Function(_PaymentWorkoutReject value)? paymentWorkoutReject,
    TResult? Function(_WorkoutStatusPlanned value)? workoutStatusPlanned,
    TResult? Function(_WorkoutStatusRS value)? workoutStatusRS,
    TResult? Function(_WorkoutStatusStarted value)? workoutStatusStarted,
    TResult? Function(_WorkoutStatusRF value)? workoutStatusRF,
    TResult? Function(_WorkoutStatusFinished value)? workoutStatusFinished,
    TResult? Function(_Error value)? error,
  }) {
    return workoutStatusFinished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PaymentBatchSuccess value)? paymentBatchSuccess,
    TResult Function(_PaymentBatchReject value)? paymentBatchReject,
    TResult Function(_PaymentWorkoutSuccess value)? paymentWorkoutSuccess,
    TResult Function(_PaymentWorkoutReject value)? paymentWorkoutReject,
    TResult Function(_WorkoutStatusPlanned value)? workoutStatusPlanned,
    TResult Function(_WorkoutStatusRS value)? workoutStatusRS,
    TResult Function(_WorkoutStatusStarted value)? workoutStatusStarted,
    TResult Function(_WorkoutStatusRF value)? workoutStatusRF,
    TResult Function(_WorkoutStatusFinished value)? workoutStatusFinished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (workoutStatusFinished != null) {
      return workoutStatusFinished(this);
    }
    return orElse();
  }
}

abstract class _WorkoutStatusFinished implements NotificationsState {
  const factory _WorkoutStatusFinished() = _$_WorkoutStatusFinished;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Error(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'NotificationsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paymentBatchSuccess,
    required TResult Function() paymentBatchReject,
    required TResult Function() paymentWorkoutSuccess,
    required TResult Function() paymentWorkoutReject,
    required TResult Function() workoutStatusPlanned,
    required TResult Function() workoutStatusRS,
    required TResult Function() workoutStatusStarted,
    required TResult Function() workoutStatusRF,
    required TResult Function() workoutStatusFinished,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? paymentBatchSuccess,
    TResult? Function()? paymentBatchReject,
    TResult? Function()? paymentWorkoutSuccess,
    TResult? Function()? paymentWorkoutReject,
    TResult? Function()? workoutStatusPlanned,
    TResult? Function()? workoutStatusRS,
    TResult? Function()? workoutStatusStarted,
    TResult? Function()? workoutStatusRF,
    TResult? Function()? workoutStatusFinished,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paymentBatchSuccess,
    TResult Function()? paymentBatchReject,
    TResult Function()? paymentWorkoutSuccess,
    TResult Function()? paymentWorkoutReject,
    TResult Function()? workoutStatusPlanned,
    TResult Function()? workoutStatusRS,
    TResult Function()? workoutStatusStarted,
    TResult Function()? workoutStatusRF,
    TResult Function()? workoutStatusFinished,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_PaymentBatchSuccess value) paymentBatchSuccess,
    required TResult Function(_PaymentBatchReject value) paymentBatchReject,
    required TResult Function(_PaymentWorkoutSuccess value)
        paymentWorkoutSuccess,
    required TResult Function(_PaymentWorkoutReject value) paymentWorkoutReject,
    required TResult Function(_WorkoutStatusPlanned value) workoutStatusPlanned,
    required TResult Function(_WorkoutStatusRS value) workoutStatusRS,
    required TResult Function(_WorkoutStatusStarted value) workoutStatusStarted,
    required TResult Function(_WorkoutStatusRF value) workoutStatusRF,
    required TResult Function(_WorkoutStatusFinished value)
        workoutStatusFinished,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PaymentBatchSuccess value)? paymentBatchSuccess,
    TResult? Function(_PaymentBatchReject value)? paymentBatchReject,
    TResult? Function(_PaymentWorkoutSuccess value)? paymentWorkoutSuccess,
    TResult? Function(_PaymentWorkoutReject value)? paymentWorkoutReject,
    TResult? Function(_WorkoutStatusPlanned value)? workoutStatusPlanned,
    TResult? Function(_WorkoutStatusRS value)? workoutStatusRS,
    TResult? Function(_WorkoutStatusStarted value)? workoutStatusStarted,
    TResult? Function(_WorkoutStatusRF value)? workoutStatusRF,
    TResult? Function(_WorkoutStatusFinished value)? workoutStatusFinished,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PaymentBatchSuccess value)? paymentBatchSuccess,
    TResult Function(_PaymentBatchReject value)? paymentBatchReject,
    TResult Function(_PaymentWorkoutSuccess value)? paymentWorkoutSuccess,
    TResult Function(_PaymentWorkoutReject value)? paymentWorkoutReject,
    TResult Function(_WorkoutStatusPlanned value)? workoutStatusPlanned,
    TResult Function(_WorkoutStatusRS value)? workoutStatusRS,
    TResult Function(_WorkoutStatusStarted value)? workoutStatusStarted,
    TResult Function(_WorkoutStatusRF value)? workoutStatusRF,
    TResult Function(_WorkoutStatusFinished value)? workoutStatusFinished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements NotificationsState {
  const factory _Error({required final String error}) = _$_Error;

  String get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
