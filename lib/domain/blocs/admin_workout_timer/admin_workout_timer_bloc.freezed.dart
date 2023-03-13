// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_workout_timer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdminWorkoutTimerEvent {
  Duration get duration => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration, AdminWorkout workout) timerStarted,
    required TResult Function(Duration duration, AdminWorkout workout) timerTicked,
    required TResult Function(Duration duration) timerComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration, AdminWorkout workout)? timerStarted,
    TResult? Function(Duration duration, AdminWorkout workout)? timerTicked,
    TResult? Function(Duration duration)? timerComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration, AdminWorkout workout)? timerStarted,
    TResult Function(Duration duration, AdminWorkout workout)? timerTicked,
    TResult Function(Duration duration)? timerComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdminWorkoutTimerEventTimerStarted value) timerStarted,
    required TResult Function(_AdminWorkoutTimerEventTimerTicked value) timerTicked,
    required TResult Function(_AdminWorkoutTimerEventTimerComplete value) timerComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdminWorkoutTimerEventTimerStarted value)? timerStarted,
    TResult? Function(_AdminWorkoutTimerEventTimerTicked value)? timerTicked,
    TResult? Function(_AdminWorkoutTimerEventTimerComplete value)? timerComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdminWorkoutTimerEventTimerStarted value)? timerStarted,
    TResult Function(_AdminWorkoutTimerEventTimerTicked value)? timerTicked,
    TResult Function(_AdminWorkoutTimerEventTimerComplete value)? timerComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminWorkoutTimerEventCopyWith<AdminWorkoutTimerEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminWorkoutTimerEventCopyWith<$Res> {
  factory $AdminWorkoutTimerEventCopyWith(AdminWorkoutTimerEvent value, $Res Function(AdminWorkoutTimerEvent) then) =
      _$AdminWorkoutTimerEventCopyWithImpl<$Res, AdminWorkoutTimerEvent>;
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class _$AdminWorkoutTimerEventCopyWithImpl<$Res, $Val extends AdminWorkoutTimerEvent>
    implements $AdminWorkoutTimerEventCopyWith<$Res> {
  _$AdminWorkoutTimerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdminWorkoutTimerEventTimerStartedCopyWith<$Res> implements $AdminWorkoutTimerEventCopyWith<$Res> {
  factory _$$_AdminWorkoutTimerEventTimerStartedCopyWith(
          _$_AdminWorkoutTimerEventTimerStarted value, $Res Function(_$_AdminWorkoutTimerEventTimerStarted) then) =
      __$$_AdminWorkoutTimerEventTimerStartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration duration, AdminWorkout workout});

  $AdminWorkoutCopyWith<$Res> get workout;
}

/// @nodoc
class __$$_AdminWorkoutTimerEventTimerStartedCopyWithImpl<$Res>
    extends _$AdminWorkoutTimerEventCopyWithImpl<$Res, _$_AdminWorkoutTimerEventTimerStarted>
    implements _$$_AdminWorkoutTimerEventTimerStartedCopyWith<$Res> {
  __$$_AdminWorkoutTimerEventTimerStartedCopyWithImpl(
      _$_AdminWorkoutTimerEventTimerStarted _value, $Res Function(_$_AdminWorkoutTimerEventTimerStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? workout = null,
  }) {
    return _then(_$_AdminWorkoutTimerEventTimerStarted(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      workout: null == workout
          ? _value.workout
          : workout // ignore: cast_nullable_to_non_nullable
              as AdminWorkout,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AdminWorkoutCopyWith<$Res> get workout {
    return $AdminWorkoutCopyWith<$Res>(_value.workout, (value) {
      return _then(_value.copyWith(workout: value));
    });
  }
}

/// @nodoc

class _$_AdminWorkoutTimerEventTimerStarted implements _AdminWorkoutTimerEventTimerStarted {
  const _$_AdminWorkoutTimerEventTimerStarted({this.duration = const Duration(seconds: 60), required this.workout});

  @override
  @JsonKey()
  final Duration duration;
  @override
  final AdminWorkout workout;

  @override
  String toString() {
    return 'AdminWorkoutTimerEvent.timerStarted(duration: $duration, workout: $workout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminWorkoutTimerEventTimerStarted &&
            (identical(other.duration, duration) || other.duration == duration) &&
            (identical(other.workout, workout) || other.workout == workout));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration, workout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminWorkoutTimerEventTimerStartedCopyWith<_$_AdminWorkoutTimerEventTimerStarted> get copyWith =>
      __$$_AdminWorkoutTimerEventTimerStartedCopyWithImpl<_$_AdminWorkoutTimerEventTimerStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration, AdminWorkout workout) timerStarted,
    required TResult Function(Duration duration, AdminWorkout workout) timerTicked,
    required TResult Function(Duration duration) timerComplete,
  }) {
    return timerStarted(duration, workout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration, AdminWorkout workout)? timerStarted,
    TResult? Function(Duration duration, AdminWorkout workout)? timerTicked,
    TResult? Function(Duration duration)? timerComplete,
  }) {
    return timerStarted?.call(duration, workout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration, AdminWorkout workout)? timerStarted,
    TResult Function(Duration duration, AdminWorkout workout)? timerTicked,
    TResult Function(Duration duration)? timerComplete,
    required TResult orElse(),
  }) {
    if (timerStarted != null) {
      return timerStarted(duration, workout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdminWorkoutTimerEventTimerStarted value) timerStarted,
    required TResult Function(_AdminWorkoutTimerEventTimerTicked value) timerTicked,
    required TResult Function(_AdminWorkoutTimerEventTimerComplete value) timerComplete,
  }) {
    return timerStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdminWorkoutTimerEventTimerStarted value)? timerStarted,
    TResult? Function(_AdminWorkoutTimerEventTimerTicked value)? timerTicked,
    TResult? Function(_AdminWorkoutTimerEventTimerComplete value)? timerComplete,
  }) {
    return timerStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdminWorkoutTimerEventTimerStarted value)? timerStarted,
    TResult Function(_AdminWorkoutTimerEventTimerTicked value)? timerTicked,
    TResult Function(_AdminWorkoutTimerEventTimerComplete value)? timerComplete,
    required TResult orElse(),
  }) {
    if (timerStarted != null) {
      return timerStarted(this);
    }
    return orElse();
  }
}

