// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WorkoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String workoutUuid) getWorkout,
    required TResult Function(Workout workout) setWorkout,
    required TResult Function(Workout workout) cancelWorkout,
    required TResult Function(Workout workout) startWorkout,
    required TResult Function(Workout workout) finishWorkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String workoutUuid)? getWorkout,
    TResult? Function(Workout workout)? setWorkout,
    TResult? Function(Workout workout)? cancelWorkout,
    TResult? Function(Workout workout)? startWorkout,
    TResult? Function(Workout workout)? finishWorkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String workoutUuid)? getWorkout,
    TResult Function(Workout workout)? setWorkout,
    TResult Function(Workout workout)? cancelWorkout,
    TResult Function(Workout workout)? startWorkout,
    TResult Function(Workout workout)? finishWorkout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutEventGetWorkout value) getWorkout,
    required TResult Function(_WorkoutEventSetWorkout value) setWorkout,
    required TResult Function(_WorkoutEventCancelWorkout value) cancelWorkout,
    required TResult Function(_WorkoutEventStartWorkout value) startWorkout,
    required TResult Function(_WorkoutEventFinishWorkout value) finishWorkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutEventGetWorkout value)? getWorkout,
    TResult? Function(_WorkoutEventSetWorkout value)? setWorkout,
    TResult? Function(_WorkoutEventCancelWorkout value)? cancelWorkout,
    TResult? Function(_WorkoutEventStartWorkout value)? startWorkout,
    TResult? Function(_WorkoutEventFinishWorkout value)? finishWorkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutEventGetWorkout value)? getWorkout,
    TResult Function(_WorkoutEventSetWorkout value)? setWorkout,
    TResult Function(_WorkoutEventCancelWorkout value)? cancelWorkout,
    TResult Function(_WorkoutEventStartWorkout value)? startWorkout,
    TResult Function(_WorkoutEventFinishWorkout value)? finishWorkout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutEventCopyWith<$Res> {
  factory $WorkoutEventCopyWith(
          WorkoutEvent value, $Res Function(WorkoutEvent) then) =
      _$WorkoutEventCopyWithImpl<$Res, WorkoutEvent>;
}

/// @nodoc
class _$WorkoutEventCopyWithImpl<$Res, $Val extends WorkoutEvent>
    implements $WorkoutEventCopyWith<$Res> {
  _$WorkoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WorkoutEventGetWorkoutCopyWith<$Res> {
  factory _$$_WorkoutEventGetWorkoutCopyWith(_$_WorkoutEventGetWorkout value,
          $Res Function(_$_WorkoutEventGetWorkout) then) =
      __$$_WorkoutEventGetWorkoutCopyWithImpl<$Res>;
  @useResult
  $Res call({String workoutUuid});
}

/// @nodoc
class __$$_WorkoutEventGetWorkoutCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res, _$_WorkoutEventGetWorkout>
    implements _$$_WorkoutEventGetWorkoutCopyWith<$Res> {
  __$$_WorkoutEventGetWorkoutCopyWithImpl(_$_WorkoutEventGetWorkout _value,
      $Res Function(_$_WorkoutEventGetWorkout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutUuid = null,
  }) {
    return _then(_$_WorkoutEventGetWorkout(
      workoutUuid: null == workoutUuid
          ? _value.workoutUuid
          : workoutUuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WorkoutEventGetWorkout implements _WorkoutEventGetWorkout {
  const _$_WorkoutEventGetWorkout({required this.workoutUuid});

  @override
  final String workoutUuid;

  @override
  String toString() {
    return 'WorkoutEvent.getWorkout(workoutUuid: $workoutUuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutEventGetWorkout &&
            (identical(other.workoutUuid, workoutUuid) ||
                other.workoutUuid == workoutUuid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workoutUuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutEventGetWorkoutCopyWith<_$_WorkoutEventGetWorkout> get copyWith =>
      __$$_WorkoutEventGetWorkoutCopyWithImpl<_$_WorkoutEventGetWorkout>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String workoutUuid) getWorkout,
    required TResult Function(Workout workout) setWorkout,
    required TResult Function(Workout workout) cancelWorkout,
    required TResult Function(Workout workout) startWorkout,
    required TResult Function(Workout workout) finishWorkout,
  }) {
    return getWorkout(workoutUuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String workoutUuid)? getWorkout,
    TResult? Function(Workout workout)? setWorkout,
    TResult? Function(Workout workout)? cancelWorkout,
    TResult? Function(Workout workout)? startWorkout,
    TResult? Function(Workout workout)? finishWorkout,
  }) {
    return getWorkout?.call(workoutUuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String workoutUuid)? getWorkout,
    TResult Function(Workout workout)? setWorkout,
    TResult Function(Workout workout)? cancelWorkout,
    TResult Function(Workout workout)? startWorkout,
    TResult Function(Workout workout)? finishWorkout,
    required TResult orElse(),
  }) {
    if (getWorkout != null) {
      return getWorkout(workoutUuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutEventGetWorkout value) getWorkout,
    required TResult Function(_WorkoutEventSetWorkout value) setWorkout,
    required TResult Function(_WorkoutEventCancelWorkout value) cancelWorkout,
    required TResult Function(_WorkoutEventStartWorkout value) startWorkout,
    required TResult Function(_WorkoutEventFinishWorkout value) finishWorkout,
  }) {
    return getWorkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutEventGetWorkout value)? getWorkout,
    TResult? Function(_WorkoutEventSetWorkout value)? setWorkout,
    TResult? Function(_WorkoutEventCancelWorkout value)? cancelWorkout,
    TResult? Function(_WorkoutEventStartWorkout value)? startWorkout,
    TResult? Function(_WorkoutEventFinishWorkout value)? finishWorkout,
  }) {
    return getWorkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutEventGetWorkout value)? getWorkout,
    TResult Function(_WorkoutEventSetWorkout value)? setWorkout,
    TResult Function(_WorkoutEventCancelWorkout value)? cancelWorkout,
    TResult Function(_WorkoutEventStartWorkout value)? startWorkout,
    TResult Function(_WorkoutEventFinishWorkout value)? finishWorkout,
    required TResult orElse(),
  }) {
    if (getWorkout != null) {
      return getWorkout(this);
    }
    return orElse();
  }
}

