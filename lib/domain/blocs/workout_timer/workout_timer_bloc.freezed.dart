// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_timer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WorkoutTimerEvent {
  Duration get duration => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration, Workout workout) timerStarted,
    required TResult Function(Duration duration, Workout workout) timerTicked,
    required TResult Function(Duration duration) timerComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration, Workout workout)? timerStarted,
    TResult? Function(Duration duration, Workout workout)? timerTicked,
    TResult? Function(Duration duration)? timerComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration, Workout workout)? timerStarted,
    TResult Function(Duration duration, Workout workout)? timerTicked,
    TResult Function(Duration duration)? timerComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutTimerEventTimerStarted value) timerStarted,
    required TResult Function(_WorkoutTimerEventTimerTicked value) timerTicked,
    required TResult Function(_WorkoutTimerEventTimerComplete value) timerComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutTimerEventTimerStarted value)? timerStarted,
    TResult? Function(_WorkoutTimerEventTimerTicked value)? timerTicked,
    TResult? Function(_WorkoutTimerEventTimerComplete value)? timerComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutTimerEventTimerStarted value)? timerStarted,
    TResult Function(_WorkoutTimerEventTimerTicked value)? timerTicked,
    TResult Function(_WorkoutTimerEventTimerComplete value)? timerComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkoutTimerEventCopyWith<WorkoutTimerEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutTimerEventCopyWith<$Res> {
  factory $WorkoutTimerEventCopyWith(WorkoutTimerEvent value, $Res Function(WorkoutTimerEvent) then) =
      _$WorkoutTimerEventCopyWithImpl<$Res, WorkoutTimerEvent>;
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class _$WorkoutTimerEventCopyWithImpl<$Res, $Val extends WorkoutTimerEvent>
    implements $WorkoutTimerEventCopyWith<$Res> {
  _$WorkoutTimerEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_WorkoutTimerEventTimerStartedCopyWith<$Res> implements $WorkoutTimerEventCopyWith<$Res> {
  factory _$$_WorkoutTimerEventTimerStartedCopyWith(
          _$_WorkoutTimerEventTimerStarted value, $Res Function(_$_WorkoutTimerEventTimerStarted) then) =
      __$$_WorkoutTimerEventTimerStartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration duration, Workout workout});

  $WorkoutCopyWith<$Res> get workout;
}

/// @nodoc
class __$$_WorkoutTimerEventTimerStartedCopyWithImpl<$Res>
    extends _$WorkoutTimerEventCopyWithImpl<$Res, _$_WorkoutTimerEventTimerStarted>
    implements _$$_WorkoutTimerEventTimerStartedCopyWith<$Res> {
  __$$_WorkoutTimerEventTimerStartedCopyWithImpl(
      _$_WorkoutTimerEventTimerStarted _value, $Res Function(_$_WorkoutTimerEventTimerStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? workout = null,
  }) {
    return _then(_$_WorkoutTimerEventTimerStarted(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      workout: null == workout
          ? _value.workout
          : workout // ignore: cast_nullable_to_non_nullable
              as Workout,
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

class _$_WorkoutTimerEventTimerStarted implements _WorkoutTimerEventTimerStarted {
  const _$_WorkoutTimerEventTimerStarted({this.duration = const Duration(seconds: 60), required this.workout});

  @override
  @JsonKey()
  final Duration duration;
  @override
  final Workout workout;

  @override
  String toString() {
    return 'WorkoutTimerEvent.timerStarted(duration: $duration, workout: $workout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutTimerEventTimerStarted &&
            (identical(other.duration, duration) || other.duration == duration) &&
            (identical(other.workout, workout) || other.workout == workout));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration, workout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutTimerEventTimerStartedCopyWith<_$_WorkoutTimerEventTimerStarted> get copyWith =>
      __$$_WorkoutTimerEventTimerStartedCopyWithImpl<_$_WorkoutTimerEventTimerStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration, Workout workout) timerStarted,
    required TResult Function(Duration duration, Workout workout) timerTicked,
    required TResult Function(Duration duration) timerComplete,
  }) {
    return timerStarted(duration, workout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration, Workout workout)? timerStarted,
    TResult? Function(Duration duration, Workout workout)? timerTicked,
    TResult? Function(Duration duration)? timerComplete,
  }) {
    return timerStarted?.call(duration, workout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration, Workout workout)? timerStarted,
    TResult Function(Duration duration, Workout workout)? timerTicked,
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
    required TResult Function(_WorkoutTimerEventTimerStarted value) timerStarted,
    required TResult Function(_WorkoutTimerEventTimerTicked value) timerTicked,
    required TResult Function(_WorkoutTimerEventTimerComplete value) timerComplete,
  }) {
    return timerStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutTimerEventTimerStarted value)? timerStarted,
    TResult? Function(_WorkoutTimerEventTimerTicked value)? timerTicked,
    TResult? Function(_WorkoutTimerEventTimerComplete value)? timerComplete,
  }) {
    return timerStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutTimerEventTimerStarted value)? timerStarted,
    TResult Function(_WorkoutTimerEventTimerTicked value)? timerTicked,
    TResult Function(_WorkoutTimerEventTimerComplete value)? timerComplete,
    required TResult orElse(),
  }) {
    if (timerStarted != null) {
      return timerStarted(this);
    }
    return orElse();
  }
}