abstract class _AdminWorkoutTimerEventTimerStarted implements AdminWorkoutTimerEvent {
  const factory _AdminWorkoutTimerEventTimerStarted({final Duration duration, required final AdminWorkout workout}) =
      _$_AdminWorkoutTimerEventTimerStarted;

  @override
  Duration get duration;
  AdminWorkout get workout;
  @override
  @JsonKey(ignore: true)
  _$$_AdminWorkoutTimerEventTimerStartedCopyWith<_$_AdminWorkoutTimerEventTimerStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AdminWorkoutTimerEventTimerTickedCopyWith<$Res> implements $AdminWorkoutTimerEventCopyWith<$Res> {
  factory _$$_AdminWorkoutTimerEventTimerTickedCopyWith(
          _$_AdminWorkoutTimerEventTimerTicked value, $Res Function(_$_AdminWorkoutTimerEventTimerTicked) then) =
      __$$_AdminWorkoutTimerEventTimerTickedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration duration, AdminWorkout workout});

  $AdminWorkoutCopyWith<$Res> get workout;
}

/// @nodoc
class __$$_AdminWorkoutTimerEventTimerTickedCopyWithImpl<$Res>
    extends _$AdminWorkoutTimerEventCopyWithImpl<$Res, _$_AdminWorkoutTimerEventTimerTicked>
    implements _$$_AdminWorkoutTimerEventTimerTickedCopyWith<$Res> {
  __$$_AdminWorkoutTimerEventTimerTickedCopyWithImpl(
      _$_AdminWorkoutTimerEventTimerTicked _value, $Res Function(_$_AdminWorkoutTimerEventTimerTicked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? workout = null,
  }) {
    return _then(_$_AdminWorkoutTimerEventTimerTicked(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      workout: null == workout
          ? _value.workout
          : workout // ignore: cast_nullable_to_non_nullable
              as AdminWorkout,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AdminWorkoutCopyWith<$Res> get workout {
    return $AdminWorkoutCopyWith<$Res>(_value.workout, (value) {
      return _then(_value.copyWith(workout: value));
    });
  }
}

/// @nodoc

class _$_AdminWorkoutTimerEventTimerTicked implements _AdminWorkoutTimerEventTimerTicked {
  const _$_AdminWorkoutTimerEventTimerTicked({this.duration = const Duration(seconds: 60), required this.workout});

  @override
  @JsonKey()
  final Duration duration;
  @override
  final AdminWorkout workout;

  @override
  String toString() {
    return 'AdminWorkoutTimerEvent.timerTicked(duration: $duration, workout: $workout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminWorkoutTimerEventTimerTicked &&
            (identical(other.duration, duration) || other.duration == duration) &&
            (identical(other.workout, workout) || other.workout == workout));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration, workout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminWorkoutTimerEventTimerTickedCopyWith<_$_AdminWorkoutTimerEventTimerTicked> get copyWith =>
      __$$_AdminWorkoutTimerEventTimerTickedCopyWithImpl<_$_AdminWorkoutTimerEventTimerTicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration, AdminWorkout workout) timerStarted,
    required TResult Function(Duration duration, AdminWorkout workout) timerTicked,
    required TResult Function(Duration duration) timerComplete,
  }) {
    return timerTicked(duration, workout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration, AdminWorkout workout)? timerStarted,
    TResult? Function(Duration duration, AdminWorkout workout)? timerTicked,
    TResult? Function(Duration duration)? timerComplete,
  }) {
    return timerTicked?.call(duration, workout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration, AdminWorkout workout)? timerStarted,
    TResult Function(Duration duration, AdminWorkout workout)? timerTicked,
    TResult Function(Duration duration)? timerComplete,
    required TResult orElse(),
  }) {
    if (timerTicked != null) {
      return timerTicked(duration, workout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdminWorkoutTimerEventTimerStarted value) timerStarted,
    required TResult Function(_AdminWorkoutTimerEventTimerTicked value) timerTicked,
    required TResult Function(_AdminWorkoutTimerEventTimerComplete value) timerComplete,
  }) {
    return timerTicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdminWorkoutTimerEventTimerStarted value)? timerStarted,
    TResult? Function(_AdminWorkoutTimerEventTimerTicked value)? timerTicked,
    TResult? Function(_AdminWorkoutTimerEventTimerComplete value)? timerComplete,
  }) {
    return timerTicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdminWorkoutTimerEventTimerStarted value)? timerStarted,
    TResult Function(_AdminWorkoutTimerEventTimerTicked value)? timerTicked,
    TResult Function(_AdminWorkoutTimerEventTimerComplete value)? timerComplete,
    required TResult orElse(),
  }) {
    if (timerTicked != null) {
      return timerTicked(this);
    }
    return orElse();
  }
}