abstract class _WorkoutEventGetWorkout implements WorkoutEvent {
  const factory _WorkoutEventGetWorkout({required final String workoutUuid}) =
      _$_WorkoutEventGetWorkout;

  String get workoutUuid;
  @JsonKey(ignore: true)
  _$$_WorkoutEventGetWorkoutCopyWith<_$_WorkoutEventGetWorkout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WorkoutEventSetWorkoutCopyWith<$Res> {
  factory _$$_WorkoutEventSetWorkoutCopyWith(_$_WorkoutEventSetWorkout value,
          $Res Function(_$_WorkoutEventSetWorkout) then) =
      __$$_WorkoutEventSetWorkoutCopyWithImpl<$Res>;
  @useResult
  $Res call({Workout workout});

  $WorkoutCopyWith<$Res> get workout;
}

/// @nodoc
class __$$_WorkoutEventSetWorkoutCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res, _$_WorkoutEventSetWorkout>
    implements _$$_WorkoutEventSetWorkoutCopyWith<$Res> {
  __$$_WorkoutEventSetWorkoutCopyWithImpl(_$_WorkoutEventSetWorkout _value,
      $Res Function(_$_WorkoutEventSetWorkout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workout = null,
  }) {
    return _then(_$_WorkoutEventSetWorkout(
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

class _$_WorkoutEventSetWorkout implements _WorkoutEventSetWorkout {
  const _$_WorkoutEventSetWorkout({required this.workout});

  @override
  final Workout workout;

  @override
  String toString() {
    return 'WorkoutEvent.setWorkout(workout: $workout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutEventSetWorkout &&
            (identical(other.workout, workout) || other.workout == workout));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutEventSetWorkoutCopyWith<_$_WorkoutEventSetWorkout> get copyWith =>
      __$$_WorkoutEventSetWorkoutCopyWithImpl<_$_WorkoutEventSetWorkout>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String workoutUuid) getWorkout,
    required TResult Function(Workout workout) setWorkout,
    required TResult Function(Workout workout) cancelWorkout,
    required TResult Function(Workout workout) startWorkout,
    required TResult Function(Workout workout) finishWorkout,
  }) {
    return setWorkout(workout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String workoutUuid)? getWorkout,
    TResult? Function(Workout workout)? setWorkout,
    TResult? Function(Workout workout)? cancelWorkout,
    TResult? Function(Workout workout)? startWorkout,
    TResult? Function(Workout workout)? finishWorkout,
  }) {
    return setWorkout?.call(workout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String workoutUuid)? getWorkout,
    TResult Function(Workout workout)? setWorkout,
    TResult Function(Workout workout)? cancelWorkout,
    TResult Function(Workout workout)? startWorkout,
    TResult Function(Workout workout)? finishWorkout,
    required TResult orElse(),
  }) {
    if (setWorkout != null) {
      return setWorkout(workout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutEventGetWorkout value) getWorkout,
    required TResult Function(_WorkoutEventSetWorkout value) setWorkout,
    required TResult Function(_WorkoutEventCancelWorkout value) cancelWorkout,
    required TResult Function(_WorkoutEventStartWorkout value) startWorkout,
    required TResult Function(_WorkoutEventFinishWorkout value) finishWorkout,
  }) {
    return setWorkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutEventGetWorkout value)? getWorkout,
    TResult? Function(_WorkoutEventSetWorkout value)? setWorkout,
    TResult? Function(_WorkoutEventCancelWorkout value)? cancelWorkout,
    TResult? Function(_WorkoutEventStartWorkout value)? startWorkout,
    TResult? Function(_WorkoutEventFinishWorkout value)? finishWorkout,
  }) {
    return setWorkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutEventGetWorkout value)? getWorkout,
    TResult Function(_WorkoutEventSetWorkout value)? setWorkout,
    TResult Function(_WorkoutEventCancelWorkout value)? cancelWorkout,
    TResult Function(_WorkoutEventStartWorkout value)? startWorkout,
    TResult Function(_WorkoutEventFinishWorkout value)? finishWorkout,
    required TResult orElse(),
  }) {
    if (setWorkout != null) {
      return setWorkout(this);
    }
    return orElse();
  }
}