abstract class _WorkoutTimerEventTimerStarted implements WorkoutTimerEvent {
  const factory _WorkoutTimerEventTimerStarted({final Duration duration, required final Workout workout}) =
      _$_WorkoutTimerEventTimerStarted;

  @override
  Duration get duration;
  Workout get workout;
  @override
  @JsonKey(ignore: true)
  _$$_WorkoutTimerEventTimerStartedCopyWith<_$_WorkoutTimerEventTimerStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WorkoutTimerEventTimerTickedCopyWith<$Res> implements $WorkoutTimerEventCopyWith<$Res> {
  factory _$$_WorkoutTimerEventTimerTickedCopyWith(
          _$_WorkoutTimerEventTimerTicked value, $Res Function(_$_WorkoutTimerEventTimerTicked) then) =
      __$$_WorkoutTimerEventTimerTickedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration duration, Workout workout});

  $WorkoutCopyWith<$Res> get workout;
}

/// @nodoc
class __$$_WorkoutTimerEventTimerTickedCopyWithImpl<$Res>
    extends _$WorkoutTimerEventCopyWithImpl<$Res, _$_WorkoutTimerEventTimerTicked>
    implements _$$_WorkoutTimerEventTimerTickedCopyWith<$Res> {
  __$$_WorkoutTimerEventTimerTickedCopyWithImpl(
      _$_WorkoutTimerEventTimerTicked _value, $Res Function(_$_WorkoutTimerEventTimerTicked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? workout = null,
  }) {
    return _then(_$_WorkoutTimerEventTimerTicked(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      workout: null == workout
          ? _value.workout
          : workout // ignore: cast_nullable_to_non_nullable
              as Workout,
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

class _$_WorkoutTimerEventTimerTicked implements _WorkoutTimerEventTimerTicked {
  const _$_WorkoutTimerEventTimerTicked({this.duration = const Duration(seconds: 60), required this.workout});

  @override
  @JsonKey()
  final Duration duration;
  @override
  final Workout workout;

  @override
  String toString() {
    return 'WorkoutTimerEvent.timerTicked(duration: $duration, workout: $workout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutTimerEventTimerTicked &&
            (identical(other.duration, duration) || other.duration == duration) &&
            (identical(other.workout, workout) || other.workout == workout));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration, workout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutTimerEventTimerTickedCopyWith<_$_WorkoutTimerEventTimerTicked> get copyWith =>
      __$$_WorkoutTimerEventTimerTickedCopyWithImpl<_$_WorkoutTimerEventTimerTicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration, Workout workout) timerStarted,
    required TResult Function(Duration duration, Workout workout) timerTicked,
    required TResult Function(Duration duration) timerComplete,
  }) {
    return timerTicked(duration, workout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration, Workout workout)? timerStarted,
    TResult? Function(Duration duration, Workout workout)? timerTicked,
    TResult? Function(Duration duration)? timerComplete,
  }) {
    return timerTicked?.call(duration, workout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration, Workout workout)? timerStarted,
    TResult Function(Duration duration, Workout workout)? timerTicked,
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
    required TResult Function(_WorkoutTimerEventTimerStarted value) timerStarted,
    required TResult Function(_WorkoutTimerEventTimerTicked value) timerTicked,
    required TResult Function(_WorkoutTimerEventTimerComplete value) timerComplete,
  }) {
    return timerTicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutTimerEventTimerStarted value)? timerStarted,
    TResult? Function(_WorkoutTimerEventTimerTicked value)? timerTicked,
    TResult? Function(_WorkoutTimerEventTimerComplete value)? timerComplete,
  }) {
    return timerTicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutTimerEventTimerStarted value)? timerStarted,
    TResult Function(_WorkoutTimerEventTimerTicked value)? timerTicked,
    TResult Function(_WorkoutTimerEventTimerComplete value)? timerComplete,
    required TResult orElse(),
  }) {
    if (timerTicked != null) {
      return timerTicked(this);
    }
    return orElse();
  }
}