abstract class _AdminWorkoutTimerEventTimerTicked implements AdminWorkoutTimerEvent {
  const factory _AdminWorkoutTimerEventTimerTicked({final Duration duration, required final AdminWorkout workout}) =
      _$_AdminWorkoutTimerEventTimerTicked;

  @override
  Duration get duration;
  AdminWorkout get workout;
  @override
  @JsonKey(ignore: true)
  _$$_AdminWorkoutTimerEventTimerTickedCopyWith<_$_AdminWorkoutTimerEventTimerTicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AdminWorkoutTimerEventTimerCompleteCopyWith<$Res> implements $AdminWorkoutTimerEventCopyWith<$Res> {
  factory _$$_AdminWorkoutTimerEventTimerCompleteCopyWith(
          _$_AdminWorkoutTimerEventTimerComplete value, $Res Function(_$_AdminWorkoutTimerEventTimerComplete) then) =
      __$$_AdminWorkoutTimerEventTimerCompleteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$_AdminWorkoutTimerEventTimerCompleteCopyWithImpl<$Res>
    extends _$AdminWorkoutTimerEventCopyWithImpl<$Res, _$_AdminWorkoutTimerEventTimerComplete>
    implements _$$_AdminWorkoutTimerEventTimerCompleteCopyWith<$Res> {
  __$$_AdminWorkoutTimerEventTimerCompleteCopyWithImpl(
      _$_AdminWorkoutTimerEventTimerComplete _value, $Res Function(_$_AdminWorkoutTimerEventTimerComplete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$_AdminWorkoutTimerEventTimerComplete(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_AdminWorkoutTimerEventTimerComplete implements _AdminWorkoutTimerEventTimerComplete {
  const _$_AdminWorkoutTimerEventTimerComplete({this.duration = const Duration(seconds: 60)});

  @override
  @JsonKey()
  final Duration duration;

  @override
  String toString() {
    return 'AdminWorkoutTimerEvent.timerComplete(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminWorkoutTimerEventTimerComplete &&
            (identical(other.duration, duration) || other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminWorkoutTimerEventTimerCompleteCopyWith<_$_AdminWorkoutTimerEventTimerComplete> get copyWith =>
      __$$_AdminWorkoutTimerEventTimerCompleteCopyWithImpl<_$_AdminWorkoutTimerEventTimerComplete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration, AdminWorkout workout) timerStarted,
    required TResult Function(Duration duration, AdminWorkout workout) timerTicked,
    required TResult Function(Duration duration) timerComplete,
  }) {
    return timerComplete(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration, AdminWorkout workout)? timerStarted,
    TResult? Function(Duration duration, AdminWorkout workout)? timerTicked,
    TResult? Function(Duration duration)? timerComplete,
  }) {
    return timerComplete?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration, AdminWorkout workout)? timerStarted,
    TResult Function(Duration duration, AdminWorkout workout)? timerTicked,
    TResult Function(Duration duration)? timerComplete,
    required TResult orElse(),
  }) {
    if (timerComplete != null) {
      return timerComplete(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdminWorkoutTimerEventTimerStarted value) timerStarted,
    required TResult Function(_AdminWorkoutTimerEventTimerTicked value) timerTicked,
    required TResult Function(_AdminWorkoutTimerEventTimerComplete value) timerComplete,
  }) {
    return timerComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdminWorkoutTimerEventTimerStarted value)? timerStarted,
    TResult? Function(_AdminWorkoutTimerEventTimerTicked value)? timerTicked,
    TResult? Function(_AdminWorkoutTimerEventTimerComplete value)? timerComplete,
  }) {
    return timerComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdminWorkoutTimerEventTimerStarted value)? timerStarted,
    TResult Function(_AdminWorkoutTimerEventTimerTicked value)? timerTicked,
    TResult Function(_AdminWorkoutTimerEventTimerComplete value)? timerComplete,
    required TResult orElse(),
  }) {
    if (timerComplete != null) {
      return timerComplete(this);
    }
    return orElse();
  }
}

