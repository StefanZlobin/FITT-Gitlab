// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workouts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WorkoutsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WorkoutPhaseEnum workoutPhase, WorkoutSortingEnum workoutSorting)
        getWorkouts,
    required TResult Function(List<Workout> workouts) setWorkouts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            WorkoutPhaseEnum workoutPhase, WorkoutSortingEnum workoutSorting)?
        getWorkouts,
    TResult? Function(List<Workout> workouts)? setWorkouts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            WorkoutPhaseEnum workoutPhase, WorkoutSortingEnum workoutSorting)?
        getWorkouts,
    TResult Function(List<Workout> workouts)? setWorkouts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutsEventGetWorkouts value) getWorkouts,
    required TResult Function(_WorkoutsEventSetWorkouts value) setWorkouts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutsEventGetWorkouts value)? getWorkouts,
    TResult? Function(_WorkoutsEventSetWorkouts value)? setWorkouts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutsEventGetWorkouts value)? getWorkouts,
    TResult Function(_WorkoutsEventSetWorkouts value)? setWorkouts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutsEventCopyWith<$Res> {
  factory $WorkoutsEventCopyWith(
          WorkoutsEvent value, $Res Function(WorkoutsEvent) then) =
      _$WorkoutsEventCopyWithImpl<$Res, WorkoutsEvent>;
}

/// @nodoc
class _$WorkoutsEventCopyWithImpl<$Res, $Val extends WorkoutsEvent>
    implements $WorkoutsEventCopyWith<$Res> {
  _$WorkoutsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WorkoutsEventGetWorkoutsCopyWith<$Res> {
  factory _$$_WorkoutsEventGetWorkoutsCopyWith(
          _$_WorkoutsEventGetWorkouts value,
          $Res Function(_$_WorkoutsEventGetWorkouts) then) =
      __$$_WorkoutsEventGetWorkoutsCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkoutPhaseEnum workoutPhase, WorkoutSortingEnum workoutSorting});
}

/// @nodoc
class __$$_WorkoutsEventGetWorkoutsCopyWithImpl<$Res>
    extends _$WorkoutsEventCopyWithImpl<$Res, _$_WorkoutsEventGetWorkouts>
    implements _$$_WorkoutsEventGetWorkoutsCopyWith<$Res> {
  __$$_WorkoutsEventGetWorkoutsCopyWithImpl(_$_WorkoutsEventGetWorkouts _value,
      $Res Function(_$_WorkoutsEventGetWorkouts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutPhase = null,
    Object? workoutSorting = null,
  }) {
    return _then(_$_WorkoutsEventGetWorkouts(
      workoutPhase: null == workoutPhase
          ? _value.workoutPhase
          : workoutPhase // ignore: cast_nullable_to_non_nullable
              as WorkoutPhaseEnum,
      workoutSorting: null == workoutSorting
          ? _value.workoutSorting
          : workoutSorting // ignore: cast_nullable_to_non_nullable
              as WorkoutSortingEnum,
    ));
  }
}

/// @nodoc

class _$_WorkoutsEventGetWorkouts implements _WorkoutsEventGetWorkouts {
  const _$_WorkoutsEventGetWorkouts(
      {this.workoutPhase = WorkoutPhaseEnum.planned,
      this.workoutSorting = WorkoutSortingEnum.oldFirst});

  @override
  @JsonKey()
  final WorkoutPhaseEnum workoutPhase;
  @override
  @JsonKey()
  final WorkoutSortingEnum workoutSorting;