abstract class _WorkoutEventSetWorkout implements WorkoutEvent {
  const factory _WorkoutEventSetWorkout({required final Workout workout}) =
      _$_WorkoutEventSetWorkout;

  Workout get workout;
  @JsonKey(ignore: true)
  _$$_WorkoutEventSetWorkoutCopyWith<_$_WorkoutEventSetWorkout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WorkoutEventCancelWorkoutCopyWith<$Res> {
  factory _$$_WorkoutEventCancelWorkoutCopyWith(
          _$_WorkoutEventCancelWorkout value,
          $Res Function(_$_WorkoutEventCancelWorkout) then) =
      __$$_WorkoutEventCancelWorkoutCopyWithImpl<$Res>;
  @useResult
  $Res call({Workout workout});

  $WorkoutCopyWith<$Res> get workout;
}

/// @nodoc
class __$$_WorkoutEventCancelWorkoutCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res, _$_WorkoutEventCancelWorkout>
    implements _$$_WorkoutEventCancelWorkoutCopyWith<$Res> {
  __$$_WorkoutEventCancelWorkoutCopyWithImpl(
      _$_WorkoutEventCancelWorkout _value,
      $Res Function(_$_WorkoutEventCancelWorkout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workout = null,
  }) {
    return _then(_$_WorkoutEventCancelWorkout(
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

class _$_WorkoutEventCancelWorkout implements _WorkoutEventCancelWorkout {
  const _$_WorkoutEventCancelWorkout({required this.workout});

  @override
  final Workout workout;

  @override
  String toString() {
    return 'WorkoutEvent.cancelWorkout(workout: $workout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutEventCancelWorkout &&
            (identical(other.workout, workout) || other.workout == workout));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutEventCancelWorkoutCopyWith<_$_WorkoutEventCancelWorkout>
      get copyWith => __$$_WorkoutEventCancelWorkoutCopyWithImpl<
          _$_WorkoutEventCancelWorkout>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String workoutUuid) getWorkout,
    required TResult Function(Workout workout) setWorkout,
    required TResult Function(Workout workout) cancelWorkout,
    required TResult Function(Workout workout) startWorkout,
    required TResult Function(Workout workout) finishWorkout,
  }) {
    return cancelWorkout(workout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String workoutUuid)? getWorkout,
    TResult? Function(Workout workout)? setWorkout,
    TResult? Function(Workout workout)? cancelWorkout,
    TResult? Function(Workout workout)? startWorkout,
    TResult? Function(Workout workout)? finishWorkout,
  }) {
    return cancelWorkout?.call(workout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String workoutUuid)? getWorkout,
    TResult Function(Workout workout)? setWorkout,
    TResult Function(Workout workout)? cancelWorkout,
    TResult Function(Workout workout)? startWorkout,
    TResult Function(Workout workout)? finishWorkout,
    required TResult orElse(),
  }) {
    if (cancelWorkout != null) {
      return cancelWorkout(workout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutEventGetWorkout value) getWorkout,
    required TResult Function(_WorkoutEventSetWorkout value) setWorkout,
    required TResult Function(_WorkoutEventCancelWorkout value) cancelWorkout,
    required TResult Function(_WorkoutEventStartWorkout value) startWorkout,
    required TResult Function(_WorkoutEventFinishWorkout value) finishWorkout,
  }) {
    return cancelWorkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutEventGetWorkout value)? getWorkout,
    TResult? Function(_WorkoutEventSetWorkout value)? setWorkout,
    TResult? Function(_WorkoutEventCancelWorkout value)? cancelWorkout,
    TResult? Function(_WorkoutEventStartWorkout value)? startWorkout,
    TResult? Function(_WorkoutEventFinishWorkout value)? finishWorkout,
  }) {
    return cancelWorkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutEventGetWorkout value)? getWorkout,
    TResult Function(_WorkoutEventSetWorkout value)? setWorkout,
    TResult Function(_WorkoutEventCancelWorkout value)? cancelWorkout,
    TResult Function(_WorkoutEventStartWorkout value)? startWorkout,
    TResult Function(_WorkoutEventFinishWorkout value)? finishWorkout,
    required TResult orElse(),
  }) {
    if (cancelWorkout != null) {
      return cancelWorkout(this);
    }
    return orElse();
  }
}