abstract class _AdminWorkoutTimerEventTimerComplete implements AdminWorkoutTimerEvent {
  const factory _AdminWorkoutTimerEventTimerComplete({final Duration duration}) =
      _$_AdminWorkoutTimerEventTimerComplete;

  @override
  Duration get duration;
  @override
  @JsonKey(ignore: true)
  _$$_AdminWorkoutTimerEventTimerCompleteCopyWith<_$_AdminWorkoutTimerEventTimerComplete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminWorkoutTimerState {
  Duration get duration => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) timerInitial,
    required TResult Function(Duration duration) timerRunInProgress,
    required TResult Function(Duration duration) timerRunInDanger,
    required TResult Function(Duration duration) timerRunComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? timerInitial,
    TResult? Function(Duration duration)? timerRunInProgress,
    TResult? Function(Duration duration)? timerRunInDanger,
    TResult? Function(Duration duration)? timerRunComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? timerInitial,
    TResult Function(Duration duration)? timerRunInProgress,
    TResult Function(Duration duration)? timerRunInDanger,
    TResult Function(Duration duration)? timerRunComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdminWorkoutTimerStateTimerInitial value) timerInitial,
    required TResult Function(_AdminWorkoutTimerStateTimerRunInProgress value) timerRunInProgress,
    required TResult Function(_AdminWorkoutTimerStateTimerRunInDanger value) timerRunInDanger,
    required TResult Function(_AdminWorkoutTimerStateTimerRunComplete value) timerRunComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdminWorkoutTimerStateTimerInitial value)? timerInitial,
    TResult? Function(_AdminWorkoutTimerStateTimerRunInProgress value)? timerRunInProgress,
    TResult? Function(_AdminWorkoutTimerStateTimerRunInDanger value)? timerRunInDanger,
    TResult? Function(_AdminWorkoutTimerStateTimerRunComplete value)? timerRunComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdminWorkoutTimerStateTimerInitial value)? timerInitial,
    TResult Function(_AdminWorkoutTimerStateTimerRunInProgress value)? timerRunInProgress,
    TResult Function(_AdminWorkoutTimerStateTimerRunInDanger value)? timerRunInDanger,
    TResult Function(_AdminWorkoutTimerStateTimerRunComplete value)? timerRunComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminWorkoutTimerStateCopyWith<AdminWorkoutTimerState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminWorkoutTimerStateCopyWith<$Res> {
  factory $AdminWorkoutTimerStateCopyWith(AdminWorkoutTimerState value, $Res Function(AdminWorkoutTimerState) then) =
      _$AdminWorkoutTimerStateCopyWithImpl<$Res, AdminWorkoutTimerState>;
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class _$AdminWorkoutTimerStateCopyWithImpl<$Res, $Val extends AdminWorkoutTimerState>
    implements $AdminWorkoutTimerStateCopyWith<$Res> {
  _$AdminWorkoutTimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdminWorkoutTimerStateTimerInitialCopyWith<$Res> implements $AdminWorkoutTimerStateCopyWith<$Res> {
  factory _$$_AdminWorkoutTimerStateTimerInitialCopyWith(
          _$_AdminWorkoutTimerStateTimerInitial value, $Res Function(_$_AdminWorkoutTimerStateTimerInitial) then) =
      __$$_AdminWorkoutTimerStateTimerInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$_AdminWorkoutTimerStateTimerInitialCopyWithImpl<$Res>
    extends _$AdminWorkoutTimerStateCopyWithImpl<$Res, _$_AdminWorkoutTimerStateTimerInitial>
    implements _$$_AdminWorkoutTimerStateTimerInitialCopyWith<$Res> {
  __$$_AdminWorkoutTimerStateTimerInitialCopyWithImpl(
      _$_AdminWorkoutTimerStateTimerInitial _value, $Res Function(_$_AdminWorkoutTimerStateTimerInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$_AdminWorkoutTimerStateTimerInitial(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_AdminWorkoutTimerStateTimerInitial implements _AdminWorkoutTimerStateTimerInitial {
  const _$_AdminWorkoutTimerStateTimerInitial({this.duration = const Duration(seconds: 60)});

  @override
  @JsonKey()
  final Duration duration;

  @override
  String toString() {
    return 'AdminWorkoutTimerState.timerInitial(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminWorkoutTimerStateTimerInitial &&
            (identical(other.duration, duration) || other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminWorkoutTimerStateTimerInitialCopyWith<_$_AdminWorkoutTimerStateTimerInitial> get copyWith =>
      __$$_AdminWorkoutTimerStateTimerInitialCopyWithImpl<_$_AdminWorkoutTimerStateTimerInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) timerInitial,
    required TResult Function(Duration duration) timerRunInProgress,
    required TResult Function(Duration duration) timerRunInDanger,
    required TResult Function(Duration duration) timerRunComplete,
  }) {
    return timerInitial(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? timerInitial,
    TResult? Function(Duration duration)? timerRunInProgress,
    TResult? Function(Duration duration)? timerRunInDanger,
    TResult? Function(Duration duration)? timerRunComplete,
  }) {
    return timerInitial?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? timerInitial,
    TResult Function(Duration duration)? timerRunInProgress,
    TResult Function(Duration duration)? timerRunInDanger,
    TResult Function(Duration duration)? timerRunComplete,
    required TResult orElse(),
  }) {
    if (timerInitial != null) {
      return timerInitial(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdminWorkoutTimerStateTimerInitial value) timerInitial,
    required TResult Function(_AdminWorkoutTimerStateTimerRunInProgress value) timerRunInProgress,
    required TResult Function(_AdminWorkoutTimerStateTimerRunInDanger value) timerRunInDanger,
    required TResult Function(_AdminWorkoutTimerStateTimerRunComplete value) timerRunComplete,
  }) {
    return timerInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdminWorkoutTimerStateTimerInitial value)? timerInitial,
    TResult? Function(_AdminWorkoutTimerStateTimerRunInProgress value)? timerRunInProgress,
    TResult? Function(_AdminWorkoutTimerStateTimerRunInDanger value)? timerRunInDanger,
    TResult? Function(_AdminWorkoutTimerStateTimerRunComplete value)? timerRunComplete,
  }) {
    return timerInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdminWorkoutTimerStateTimerInitial value)? timerInitial,
    TResult Function(_AdminWorkoutTimerStateTimerRunInProgress value)? timerRunInProgress,
    TResult Function(_AdminWorkoutTimerStateTimerRunInDanger value)? timerRunInDanger,
    TResult Function(_AdminWorkoutTimerStateTimerRunComplete value)? timerRunComplete,
    required TResult orElse(),
  }) {
    if (timerInitial != null) {
      return timerInitial(this);
    }
    return orElse();
  }
}

abstract class _AdminWorkoutTimerStateTimerInitial implements AdminWorkoutTimerState {
  const factory _AdminWorkoutTimerStateTimerInitial({final Duration duration}) = _$_AdminWorkoutTimerStateTimerInitial;

  @override
  Duration get duration;
  @override
  @JsonKey(ignore: true)
  _$$_AdminWorkoutTimerStateTimerInitialCopyWith<_$_AdminWorkoutTimerStateTimerInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AdminWorkoutTimerStateTimerRunInProgressCopyWith<$Res>
    implements $AdminWorkoutTimerStateCopyWith<$Res> {
  factory _$$_AdminWorkoutTimerStateTimerRunInProgressCopyWith(_$_AdminWorkoutTimerStateTimerRunInProgress value,
          $Res Function(_$_AdminWorkoutTimerStateTimerRunInProgress) then) =
      __$$_AdminWorkoutTimerStateTimerRunInProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$_AdminWorkoutTimerStateTimerRunInProgressCopyWithImpl<$Res>
    extends _$AdminWorkoutTimerStateCopyWithImpl<$Res, _$_AdminWorkoutTimerStateTimerRunInProgress>
    implements _$$_AdminWorkoutTimerStateTimerRunInProgressCopyWith<$Res> {
  __$$_AdminWorkoutTimerStateTimerRunInProgressCopyWithImpl(_$_AdminWorkoutTimerStateTimerRunInProgress _value,
      $Res Function(_$_AdminWorkoutTimerStateTimerRunInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$_AdminWorkoutTimerStateTimerRunInProgress(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_AdminWorkoutTimerStateTimerRunInProgress implements _AdminWorkoutTimerStateTimerRunInProgress {
  const _$_AdminWorkoutTimerStateTimerRunInProgress({this.duration = const Duration(seconds: 60)});

  @override
  @JsonKey()
  final Duration duration;

  @override
  String toString() {
    return 'AdminWorkoutTimerState.timerRunInProgress(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminWorkoutTimerStateTimerRunInProgress &&
            (identical(other.duration, duration) || other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminWorkoutTimerStateTimerRunInProgressCopyWith<_$_AdminWorkoutTimerStateTimerRunInProgress> get copyWith =>
      __$$_AdminWorkoutTimerStateTimerRunInProgressCopyWithImpl<_$_AdminWorkoutTimerStateTimerRunInProgress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) timerInitial,
    required TResult Function(Duration duration) timerRunInProgress,
    required TResult Function(Duration duration) timerRunInDanger,
    required TResult Function(Duration duration) timerRunComplete,
  }) {
    return timerRunInProgress(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? timerInitial,
    TResult? Function(Duration duration)? timerRunInProgress,
    TResult? Function(Duration duration)? timerRunInDanger,
    TResult? Function(Duration duration)? timerRunComplete,
  }) {
    return timerRunInProgress?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? timerInitial,
    TResult Function(Duration duration)? timerRunInProgress,
    TResult Function(Duration duration)? timerRunInDanger,
    TResult Function(Duration duration)? timerRunComplete,
    required TResult orElse(),
  }) {
    if (timerRunInProgress != null) {
      return timerRunInProgress(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdminWorkoutTimerStateTimerInitial value) timerInitial,
    required TResult Function(_AdminWorkoutTimerStateTimerRunInProgress value) timerRunInProgress,
    required TResult Function(_AdminWorkoutTimerStateTimerRunInDanger value) timerRunInDanger,
    required TResult Function(_AdminWorkoutTimerStateTimerRunComplete value) timerRunComplete,
  }) {
    return timerRunInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdminWorkoutTimerStateTimerInitial value)? timerInitial,
    TResult? Function(_AdminWorkoutTimerStateTimerRunInProgress value)? timerRunInProgress,
    TResult? Function(_AdminWorkoutTimerStateTimerRunInDanger value)? timerRunInDanger,
    TResult? Function(_AdminWorkoutTimerStateTimerRunComplete value)? timerRunComplete,
  }) {
    return timerRunInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdminWorkoutTimerStateTimerInitial value)? timerInitial,
    TResult Function(_AdminWorkoutTimerStateTimerRunInProgress value)? timerRunInProgress,
    TResult Function(_AdminWorkoutTimerStateTimerRunInDanger value)? timerRunInDanger,
    TResult Function(_AdminWorkoutTimerStateTimerRunComplete value)? timerRunComplete,
    required TResult orElse(),
  }) {
    if (timerRunInProgress != null) {
      return timerRunInProgress(this);
    }
    return orElse();
  }
}

abstract class _AdminWorkoutTimerStateTimerRunInProgress implements AdminWorkoutTimerState {
  const factory _AdminWorkoutTimerStateTimerRunInProgress({final Duration duration}) =
      _$_AdminWorkoutTimerStateTimerRunInProgress;

  @override
  Duration get duration;
  @override
  @JsonKey(ignore: true)
  _$$_AdminWorkoutTimerStateTimerRunInProgressCopyWith<_$_AdminWorkoutTimerStateTimerRunInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AdminWorkoutTimerStateTimerRunInDangerCopyWith<$Res>
    implements $AdminWorkoutTimerStateCopyWith<$Res> {
  factory _$$_AdminWorkoutTimerStateTimerRunInDangerCopyWith(_$_AdminWorkoutTimerStateTimerRunInDanger value,
          $Res Function(_$_AdminWorkoutTimerStateTimerRunInDanger) then) =
      __$$_AdminWorkoutTimerStateTimerRunInDangerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$_AdminWorkoutTimerStateTimerRunInDangerCopyWithImpl<$Res>
    extends _$AdminWorkoutTimerStateCopyWithImpl<$Res, _$_AdminWorkoutTimerStateTimerRunInDanger>
    implements _$$_AdminWorkoutTimerStateTimerRunInDangerCopyWith<$Res> {
  __$$_AdminWorkoutTimerStateTimerRunInDangerCopyWithImpl(
      _$_AdminWorkoutTimerStateTimerRunInDanger _value, $Res Function(_$_AdminWorkoutTimerStateTimerRunInDanger) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$_AdminWorkoutTimerStateTimerRunInDanger(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_AdminWorkoutTimerStateTimerRunInDanger implements _AdminWorkoutTimerStateTimerRunInDanger {
  const _$_AdminWorkoutTimerStateTimerRunInDanger({this.duration = const Duration(seconds: 60)});

  @override
  @JsonKey()
  final Duration duration;

  @override
  String toString() {
    return 'AdminWorkoutTimerState.timerRunInDanger(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminWorkoutTimerStateTimerRunInDanger &&
            (identical(other.duration, duration) || other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminWorkoutTimerStateTimerRunInDangerCopyWith<_$_AdminWorkoutTimerStateTimerRunInDanger> get copyWith =>
      __$$_AdminWorkoutTimerStateTimerRunInDangerCopyWithImpl<_$_AdminWorkoutTimerStateTimerRunInDanger>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) timerInitial,
    required TResult Function(Duration duration) timerRunInProgress,
    required TResult Function(Duration duration) timerRunInDanger,
    required TResult Function(Duration duration) timerRunComplete,
  }) {
    return timerRunInDanger(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? timerInitial,
    TResult? Function(Duration duration)? timerRunInProgress,
    TResult? Function(Duration duration)? timerRunInDanger,
    TResult? Function(Duration duration)? timerRunComplete,
  }) {
    return timerRunInDanger?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? timerInitial,
    TResult Function(Duration duration)? timerRunInProgress,
    TResult Function(Duration duration)? timerRunInDanger,
    TResult Function(Duration duration)? timerRunComplete,
    required TResult orElse(),
  }) {
    if (timerRunInDanger != null) {
      return timerRunInDanger(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdminWorkoutTimerStateTimerInitial value) timerInitial,
    required TResult Function(_AdminWorkoutTimerStateTimerRunInProgress value) timerRunInProgress,
    required TResult Function(_AdminWorkoutTimerStateTimerRunInDanger value) timerRunInDanger,
    required TResult Function(_AdminWorkoutTimerStateTimerRunComplete value) timerRunComplete,
  }) {
    return timerRunInDanger(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdminWorkoutTimerStateTimerInitial value)? timerInitial,
    TResult? Function(_AdminWorkoutTimerStateTimerRunInProgress value)? timerRunInProgress,
    TResult? Function(_AdminWorkoutTimerStateTimerRunInDanger value)? timerRunInDanger,
    TResult? Function(_AdminWorkoutTimerStateTimerRunComplete value)? timerRunComplete,
  }) {
    return timerRunInDanger?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdminWorkoutTimerStateTimerInitial value)? timerInitial,
    TResult Function(_AdminWorkoutTimerStateTimerRunInProgress value)? timerRunInProgress,
    TResult Function(_AdminWorkoutTimerStateTimerRunInDanger value)? timerRunInDanger,
    TResult Function(_AdminWorkoutTimerStateTimerRunComplete value)? timerRunComplete,
    required TResult orElse(),
  }) {
    if (timerRunInDanger != null) {
      return timerRunInDanger(this);
    }
    return orElse();
  }
}

abstract class _AdminWorkoutTimerStateTimerRunInDanger implements AdminWorkoutTimerState {
  const factory _AdminWorkoutTimerStateTimerRunInDanger({final Duration duration}) =
      _$_AdminWorkoutTimerStateTimerRunInDanger;

  @override
  Duration get duration;
  @override
  @JsonKey(ignore: true)
  _$$_AdminWorkoutTimerStateTimerRunInDangerCopyWith<_$_AdminWorkoutTimerStateTimerRunInDanger> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AdminWorkoutTimerStateTimerRunCompleteCopyWith<$Res>
    implements $AdminWorkoutTimerStateCopyWith<$Res> {
  factory _$$_AdminWorkoutTimerStateTimerRunCompleteCopyWith(_$_AdminWorkoutTimerStateTimerRunComplete value,
          $Res Function(_$_AdminWorkoutTimerStateTimerRunComplete) then) =
      __$$_AdminWorkoutTimerStateTimerRunCompleteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$_AdminWorkoutTimerStateTimerRunCompleteCopyWithImpl<$Res>
    extends _$AdminWorkoutTimerStateCopyWithImpl<$Res, _$_AdminWorkoutTimerStateTimerRunComplete>
    implements _$$_AdminWorkoutTimerStateTimerRunCompleteCopyWith<$Res> {
  __$$_AdminWorkoutTimerStateTimerRunCompleteCopyWithImpl(
      _$_AdminWorkoutTimerStateTimerRunComplete _value, $Res Function(_$_AdminWorkoutTimerStateTimerRunComplete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$_AdminWorkoutTimerStateTimerRunComplete(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_AdminWorkoutTimerStateTimerRunComplete implements _AdminWorkoutTimerStateTimerRunComplete {
  const _$_AdminWorkoutTimerStateTimerRunComplete({this.duration = const Duration(seconds: 60)});

  @override
  @JsonKey()
  final Duration duration;

  @override
  String toString() {
    return 'AdminWorkoutTimerState.timerRunComplete(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminWorkoutTimerStateTimerRunComplete &&
            (identical(other.duration, duration) || other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminWorkoutTimerStateTimerRunCompleteCopyWith<_$_AdminWorkoutTimerStateTimerRunComplete> get copyWith =>
      __$$_AdminWorkoutTimerStateTimerRunCompleteCopyWithImpl<_$_AdminWorkoutTimerStateTimerRunComplete>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) timerInitial,
    required TResult Function(Duration duration) timerRunInProgress,
    required TResult Function(Duration duration) timerRunInDanger,
    required TResult Function(Duration duration) timerRunComplete,
  }) {
    return timerRunComplete(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? timerInitial,
    TResult? Function(Duration duration)? timerRunInProgress,
    TResult? Function(Duration duration)? timerRunInDanger,
    TResult? Function(Duration duration)? timerRunComplete,
  }) {
    return timerRunComplete?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? timerInitial,
    TResult Function(Duration duration)? timerRunInProgress,
    TResult Function(Duration duration)? timerRunInDanger,
    TResult Function(Duration duration)? timerRunComplete,
    required TResult orElse(),
  }) {
    if (timerRunComplete != null) {
      return timerRunComplete(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AdminWorkoutTimerStateTimerInitial value) timerInitial,
    required TResult Function(_AdminWorkoutTimerStateTimerRunInProgress value) timerRunInProgress,
    required TResult Function(_AdminWorkoutTimerStateTimerRunInDanger value) timerRunInDanger,
    required TResult Function(_AdminWorkoutTimerStateTimerRunComplete value) timerRunComplete,
  }) {
    return timerRunComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AdminWorkoutTimerStateTimerInitial value)? timerInitial,
    TResult? Function(_AdminWorkoutTimerStateTimerRunInProgress value)? timerRunInProgress,
    TResult? Function(_AdminWorkoutTimerStateTimerRunInDanger value)? timerRunInDanger,
    TResult? Function(_AdminWorkoutTimerStateTimerRunComplete value)? timerRunComplete,
  }) {
    return timerRunComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AdminWorkoutTimerStateTimerInitial value)? timerInitial,
    TResult Function(_AdminWorkoutTimerStateTimerRunInProgress value)? timerRunInProgress,
    TResult Function(_AdminWorkoutTimerStateTimerRunInDanger value)? timerRunInDanger,
    TResult Function(_AdminWorkoutTimerStateTimerRunComplete value)? timerRunComplete,
    required TResult orElse(),
  }) {
    if (timerRunComplete != null) {
      return timerRunComplete(this);
    }
    return orElse();
  }
}

abstract class _AdminWorkoutTimerStateTimerRunComplete implements AdminWorkoutTimerState {
  const factory _AdminWorkoutTimerStateTimerRunComplete({final Duration duration}) =
      _$_AdminWorkoutTimerStateTimerRunComplete;

  @override
  Duration get duration;
  @override
  @JsonKey(ignore: true)
  _$$_AdminWorkoutTimerStateTimerRunCompleteCopyWith<_$_AdminWorkoutTimerStateTimerRunComplete> get copyWith =>
      throw _privateConstructorUsedError;
}