abstract class _WorkoutTimerEventTimerTicked implements WorkoutTimerEvent {
  const factory _WorkoutTimerEventTimerTicked({final Duration duration, required final Workout workout}) =
      _$_WorkoutTimerEventTimerTicked;

  @override
  Duration get duration;
  Workout get workout;
  @override
  @JsonKey(ignore: true)
  _$$_WorkoutTimerEventTimerTickedCopyWith<_$_WorkoutTimerEventTimerTicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WorkoutTimerEventTimerCompleteCopyWith<$Res> implements $WorkoutTimerEventCopyWith<$Res> {
  factory _$$_WorkoutTimerEventTimerCompleteCopyWith(
          _$_WorkoutTimerEventTimerComplete value, $Res Function(_$_WorkoutTimerEventTimerComplete) then) =
      __$$_WorkoutTimerEventTimerCompleteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$_WorkoutTimerEventTimerCompleteCopyWithImpl<$Res>
    extends _$WorkoutTimerEventCopyWithImpl<$Res, _$_WorkoutTimerEventTimerComplete>
    implements _$$_WorkoutTimerEventTimerCompleteCopyWith<$Res> {
  __$$_WorkoutTimerEventTimerCompleteCopyWithImpl(
      _$_WorkoutTimerEventTimerComplete _value, $Res Function(_$_WorkoutTimerEventTimerComplete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$_WorkoutTimerEventTimerComplete(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_WorkoutTimerEventTimerComplete implements _WorkoutTimerEventTimerComplete {
  const _$_WorkoutTimerEventTimerComplete({this.duration = const Duration(seconds: 60)});

  @override
  @JsonKey()
  final Duration duration;

  @override
  String toString() {
    return 'WorkoutTimerEvent.timerComplete(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutTimerEventTimerComplete &&
            (identical(other.duration, duration) || other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutTimerEventTimerCompleteCopyWith<_$_WorkoutTimerEventTimerComplete> get copyWith =>
      __$$_WorkoutTimerEventTimerCompleteCopyWithImpl<_$_WorkoutTimerEventTimerComplete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration, Workout workout) timerStarted,
    required TResult Function(Duration duration, Workout workout) timerTicked,
    required TResult Function(Duration duration) timerComplete,
  }) {
    return timerComplete(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration, Workout workout)? timerStarted,
    TResult? Function(Duration duration, Workout workout)? timerTicked,
    TResult? Function(Duration duration)? timerComplete,
  }) {
    return timerComplete?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration, Workout workout)? timerStarted,
    TResult Function(Duration duration, Workout workout)? timerTicked,
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
    required TResult Function(_WorkoutTimerEventTimerStarted value) timerStarted,
    required TResult Function(_WorkoutTimerEventTimerTicked value) timerTicked,
    required TResult Function(_WorkoutTimerEventTimerComplete value) timerComplete,
  }) {
    return timerComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutTimerEventTimerStarted value)? timerStarted,
    TResult? Function(_WorkoutTimerEventTimerTicked value)? timerTicked,
    TResult? Function(_WorkoutTimerEventTimerComplete value)? timerComplete,
  }) {
    return timerComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutTimerEventTimerStarted value)? timerStarted,
    TResult Function(_WorkoutTimerEventTimerTicked value)? timerTicked,
    TResult Function(_WorkoutTimerEventTimerComplete value)? timerComplete,
    required TResult orElse(),
  }) {
    if (timerComplete != null) {
      return timerComplete(this);
    }
    return orElse();
  }
}