abstract class _WorkoutEventCancelWorkout implements WorkoutEvent {
  const factory _WorkoutEventCancelWorkout({required final Workout workout}) =
      _$_WorkoutEventCancelWorkout;

  Workout get workout;
  @JsonKey(ignore: true)
  _$$_WorkoutEventCancelWorkoutCopyWith<_$_WorkoutEventCancelWorkout>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WorkoutEventStartWorkoutCopyWith<$Res> {
  factory _$$_WorkoutEventStartWorkoutCopyWith(
          _$_WorkoutEventStartWorkout value,
          $Res Function(_$_WorkoutEventStartWorkout) then) =
      __$$_WorkoutEventStartWorkoutCopyWithImpl<$Res>;
  @useResult
  $Res call({Workout workout});

  $WorkoutCopyWith<$Res> get workout;
}

/// @nodoc
class __$$_WorkoutEventStartWorkoutCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res, _$_WorkoutEventStartWorkout>
    implements _$$_WorkoutEventStartWorkoutCopyWith<$Res> {
  __$$_WorkoutEventStartWorkoutCopyWithImpl(_$_WorkoutEventStartWorkout _value,
      $Res Function(_$_WorkoutEventStartWorkout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workout = null,
  }) {
    return _then(_$_WorkoutEventStartWorkout(
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

class _$_WorkoutEventStartWorkout implements _WorkoutEventStartWorkout {
  const _$_WorkoutEventStartWorkout({required this.workout});

  @override
  final Workout workout;

  @override
  String toString() {
    return 'WorkoutEvent.startWorkout(workout: $workout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutEventStartWorkout &&
            (identical(other.workout, workout) || other.workout == workout));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutEventStartWorkoutCopyWith<_$_WorkoutEventStartWorkout>
      get copyWith => __$$_WorkoutEventStartWorkoutCopyWithImpl<
          _$_WorkoutEventStartWorkout>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String workoutUuid) getWorkout,
    required TResult Function(Workout workout) setWorkout,
    required TResult Function(Workout workout) cancelWorkout,
    required TResult Function(Workout workout) startWorkout,
    required TResult Function(Workout workout) finishWorkout,
  }) {
    return startWorkout(workout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String workoutUuid)? getWorkout,
    TResult? Function(Workout workout)? setWorkout,
    TResult? Function(Workout workout)? cancelWorkout,
    TResult? Function(Workout workout)? startWorkout,
    TResult? Function(Workout workout)? finishWorkout,
  }) {
    return startWorkout?.call(workout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String workoutUuid)? getWorkout,
    TResult Function(Workout workout)? setWorkout,
    TResult Function(Workout workout)? cancelWorkout,
    TResult Function(Workout workout)? startWorkout,
    TResult Function(Workout workout)? finishWorkout,
    required TResult orElse(),
  }) {
    if (startWorkout != null) {
      return startWorkout(workout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutEventGetWorkout value) getWorkout,
    required TResult Function(_WorkoutEventSetWorkout value) setWorkout,
    required TResult Function(_WorkoutEventCancelWorkout value) cancelWorkout,
    required TResult Function(_WorkoutEventStartWorkout value) startWorkout,
    required TResult Function(_WorkoutEventFinishWorkout value) finishWorkout,
  }) {
    return startWorkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutEventGetWorkout value)? getWorkout,
    TResult? Function(_WorkoutEventSetWorkout value)? setWorkout,
    TResult? Function(_WorkoutEventCancelWorkout value)? cancelWorkout,
    TResult? Function(_WorkoutEventStartWorkout value)? startWorkout,
    TResult? Function(_WorkoutEventFinishWorkout value)? finishWorkout,
  }) {
    return startWorkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutEventGetWorkout value)? getWorkout,
    TResult Function(_WorkoutEventSetWorkout value)? setWorkout,
    TResult Function(_WorkoutEventCancelWorkout value)? cancelWorkout,
    TResult Function(_WorkoutEventStartWorkout value)? startWorkout,
    TResult Function(_WorkoutEventFinishWorkout value)? finishWorkout,
    required TResult orElse(),
  }) {
    if (startWorkout != null) {
      return startWorkout(this);
    }
    return orElse();
  }
}