  @override
  String toString() {
    return 'WorkoutsEvent.getWorkouts(workoutPhase: $workoutPhase, workoutSorting: $workoutSorting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutsEventGetWorkouts &&
            (identical(other.workoutPhase, workoutPhase) ||
                other.workoutPhase == workoutPhase) &&
            (identical(other.workoutSorting, workoutSorting) ||
                other.workoutSorting == workoutSorting));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workoutPhase, workoutSorting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutsEventGetWorkoutsCopyWith<_$_WorkoutsEventGetWorkouts>
      get copyWith => __$$_WorkoutsEventGetWorkoutsCopyWithImpl<
          _$_WorkoutsEventGetWorkouts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WorkoutPhaseEnum workoutPhase, WorkoutSortingEnum workoutSorting)
        getWorkouts,
    required TResult Function(List<Workout> workouts) setWorkouts,
  }) {
    return getWorkouts(workoutPhase, workoutSorting);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            WorkoutPhaseEnum workoutPhase, WorkoutSortingEnum workoutSorting)?
        getWorkouts,
    TResult? Function(List<Workout> workouts)? setWorkouts,
  }) {
    return getWorkouts?.call(workoutPhase, workoutSorting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            WorkoutPhaseEnum workoutPhase, WorkoutSortingEnum workoutSorting)?
        getWorkouts,
    TResult Function(List<Workout> workouts)? setWorkouts,
    required TResult orElse(),
  }) {
    if (getWorkouts != null) {
      return getWorkouts(workoutPhase, workoutSorting);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutsEventGetWorkouts value) getWorkouts,
    required TResult Function(_WorkoutsEventSetWorkouts value) setWorkouts,
  }) {
    return getWorkouts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutsEventGetWorkouts value)? getWorkouts,
    TResult? Function(_WorkoutsEventSetWorkouts value)? setWorkouts,
  }) {
    return getWorkouts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutsEventGetWorkouts value)? getWorkouts,
    TResult Function(_WorkoutsEventSetWorkouts value)? setWorkouts,
    required TResult orElse(),
  }) {
    if (getWorkouts != null) {
      return getWorkouts(this);
    }
    return orElse();
  }
}

abstract class _WorkoutsEventGetWorkouts implements WorkoutsEvent {
  const factory _WorkoutsEventGetWorkouts(
      {final WorkoutPhaseEnum workoutPhase,
      final WorkoutSortingEnum workoutSorting}) = _$_WorkoutsEventGetWorkouts;

  WorkoutPhaseEnum get workoutPhase;
  WorkoutSortingEnum get workoutSorting;
  @JsonKey(ignore: true)
  _$$_WorkoutsEventGetWorkoutsCopyWith<_$_WorkoutsEventGetWorkouts>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WorkoutsEventSetWorkoutsCopyWith<$Res> {
  factory _$$_WorkoutsEventSetWorkoutsCopyWith(
          _$_WorkoutsEventSetWorkouts value,
          $Res Function(_$_WorkoutsEventSetWorkouts) then) =
      __$$_WorkoutsEventSetWorkoutsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Workout> workouts});
}

/// @nodoc
class __$$_WorkoutsEventSetWorkoutsCopyWithImpl<$Res>
    extends _$WorkoutsEventCopyWithImpl<$Res, _$_WorkoutsEventSetWorkouts>
    implements _$$_WorkoutsEventSetWorkoutsCopyWith<$Res> {
  __$$_WorkoutsEventSetWorkoutsCopyWithImpl(_$_WorkoutsEventSetWorkouts _value,
      $Res Function(_$_WorkoutsEventSetWorkouts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workouts = null,
  }) {
    return _then(_$_WorkoutsEventSetWorkouts(
      workouts: null == workouts
          ? _value._workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as List<Workout>,
    ));
  }
}

/// @nodoc

class _$_WorkoutsEventSetWorkouts implements _WorkoutsEventSetWorkouts {
  const _$_WorkoutsEventSetWorkouts({required final List<Workout> workouts})
      : _workouts = workouts;