abstract class _WorkoutTimerEventTimerComplete implements WorkoutTimerEvent {
  const factory _WorkoutTimerEventTimerComplete({final Duration duration}) = _$_WorkoutTimerEventTimerComplete;

  @override
  Duration get duration;
  @override
  @JsonKey(ignore: true)
  _$$_WorkoutTimerEventTimerCompleteCopyWith<_$_WorkoutTimerEventTimerComplete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WorkoutTimerState {
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
    required TResult Function(_WorkoutTimerStateTimerInitial value) timerInitial,
    required TResult Function(_WorkoutTimerStateTimerRunInProgress value) timerRunInProgress,
    required TResult Function(_WorkoutTimerStateTimerRunInDanger value) timerRunInDanger,
    required TResult Function(_WorkoutTimerStateTimerRunComplete value) timerRunComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutTimerStateTimerInitial value)? timerInitial,
    TResult? Function(_WorkoutTimerStateTimerRunInProgress value)? timerRunInProgress,
    TResult? Function(_WorkoutTimerStateTimerRunInDanger value)? timerRunInDanger,
    TResult? Function(_WorkoutTimerStateTimerRunComplete value)? timerRunComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutTimerStateTimerInitial value)? timerInitial,
    TResult Function(_WorkoutTimerStateTimerRunInProgress value)? timerRunInProgress,
    TResult Function(_WorkoutTimerStateTimerRunInDanger value)? timerRunInDanger,
    TResult Function(_WorkoutTimerStateTimerRunComplete value)? timerRunComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkoutTimerStateCopyWith<WorkoutTimerState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutTimerStateCopyWith<$Res> {
  factory $WorkoutTimerStateCopyWith(WorkoutTimerState value, $Res Function(WorkoutTimerState) then) =
      _$WorkoutTimerStateCopyWithImpl<$Res, WorkoutTimerState>;
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class _$WorkoutTimerStateCopyWithImpl<$Res, $Val extends WorkoutTimerState>
    implements $WorkoutTimerStateCopyWith<$Res> {
  _$WorkoutTimerStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_WorkoutTimerStateTimerInitialCopyWith<$Res> implements $WorkoutTimerStateCopyWith<$Res> {
  factory _$$_WorkoutTimerStateTimerInitialCopyWith(
          _$_WorkoutTimerStateTimerInitial value, $Res Function(_$_WorkoutTimerStateTimerInitial) then) =
      __$$_WorkoutTimerStateTimerInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$_WorkoutTimerStateTimerInitialCopyWithImpl<$Res>
    extends _$WorkoutTimerStateCopyWithImpl<$Res, _$_WorkoutTimerStateTimerInitial>
    implements _$$_WorkoutTimerStateTimerInitialCopyWith<$Res> {
  __$$_WorkoutTimerStateTimerInitialCopyWithImpl(
      _$_WorkoutTimerStateTimerInitial _value, $Res Function(_$_WorkoutTimerStateTimerInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$_WorkoutTimerStateTimerInitial(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_WorkoutTimerStateTimerInitial implements _WorkoutTimerStateTimerInitial {
  const _$_WorkoutTimerStateTimerInitial({this.duration = const Duration(seconds: 60)});

  @override
  @JsonKey()
  final Duration duration;

  @override
  String toString() {
    return 'WorkoutTimerState.timerInitial(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutTimerStateTimerInitial &&
            (identical(other.duration, duration) || other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutTimerStateTimerInitialCopyWith<_$_WorkoutTimerStateTimerInitial> get copyWith =>
      __$$_WorkoutTimerStateTimerInitialCopyWithImpl<_$_WorkoutTimerStateTimerInitial>(this, _$identity);

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
    required TResult Function(_WorkoutTimerStateTimerInitial value) timerInitial,
    required TResult Function(_WorkoutTimerStateTimerRunInProgress value) timerRunInProgress,
    required TResult Function(_WorkoutTimerStateTimerRunInDanger value) timerRunInDanger,
    required TResult Function(_WorkoutTimerStateTimerRunComplete value) timerRunComplete,
  }) {
    return timerInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutTimerStateTimerInitial value)? timerInitial,
    TResult? Function(_WorkoutTimerStateTimerRunInProgress value)? timerRunInProgress,
    TResult? Function(_WorkoutTimerStateTimerRunInDanger value)? timerRunInDanger,
    TResult? Function(_WorkoutTimerStateTimerRunComplete value)? timerRunComplete,
  }) {
    return timerInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutTimerStateTimerInitial value)? timerInitial,
    TResult Function(_WorkoutTimerStateTimerRunInProgress value)? timerRunInProgress,
    TResult Function(_WorkoutTimerStateTimerRunInDanger value)? timerRunInDanger,
    TResult Function(_WorkoutTimerStateTimerRunComplete value)? timerRunComplete,
    required TResult orElse(),
  }) {
    if (timerInitial != null) {
      return timerInitial(this);
    }
    return orElse();
  }
}

abstract class _WorkoutTimerStateTimerInitial implements WorkoutTimerState {
  const factory _WorkoutTimerStateTimerInitial({final Duration duration}) = _$_WorkoutTimerStateTimerInitial;

  @override
  Duration get duration;
  @override
  @JsonKey(ignore: true)
  _$$_WorkoutTimerStateTimerInitialCopyWith<_$_WorkoutTimerStateTimerInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WorkoutTimerStateTimerRunInProgressCopyWith<$Res> implements $WorkoutTimerStateCopyWith<$Res> {
  factory _$$_WorkoutTimerStateTimerRunInProgressCopyWith(
          _$_WorkoutTimerStateTimerRunInProgress value, $Res Function(_$_WorkoutTimerStateTimerRunInProgress) then) =
      __$$_WorkoutTimerStateTimerRunInProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$_WorkoutTimerStateTimerRunInProgressCopyWithImpl<$Res>
    extends _$WorkoutTimerStateCopyWithImpl<$Res, _$_WorkoutTimerStateTimerRunInProgress>
    implements _$$_WorkoutTimerStateTimerRunInProgressCopyWith<$Res> {
  __$$_WorkoutTimerStateTimerRunInProgressCopyWithImpl(
      _$_WorkoutTimerStateTimerRunInProgress _value, $Res Function(_$_WorkoutTimerStateTimerRunInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$_WorkoutTimerStateTimerRunInProgress(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_WorkoutTimerStateTimerRunInProgress implements _WorkoutTimerStateTimerRunInProgress {
  const _$_WorkoutTimerStateTimerRunInProgress({this.duration = const Duration(seconds: 60)});

  @override
  @JsonKey()
  final Duration duration;

  @override
  String toString() {
    return 'WorkoutTimerState.timerRunInProgress(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutTimerStateTimerRunInProgress &&
            (identical(other.duration, duration) || other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutTimerStateTimerRunInProgressCopyWith<_$_WorkoutTimerStateTimerRunInProgress> get copyWith =>
      __$$_WorkoutTimerStateTimerRunInProgressCopyWithImpl<_$_WorkoutTimerStateTimerRunInProgress>(this, _$identity);

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
    required TResult Function(_WorkoutTimerStateTimerInitial value) timerInitial,
    required TResult Function(_WorkoutTimerStateTimerRunInProgress value) timerRunInProgress,
    required TResult Function(_WorkoutTimerStateTimerRunInDanger value) timerRunInDanger,
    required TResult Function(_WorkoutTimerStateTimerRunComplete value) timerRunComplete,
  }) {
    return timerRunInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutTimerStateTimerInitial value)? timerInitial,
    TResult? Function(_WorkoutTimerStateTimerRunInProgress value)? timerRunInProgress,
    TResult? Function(_WorkoutTimerStateTimerRunInDanger value)? timerRunInDanger,
    TResult? Function(_WorkoutTimerStateTimerRunComplete value)? timerRunComplete,
  }) {
    return timerRunInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutTimerStateTimerInitial value)? timerInitial,
    TResult Function(_WorkoutTimerStateTimerRunInProgress value)? timerRunInProgress,
    TResult Function(_WorkoutTimerStateTimerRunInDanger value)? timerRunInDanger,
    TResult Function(_WorkoutTimerStateTimerRunComplete value)? timerRunComplete,
    required TResult orElse(),
  }) {
    if (timerRunInProgress != null) {
      return timerRunInProgress(this);
    }
    return orElse();
  }
}

abstract class _WorkoutTimerStateTimerRunInProgress implements WorkoutTimerState {
  const factory _WorkoutTimerStateTimerRunInProgress({final Duration duration}) =
      _$_WorkoutTimerStateTimerRunInProgress;

  @override
  Duration get duration;
  @override
  @JsonKey(ignore: true)
  _$$_WorkoutTimerStateTimerRunInProgressCopyWith<_$_WorkoutTimerStateTimerRunInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WorkoutTimerStateTimerRunInDangerCopyWith<$Res> implements $WorkoutTimerStateCopyWith<$Res> {
  factory _$$_WorkoutTimerStateTimerRunInDangerCopyWith(
          _$_WorkoutTimerStateTimerRunInDanger value, $Res Function(_$_WorkoutTimerStateTimerRunInDanger) then) =
      __$$_WorkoutTimerStateTimerRunInDangerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$_WorkoutTimerStateTimerRunInDangerCopyWithImpl<$Res>
    extends _$WorkoutTimerStateCopyWithImpl<$Res, _$_WorkoutTimerStateTimerRunInDanger>
    implements _$$_WorkoutTimerStateTimerRunInDangerCopyWith<$Res> {
  __$$_WorkoutTimerStateTimerRunInDangerCopyWithImpl(
      _$_WorkoutTimerStateTimerRunInDanger _value, $Res Function(_$_WorkoutTimerStateTimerRunInDanger) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$_WorkoutTimerStateTimerRunInDanger(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_WorkoutTimerStateTimerRunInDanger implements _WorkoutTimerStateTimerRunInDanger {
  const _$_WorkoutTimerStateTimerRunInDanger({this.duration = const Duration(seconds: 60)});

  @override
  @JsonKey()
  final Duration duration;

  @override
  String toString() {
    return 'WorkoutTimerState.timerRunInDanger(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutTimerStateTimerRunInDanger &&
            (identical(other.duration, duration) || other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutTimerStateTimerRunInDangerCopyWith<_$_WorkoutTimerStateTimerRunInDanger> get copyWith =>
      __$$_WorkoutTimerStateTimerRunInDangerCopyWithImpl<_$_WorkoutTimerStateTimerRunInDanger>(this, _$identity);

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
    required TResult Function(_WorkoutTimerStateTimerInitial value) timerInitial,
    required TResult Function(_WorkoutTimerStateTimerRunInProgress value) timerRunInProgress,
    required TResult Function(_WorkoutTimerStateTimerRunInDanger value) timerRunInDanger,
    required TResult Function(_WorkoutTimerStateTimerRunComplete value) timerRunComplete,
  }) {
    return timerRunInDanger(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutTimerStateTimerInitial value)? timerInitial,
    TResult? Function(_WorkoutTimerStateTimerRunInProgress value)? timerRunInProgress,
    TResult? Function(_WorkoutTimerStateTimerRunInDanger value)? timerRunInDanger,
    TResult? Function(_WorkoutTimerStateTimerRunComplete value)? timerRunComplete,
  }) {
    return timerRunInDanger?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutTimerStateTimerInitial value)? timerInitial,
    TResult Function(_WorkoutTimerStateTimerRunInProgress value)? timerRunInProgress,
    TResult Function(_WorkoutTimerStateTimerRunInDanger value)? timerRunInDanger,
    TResult Function(_WorkoutTimerStateTimerRunComplete value)? timerRunComplete,
    required TResult orElse(),
  }) {
    if (timerRunInDanger != null) {
      return timerRunInDanger(this);
    }
    return orElse();
  }
}

abstract class _WorkoutTimerStateTimerRunInDanger implements WorkoutTimerState {
  const factory _WorkoutTimerStateTimerRunInDanger({final Duration duration}) = _$_WorkoutTimerStateTimerRunInDanger;

  @override
  Duration get duration;
  @override
  @JsonKey(ignore: true)
  _$$_WorkoutTimerStateTimerRunInDangerCopyWith<_$_WorkoutTimerStateTimerRunInDanger> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WorkoutTimerStateTimerRunCompleteCopyWith<$Res> implements $WorkoutTimerStateCopyWith<$Res> {
  factory _$$_WorkoutTimerStateTimerRunCompleteCopyWith(
          _$_WorkoutTimerStateTimerRunComplete value, $Res Function(_$_WorkoutTimerStateTimerRunComplete) then) =
      __$$_WorkoutTimerStateTimerRunCompleteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$_WorkoutTimerStateTimerRunCompleteCopyWithImpl<$Res>
    extends _$WorkoutTimerStateCopyWithImpl<$Res, _$_WorkoutTimerStateTimerRunComplete>
    implements _$$_WorkoutTimerStateTimerRunCompleteCopyWith<$Res> {
  __$$_WorkoutTimerStateTimerRunCompleteCopyWithImpl(
      _$_WorkoutTimerStateTimerRunComplete _value, $Res Function(_$_WorkoutTimerStateTimerRunComplete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$_WorkoutTimerStateTimerRunComplete(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_WorkoutTimerStateTimerRunComplete implements _WorkoutTimerStateTimerRunComplete {
  const _$_WorkoutTimerStateTimerRunComplete({this.duration = const Duration(seconds: 60)});

  @override
  @JsonKey()
  final Duration duration;

  @override
  String toString() {
    return 'WorkoutTimerState.timerRunComplete(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutTimerStateTimerRunComplete &&
            (identical(other.duration, duration) || other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutTimerStateTimerRunCompleteCopyWith<_$_WorkoutTimerStateTimerRunComplete> get copyWith =>
      __$$_WorkoutTimerStateTimerRunCompleteCopyWithImpl<_$_WorkoutTimerStateTimerRunComplete>(this, _$identity);

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
    required TResult Function(_WorkoutTimerStateTimerInitial value) timerInitial,
    required TResult Function(_WorkoutTimerStateTimerRunInProgress value) timerRunInProgress,
    required TResult Function(_WorkoutTimerStateTimerRunInDanger value) timerRunInDanger,
    required TResult Function(_WorkoutTimerStateTimerRunComplete value) timerRunComplete,
  }) {
    return timerRunComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutTimerStateTimerInitial value)? timerInitial,
    TResult? Function(_WorkoutTimerStateTimerRunInProgress value)? timerRunInProgress,
    TResult? Function(_WorkoutTimerStateTimerRunInDanger value)? timerRunInDanger,
    TResult? Function(_WorkoutTimerStateTimerRunComplete value)? timerRunComplete,
  }) {
    return timerRunComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutTimerStateTimerInitial value)? timerInitial,
    TResult Function(_WorkoutTimerStateTimerRunInProgress value)? timerRunInProgress,
    TResult Function(_WorkoutTimerStateTimerRunInDanger value)? timerRunInDanger,
    TResult Function(_WorkoutTimerStateTimerRunComplete value)? timerRunComplete,
    required TResult orElse(),
  }) {
    if (timerRunComplete != null) {
      return timerRunComplete(this);
    }
    return orElse();
  }
}

abstract class _WorkoutTimerStateTimerRunComplete implements WorkoutTimerState {
  const factory _WorkoutTimerStateTimerRunComplete({final Duration duration}) = _$_WorkoutTimerStateTimerRunComplete;

  @override
  Duration get duration;
  @override
  @JsonKey(ignore: true)
  _$$_WorkoutTimerStateTimerRunCompleteCopyWith<_$_WorkoutTimerStateTimerRunComplete> get copyWith =>
      throw _privateConstructorUsedError;
}