abstract class _WorkoutEventStartWorkout implements WorkoutEvent {
  const factory _WorkoutEventStartWorkout({required final Workout workout}) =
      _$_WorkoutEventStartWorkout;

  Workout get workout;
  @JsonKey(ignore: true)
  _$$_WorkoutEventStartWorkoutCopyWith<_$_WorkoutEventStartWorkout>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WorkoutEventFinishWorkoutCopyWith<$Res> {
  factory _$$_WorkoutEventFinishWorkoutCopyWith(
          _$_WorkoutEventFinishWorkout value,
          $Res Function(_$_WorkoutEventFinishWorkout) then) =
      __$$_WorkoutEventFinishWorkoutCopyWithImpl<$Res>;
  @useResult
  $Res call({Workout workout});

  $WorkoutCopyWith<$Res> get workout;
}

/// @nodoc
class __$$_WorkoutEventFinishWorkoutCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res, _$_WorkoutEventFinishWorkout>
    implements _$$_WorkoutEventFinishWorkoutCopyWith<$Res> {
  __$$_WorkoutEventFinishWorkoutCopyWithImpl(
      _$_WorkoutEventFinishWorkout _value,
      $Res Function(_$_WorkoutEventFinishWorkout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workout = null,
  }) {
    return _then(_$_WorkoutEventFinishWorkout(
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

class _$_WorkoutEventFinishWorkout implements _WorkoutEventFinishWorkout {
  const _$_WorkoutEventFinishWorkout({required this.workout});

  @override
  final Workout workout;

  @override
  String toString() {
    return 'WorkoutEvent.finishWorkout(workout: $workout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutEventFinishWorkout &&
            (identical(other.workout, workout) || other.workout == workout));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutEventFinishWorkoutCopyWith<_$_WorkoutEventFinishWorkout>
      get copyWith => __$$_WorkoutEventFinishWorkoutCopyWithImpl<
          _$_WorkoutEventFinishWorkout>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String workoutUuid) getWorkout,
    required TResult Function(Workout workout) setWorkout,
    required TResult Function(Workout workout) cancelWorkout,
    required TResult Function(Workout workout) startWorkout,
    required TResult Function(Workout workout) finishWorkout,
  }) {
    return finishWorkout(workout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String workoutUuid)? getWorkout,
    TResult? Function(Workout workout)? setWorkout,
    TResult? Function(Workout workout)? cancelWorkout,
    TResult? Function(Workout workout)? startWorkout,
    TResult? Function(Workout workout)? finishWorkout,
  }) {
    return finishWorkout?.call(workout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String workoutUuid)? getWorkout,
    TResult Function(Workout workout)? setWorkout,
    TResult Function(Workout workout)? cancelWorkout,
    TResult Function(Workout workout)? startWorkout,
    TResult Function(Workout workout)? finishWorkout,
    required TResult orElse(),
  }) {
    if (finishWorkout != null) {
      return finishWorkout(workout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutEventGetWorkout value) getWorkout,
    required TResult Function(_WorkoutEventSetWorkout value) setWorkout,
    required TResult Function(_WorkoutEventCancelWorkout value) cancelWorkout,
    required TResult Function(_WorkoutEventStartWorkout value) startWorkout,
    required TResult Function(_WorkoutEventFinishWorkout value) finishWorkout,
  }) {
    return finishWorkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutEventGetWorkout value)? getWorkout,
    TResult? Function(_WorkoutEventSetWorkout value)? setWorkout,
    TResult? Function(_WorkoutEventCancelWorkout value)? cancelWorkout,
    TResult? Function(_WorkoutEventStartWorkout value)? startWorkout,
    TResult? Function(_WorkoutEventFinishWorkout value)? finishWorkout,
  }) {
    return finishWorkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutEventGetWorkout value)? getWorkout,
    TResult Function(_WorkoutEventSetWorkout value)? setWorkout,
    TResult Function(_WorkoutEventCancelWorkout value)? cancelWorkout,
    TResult Function(_WorkoutEventStartWorkout value)? startWorkout,
    TResult Function(_WorkoutEventFinishWorkout value)? finishWorkout,
    required TResult orElse(),
  }) {
    if (finishWorkout != null) {
      return finishWorkout(this);
    }
    return orElse();
  }
}