  final List<Workout> _workouts;
  @override
  List<Workout> get workouts {
    if (_workouts is EqualUnmodifiableListView) return _workouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workouts);
  }

  @override
  String toString() {
    return 'WorkoutsEvent.setWorkouts(workouts: $workouts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutsEventSetWorkouts &&
            const DeepCollectionEquality().equals(other._workouts, _workouts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_workouts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutsEventSetWorkoutsCopyWith<_$_WorkoutsEventSetWorkouts>
      get copyWith => __$$_WorkoutsEventSetWorkoutsCopyWithImpl<
          _$_WorkoutsEventSetWorkouts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WorkoutPhaseEnum workoutPhase, WorkoutSortingEnum workoutSorting)
        getWorkouts,
    required TResult Function(List<Workout> workouts) setWorkouts,
  }) {
    return setWorkouts(workouts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            WorkoutPhaseEnum workoutPhase, WorkoutSortingEnum workoutSorting)?
        getWorkouts,
    TResult? Function(List<Workout> workouts)? setWorkouts,
  }) {
    return setWorkouts?.call(workouts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            WorkoutPhaseEnum workoutPhase, WorkoutSortingEnum workoutSorting)?
        getWorkouts,
    TResult Function(List<Workout> workouts)? setWorkouts,
    required TResult orElse(),
  }) {
    if (setWorkouts != null) {
      return setWorkouts(workouts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutsEventGetWorkouts value) getWorkouts,
    required TResult Function(_WorkoutsEventSetWorkouts value) setWorkouts,
  }) {
    return setWorkouts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutsEventGetWorkouts value)? getWorkouts,
    TResult? Function(_WorkoutsEventSetWorkouts value)? setWorkouts,
  }) {
    return setWorkouts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutsEventGetWorkouts value)? getWorkouts,
    TResult Function(_WorkoutsEventSetWorkouts value)? setWorkouts,
    required TResult orElse(),
  }) {
    if (setWorkouts != null) {
      return setWorkouts(this);
    }
    return orElse();
  }
}

abstract class _WorkoutsEventSetWorkouts implements WorkoutsEvent {
  const factory _WorkoutsEventSetWorkouts(
      {required final List<Workout> workouts}) = _$_WorkoutsEventSetWorkouts;