abstract class _WorkoutEventFinishWorkout implements WorkoutEvent {
  const factory _WorkoutEventFinishWorkout({required final Workout workout}) =
      _$_WorkoutEventFinishWorkout;

  Workout get workout;
  @JsonKey(ignore: true)
  _$$_WorkoutEventFinishWorkoutCopyWith<_$_WorkoutEventFinishWorkout>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WorkoutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Workout workout) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Workout workout)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Workout workout)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutStateInitial value) initial,
    required TResult Function(_WorkoutStateLoaded value) loaded,
    required TResult Function(_WorkoutStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutStateInitial value)? initial,
    TResult? Function(_WorkoutStateLoaded value)? loaded,
    TResult? Function(_WorkoutStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutStateInitial value)? initial,
    TResult Function(_WorkoutStateLoaded value)? loaded,
    TResult Function(_WorkoutStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutStateCopyWith<$Res> {
  factory $WorkoutStateCopyWith(
          WorkoutState value, $Res Function(WorkoutState) then) =
      _$WorkoutStateCopyWithImpl<$Res, WorkoutState>;
}

/// @nodoc
class _$WorkoutStateCopyWithImpl<$Res, $Val extends WorkoutState>
    implements $WorkoutStateCopyWith<$Res> {
  _$WorkoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WorkoutStateInitialCopyWith<$Res> {
  factory _$$_WorkoutStateInitialCopyWith(_$_WorkoutStateInitial value,
          $Res Function(_$_WorkoutStateInitial) then) =
      __$$_WorkoutStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WorkoutStateInitialCopyWithImpl<$Res>
    extends _$WorkoutStateCopyWithImpl<$Res, _$_WorkoutStateInitial>
    implements _$$_WorkoutStateInitialCopyWith<$Res> {
  __$$_WorkoutStateInitialCopyWithImpl(_$_WorkoutStateInitial _value,
      $Res Function(_$_WorkoutStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WorkoutStateInitial implements _WorkoutStateInitial {
  const _$_WorkoutStateInitial();

  @override
  String toString() {
    return 'WorkoutState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WorkoutStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Workout workout) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Workout workout)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Workout workout)? loaded,
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
    required TResult Function(_WorkoutStateInitial value) initial,
    required TResult Function(_WorkoutStateLoaded value) loaded,
    required TResult Function(_WorkoutStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutStateInitial value)? initial,
    TResult? Function(_WorkoutStateLoaded value)? loaded,
    TResult? Function(_WorkoutStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutStateInitial value)? initial,
    TResult Function(_WorkoutStateLoaded value)? loaded,
    TResult Function(_WorkoutStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _WorkoutStateInitial implements WorkoutState {
  const factory _WorkoutStateInitial() = _$_WorkoutStateInitial;
}

/// @nodoc
abstract class _$$_WorkoutStateLoadedCopyWith<$Res> {
  factory _$$_WorkoutStateLoadedCopyWith(_$_WorkoutStateLoaded value,
          $Res Function(_$_WorkoutStateLoaded) then) =
      __$$_WorkoutStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Workout workout});

  $WorkoutCopyWith<$Res> get workout;
}

/// @nodoc
class __$$_WorkoutStateLoadedCopyWithImpl<$Res>
    extends _$WorkoutStateCopyWithImpl<$Res, _$_WorkoutStateLoaded>
    implements _$$_WorkoutStateLoadedCopyWith<$Res> {
  __$$_WorkoutStateLoadedCopyWithImpl(
      _$_WorkoutStateLoaded _value, $Res Function(_$_WorkoutStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workout = null,
  }) {
    return _then(_$_WorkoutStateLoaded(
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

class _$_WorkoutStateLoaded implements _WorkoutStateLoaded {
  const _$_WorkoutStateLoaded({required this.workout});

  @override
  final Workout workout;

  @override
  String toString() {
    return 'WorkoutState.loaded(workout: $workout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutStateLoaded &&
            (identical(other.workout, workout) || other.workout == workout));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutStateLoadedCopyWith<_$_WorkoutStateLoaded> get copyWith =>
      __$$_WorkoutStateLoadedCopyWithImpl<_$_WorkoutStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Workout workout) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(workout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Workout workout)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(workout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Workout workout)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(workout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutStateInitial value) initial,
    required TResult Function(_WorkoutStateLoaded value) loaded,
    required TResult Function(_WorkoutStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutStateInitial value)? initial,
    TResult? Function(_WorkoutStateLoaded value)? loaded,
    TResult? Function(_WorkoutStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutStateInitial value)? initial,
    TResult Function(_WorkoutStateLoaded value)? loaded,
    TResult Function(_WorkoutStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _WorkoutStateLoaded implements WorkoutState {
  const factory _WorkoutStateLoaded({required final Workout workout}) =
      _$_WorkoutStateLoaded;

  Workout get workout;
  @JsonKey(ignore: true)
  _$$_WorkoutStateLoadedCopyWith<_$_WorkoutStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WorkoutStateErrorCopyWith<$Res> {
  factory _$$_WorkoutStateErrorCopyWith(_$_WorkoutStateError value,
          $Res Function(_$_WorkoutStateError) then) =
      __$$_WorkoutStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_WorkoutStateErrorCopyWithImpl<$Res>
    extends _$WorkoutStateCopyWithImpl<$Res, _$_WorkoutStateError>
    implements _$$_WorkoutStateErrorCopyWith<$Res> {
  __$$_WorkoutStateErrorCopyWithImpl(
      _$_WorkoutStateError _value, $Res Function(_$_WorkoutStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_WorkoutStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WorkoutStateError implements _WorkoutStateError {
  const _$_WorkoutStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'WorkoutState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutStateErrorCopyWith<_$_WorkoutStateError> get copyWith =>
      __$$_WorkoutStateErrorCopyWithImpl<_$_WorkoutStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Workout workout) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Workout workout)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Workout workout)? loaded,
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
    required TResult Function(_WorkoutStateInitial value) initial,
    required TResult Function(_WorkoutStateLoaded value) loaded,
    required TResult Function(_WorkoutStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutStateInitial value)? initial,
    TResult? Function(_WorkoutStateLoaded value)? loaded,
    TResult? Function(_WorkoutStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutStateInitial value)? initial,
    TResult Function(_WorkoutStateLoaded value)? loaded,
    TResult Function(_WorkoutStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _WorkoutStateError implements WorkoutState {
  const factory _WorkoutStateError({required final String error}) =
      _$_WorkoutStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_WorkoutStateErrorCopyWith<_$_WorkoutStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