  List<Workout> get workouts;
  @JsonKey(ignore: true)
  _$$_WorkoutsEventSetWorkoutsCopyWith<_$_WorkoutsEventSetWorkouts>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WorkoutsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Workout> workouts) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Workout> workouts)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Workout> workouts)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutsStateInitial value) initial,
    required TResult Function(_WorkoutsStateLoaded value) loaded,
    required TResult Function(_WorkoutsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutsStateInitial value)? initial,
    TResult? Function(_WorkoutsStateLoaded value)? loaded,
    TResult? Function(_WorkoutsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutsStateInitial value)? initial,
    TResult Function(_WorkoutsStateLoaded value)? loaded,
    TResult Function(_WorkoutsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutsStateCopyWith<$Res> {
  factory $WorkoutsStateCopyWith(
          WorkoutsState value, $Res Function(WorkoutsState) then) =
      _$WorkoutsStateCopyWithImpl<$Res, WorkoutsState>;
}

/// @nodoc
class _$WorkoutsStateCopyWithImpl<$Res, $Val extends WorkoutsState>
    implements $WorkoutsStateCopyWith<$Res> {
  _$WorkoutsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WorkoutsStateInitialCopyWith<$Res> {
  factory _$$_WorkoutsStateInitialCopyWith(_$_WorkoutsStateInitial value,
          $Res Function(_$_WorkoutsStateInitial) then) =
      __$$_WorkoutsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WorkoutsStateInitialCopyWithImpl<$Res>
    extends _$WorkoutsStateCopyWithImpl<$Res, _$_WorkoutsStateInitial>
    implements _$$_WorkoutsStateInitialCopyWith<$Res> {
  __$$_WorkoutsStateInitialCopyWithImpl(_$_WorkoutsStateInitial _value,
      $Res Function(_$_WorkoutsStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WorkoutsStateInitial implements _WorkoutsStateInitial {
  const _$_WorkoutsStateInitial();

  @override
  String toString() {
    return 'WorkoutsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WorkoutsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Workout> workouts) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Workout> workouts)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Workout> workouts)? loaded,
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
    required TResult Function(_WorkoutsStateInitial value) initial,
    required TResult Function(_WorkoutsStateLoaded value) loaded,
    required TResult Function(_WorkoutsStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutsStateInitial value)? initial,
    TResult? Function(_WorkoutsStateLoaded value)? loaded,
    TResult? Function(_WorkoutsStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutsStateInitial value)? initial,
    TResult Function(_WorkoutsStateLoaded value)? loaded,
    TResult Function(_WorkoutsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _WorkoutsStateInitial implements WorkoutsState {
  const factory _WorkoutsStateInitial() = _$_WorkoutsStateInitial;
}

/// @nodoc
abstract class _$$_WorkoutsStateLoadedCopyWith<$Res> {
  factory _$$_WorkoutsStateLoadedCopyWith(_$_WorkoutsStateLoaded value,
          $Res Function(_$_WorkoutsStateLoaded) then) =
      __$$_WorkoutsStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Workout> workouts});
}

/// @nodoc
class __$$_WorkoutsStateLoadedCopyWithImpl<$Res>
    extends _$WorkoutsStateCopyWithImpl<$Res, _$_WorkoutsStateLoaded>
    implements _$$_WorkoutsStateLoadedCopyWith<$Res> {
  __$$_WorkoutsStateLoadedCopyWithImpl(_$_WorkoutsStateLoaded _value,
      $Res Function(_$_WorkoutsStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workouts = null,
  }) {
    return _then(_$_WorkoutsStateLoaded(
      workouts: null == workouts
          ? _value._workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as List<Workout>,
    ));
  }
}

/// @nodoc

class _$_WorkoutsStateLoaded implements _WorkoutsStateLoaded {
  const _$_WorkoutsStateLoaded({required final List<Workout> workouts})
      : _workouts = workouts;

  final List<Workout> _workouts;
  @override
  List<Workout> get workouts {
    if (_workouts is EqualUnmodifiableListView) return _workouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workouts);
  }

  @override
  String toString() {
    return 'WorkoutsState.loaded(workouts: $workouts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutsStateLoaded &&
            const DeepCollectionEquality().equals(other._workouts, _workouts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_workouts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutsStateLoadedCopyWith<_$_WorkoutsStateLoaded> get copyWith =>
      __$$_WorkoutsStateLoadedCopyWithImpl<_$_WorkoutsStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Workout> workouts) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(workouts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Workout> workouts)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(workouts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Workout> workouts)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(workouts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutsStateInitial value) initial,
    required TResult Function(_WorkoutsStateLoaded value) loaded,
    required TResult Function(_WorkoutsStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutsStateInitial value)? initial,
    TResult? Function(_WorkoutsStateLoaded value)? loaded,
    TResult? Function(_WorkoutsStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutsStateInitial value)? initial,
    TResult Function(_WorkoutsStateLoaded value)? loaded,
    TResult Function(_WorkoutsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _WorkoutsStateLoaded implements WorkoutsState {
  const factory _WorkoutsStateLoaded({required final List<Workout> workouts}) =
      _$_WorkoutsStateLoaded;

  List<Workout> get workouts;
  @JsonKey(ignore: true)
  _$$_WorkoutsStateLoadedCopyWith<_$_WorkoutsStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WorkoutsStateErrorCopyWith<$Res> {
  factory _$$_WorkoutsStateErrorCopyWith(_$_WorkoutsStateError value,
          $Res Function(_$_WorkoutsStateError) then) =
      __$$_WorkoutsStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_WorkoutsStateErrorCopyWithImpl<$Res>
    extends _$WorkoutsStateCopyWithImpl<$Res, _$_WorkoutsStateError>
    implements _$$_WorkoutsStateErrorCopyWith<$Res> {
  __$$_WorkoutsStateErrorCopyWithImpl(
      _$_WorkoutsStateError _value, $Res Function(_$_WorkoutsStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_WorkoutsStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WorkoutsStateError implements _WorkoutsStateError {
  const _$_WorkoutsStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'WorkoutsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutsStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutsStateErrorCopyWith<_$_WorkoutsStateError> get copyWith =>
      __$$_WorkoutsStateErrorCopyWithImpl<_$_WorkoutsStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Workout> workouts) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Workout> workouts)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Workout> workouts)? loaded,
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
    required TResult Function(_WorkoutsStateInitial value) initial,
    required TResult Function(_WorkoutsStateLoaded value) loaded,
    required TResult Function(_WorkoutsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutsStateInitial value)? initial,
    TResult? Function(_WorkoutsStateLoaded value)? loaded,
    TResult? Function(_WorkoutsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutsStateInitial value)? initial,
    TResult Function(_WorkoutsStateLoaded value)? loaded,
    TResult Function(_WorkoutsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _WorkoutsStateError implements WorkoutsState {
  const factory _WorkoutsStateError({required final String error}) =
      _$_WorkoutsStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_WorkoutsStateErrorCopyWith<_$_WorkoutsStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
