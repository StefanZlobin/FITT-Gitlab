// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workouts_archive_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WorkoutsArchiveEvent {
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
    required TResult Function(_WorkoutsArchiveEventGetWorkouts value)
        getWorkouts,
    required TResult Function(_WorkoutsArchiveEventSetWorkouts value)
        setWorkouts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutsArchiveEventGetWorkouts value)? getWorkouts,
    TResult? Function(_WorkoutsArchiveEventSetWorkouts value)? setWorkouts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutsArchiveEventGetWorkouts value)? getWorkouts,
    TResult Function(_WorkoutsArchiveEventSetWorkouts value)? setWorkouts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutsArchiveEventCopyWith<$Res> {
  factory $WorkoutsArchiveEventCopyWith(WorkoutsArchiveEvent value,
          $Res Function(WorkoutsArchiveEvent) then) =
      _$WorkoutsArchiveEventCopyWithImpl<$Res, WorkoutsArchiveEvent>;
}

/// @nodoc
class _$WorkoutsArchiveEventCopyWithImpl<$Res,
        $Val extends WorkoutsArchiveEvent>
    implements $WorkoutsArchiveEventCopyWith<$Res> {
  _$WorkoutsArchiveEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WorkoutsArchiveEventGetWorkoutsCopyWith<$Res> {
  factory _$$_WorkoutsArchiveEventGetWorkoutsCopyWith(
          _$_WorkoutsArchiveEventGetWorkouts value,
          $Res Function(_$_WorkoutsArchiveEventGetWorkouts) then) =
      __$$_WorkoutsArchiveEventGetWorkoutsCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkoutPhaseEnum workoutPhase, WorkoutSortingEnum workoutSorting});
}

/// @nodoc
class __$$_WorkoutsArchiveEventGetWorkoutsCopyWithImpl<$Res>
    extends _$WorkoutsArchiveEventCopyWithImpl<$Res,
        _$_WorkoutsArchiveEventGetWorkouts>
    implements _$$_WorkoutsArchiveEventGetWorkoutsCopyWith<$Res> {
  __$$_WorkoutsArchiveEventGetWorkoutsCopyWithImpl(
      _$_WorkoutsArchiveEventGetWorkouts _value,
      $Res Function(_$_WorkoutsArchiveEventGetWorkouts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutPhase = null,
    Object? workoutSorting = null,
  }) {
    return _then(_$_WorkoutsArchiveEventGetWorkouts(
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

class _$_WorkoutsArchiveEventGetWorkouts
    implements _WorkoutsArchiveEventGetWorkouts {
  const _$_WorkoutsArchiveEventGetWorkouts(
      {this.workoutPhase = WorkoutPhaseEnum.done,
      this.workoutSorting = WorkoutSortingEnum.newFirst});

  @override
  @JsonKey()
  final WorkoutPhaseEnum workoutPhase;
  @override
  @JsonKey()
  final WorkoutSortingEnum workoutSorting;

  @override
  String toString() {
    return 'WorkoutsArchiveEvent.getWorkouts(workoutPhase: $workoutPhase, workoutSorting: $workoutSorting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutsArchiveEventGetWorkouts &&
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
  _$$_WorkoutsArchiveEventGetWorkoutsCopyWith<
          _$_WorkoutsArchiveEventGetWorkouts>
      get copyWith => __$$_WorkoutsArchiveEventGetWorkoutsCopyWithImpl<
          _$_WorkoutsArchiveEventGetWorkouts>(this, _$identity);

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
    required TResult Function(_WorkoutsArchiveEventGetWorkouts value)
        getWorkouts,
    required TResult Function(_WorkoutsArchiveEventSetWorkouts value)
        setWorkouts,
  }) {
    return getWorkouts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutsArchiveEventGetWorkouts value)? getWorkouts,
    TResult? Function(_WorkoutsArchiveEventSetWorkouts value)? setWorkouts,
  }) {
    return getWorkouts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutsArchiveEventGetWorkouts value)? getWorkouts,
    TResult Function(_WorkoutsArchiveEventSetWorkouts value)? setWorkouts,
    required TResult orElse(),
  }) {
    if (getWorkouts != null) {
      return getWorkouts(this);
    }
    return orElse();
  }
}

abstract class _WorkoutsArchiveEventGetWorkouts
    implements WorkoutsArchiveEvent {
  const factory _WorkoutsArchiveEventGetWorkouts(
          {final WorkoutPhaseEnum workoutPhase,
          final WorkoutSortingEnum workoutSorting}) =
      _$_WorkoutsArchiveEventGetWorkouts;

  WorkoutPhaseEnum get workoutPhase;
  WorkoutSortingEnum get workoutSorting;
  @JsonKey(ignore: true)
  _$$_WorkoutsArchiveEventGetWorkoutsCopyWith<
          _$_WorkoutsArchiveEventGetWorkouts>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WorkoutsArchiveEventSetWorkoutsCopyWith<$Res> {
  factory _$$_WorkoutsArchiveEventSetWorkoutsCopyWith(
          _$_WorkoutsArchiveEventSetWorkouts value,
          $Res Function(_$_WorkoutsArchiveEventSetWorkouts) then) =
      __$$_WorkoutsArchiveEventSetWorkoutsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Workout> workouts});
}

/// @nodoc
class __$$_WorkoutsArchiveEventSetWorkoutsCopyWithImpl<$Res>
    extends _$WorkoutsArchiveEventCopyWithImpl<$Res,
        _$_WorkoutsArchiveEventSetWorkouts>
    implements _$$_WorkoutsArchiveEventSetWorkoutsCopyWith<$Res> {
  __$$_WorkoutsArchiveEventSetWorkoutsCopyWithImpl(
      _$_WorkoutsArchiveEventSetWorkouts _value,
      $Res Function(_$_WorkoutsArchiveEventSetWorkouts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workouts = null,
  }) {
    return _then(_$_WorkoutsArchiveEventSetWorkouts(
      workouts: null == workouts
          ? _value._workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as List<Workout>,
    ));
  }
}

/// @nodoc

class _$_WorkoutsArchiveEventSetWorkouts
    implements _WorkoutsArchiveEventSetWorkouts {
  const _$_WorkoutsArchiveEventSetWorkouts(
      {required final List<Workout> workouts})
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
    return 'WorkoutsArchiveEvent.setWorkouts(workouts: $workouts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutsArchiveEventSetWorkouts &&
            const DeepCollectionEquality().equals(other._workouts, _workouts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_workouts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutsArchiveEventSetWorkoutsCopyWith<
          _$_WorkoutsArchiveEventSetWorkouts>
      get copyWith => __$$_WorkoutsArchiveEventSetWorkoutsCopyWithImpl<
          _$_WorkoutsArchiveEventSetWorkouts>(this, _$identity);

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
    required TResult Function(_WorkoutsArchiveEventGetWorkouts value)
        getWorkouts,
    required TResult Function(_WorkoutsArchiveEventSetWorkouts value)
        setWorkouts,
  }) {
    return setWorkouts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutsArchiveEventGetWorkouts value)? getWorkouts,
    TResult? Function(_WorkoutsArchiveEventSetWorkouts value)? setWorkouts,
  }) {
    return setWorkouts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutsArchiveEventGetWorkouts value)? getWorkouts,
    TResult Function(_WorkoutsArchiveEventSetWorkouts value)? setWorkouts,
    required TResult orElse(),
  }) {
    if (setWorkouts != null) {
      return setWorkouts(this);
    }
    return orElse();
  }
}

abstract class _WorkoutsArchiveEventSetWorkouts
    implements WorkoutsArchiveEvent {
  const factory _WorkoutsArchiveEventSetWorkouts(
          {required final List<Workout> workouts}) =
      _$_WorkoutsArchiveEventSetWorkouts;

  List<Workout> get workouts;
  @JsonKey(ignore: true)
  _$$_WorkoutsArchiveEventSetWorkoutsCopyWith<
          _$_WorkoutsArchiveEventSetWorkouts>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WorkoutsArchiveState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Workout> prevWorkouts, bool isFirstFetch)
        loading,
    required TResult Function(List<Workout> workouts) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Workout> prevWorkouts, bool isFirstFetch)? loading,
    TResult? Function(List<Workout> workouts)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Workout> prevWorkouts, bool isFirstFetch)? loading,
    TResult Function(List<Workout> workouts)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutsArchiveStateInitial value) initial,
    required TResult Function(_WorkoutsArchiveStateLoading value) loading,
    required TResult Function(_WorkoutsArchiveStateLoaded value) loaded,
    required TResult Function(_WorkoutsArchiveStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutsArchiveStateInitial value)? initial,
    TResult? Function(_WorkoutsArchiveStateLoading value)? loading,
    TResult? Function(_WorkoutsArchiveStateLoaded value)? loaded,
    TResult? Function(_WorkoutsArchiveStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutsArchiveStateInitial value)? initial,
    TResult Function(_WorkoutsArchiveStateLoading value)? loading,
    TResult Function(_WorkoutsArchiveStateLoaded value)? loaded,
    TResult Function(_WorkoutsArchiveStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutsArchiveStateCopyWith<$Res> {
  factory $WorkoutsArchiveStateCopyWith(WorkoutsArchiveState value,
          $Res Function(WorkoutsArchiveState) then) =
      _$WorkoutsArchiveStateCopyWithImpl<$Res, WorkoutsArchiveState>;
}

/// @nodoc
class _$WorkoutsArchiveStateCopyWithImpl<$Res,
        $Val extends WorkoutsArchiveState>
    implements $WorkoutsArchiveStateCopyWith<$Res> {
  _$WorkoutsArchiveStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WorkoutsArchiveStateInitialCopyWith<$Res> {
  factory _$$_WorkoutsArchiveStateInitialCopyWith(
          _$_WorkoutsArchiveStateInitial value,
          $Res Function(_$_WorkoutsArchiveStateInitial) then) =
      __$$_WorkoutsArchiveStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WorkoutsArchiveStateInitialCopyWithImpl<$Res>
    extends _$WorkoutsArchiveStateCopyWithImpl<$Res,
        _$_WorkoutsArchiveStateInitial>
    implements _$$_WorkoutsArchiveStateInitialCopyWith<$Res> {
  __$$_WorkoutsArchiveStateInitialCopyWithImpl(
      _$_WorkoutsArchiveStateInitial _value,
      $Res Function(_$_WorkoutsArchiveStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WorkoutsArchiveStateInitial implements _WorkoutsArchiveStateInitial {
  const _$_WorkoutsArchiveStateInitial();

  @override
  String toString() {
    return 'WorkoutsArchiveState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutsArchiveStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Workout> prevWorkouts, bool isFirstFetch)
        loading,
    required TResult Function(List<Workout> workouts) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Workout> prevWorkouts, bool isFirstFetch)? loading,
    TResult? Function(List<Workout> workouts)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Workout> prevWorkouts, bool isFirstFetch)? loading,
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
    required TResult Function(_WorkoutsArchiveStateInitial value) initial,
    required TResult Function(_WorkoutsArchiveStateLoading value) loading,
    required TResult Function(_WorkoutsArchiveStateLoaded value) loaded,
    required TResult Function(_WorkoutsArchiveStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutsArchiveStateInitial value)? initial,
    TResult? Function(_WorkoutsArchiveStateLoading value)? loading,
    TResult? Function(_WorkoutsArchiveStateLoaded value)? loaded,
    TResult? Function(_WorkoutsArchiveStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutsArchiveStateInitial value)? initial,
    TResult Function(_WorkoutsArchiveStateLoading value)? loading,
    TResult Function(_WorkoutsArchiveStateLoaded value)? loaded,
    TResult Function(_WorkoutsArchiveStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _WorkoutsArchiveStateInitial implements WorkoutsArchiveState {
  const factory _WorkoutsArchiveStateInitial() = _$_WorkoutsArchiveStateInitial;
}

/// @nodoc
abstract class _$$_WorkoutsArchiveStateLoadingCopyWith<$Res> {
  factory _$$_WorkoutsArchiveStateLoadingCopyWith(
          _$_WorkoutsArchiveStateLoading value,
          $Res Function(_$_WorkoutsArchiveStateLoading) then) =
      __$$_WorkoutsArchiveStateLoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Workout> prevWorkouts, bool isFirstFetch});
}

/// @nodoc
class __$$_WorkoutsArchiveStateLoadingCopyWithImpl<$Res>
    extends _$WorkoutsArchiveStateCopyWithImpl<$Res,
        _$_WorkoutsArchiveStateLoading>
    implements _$$_WorkoutsArchiveStateLoadingCopyWith<$Res> {
  __$$_WorkoutsArchiveStateLoadingCopyWithImpl(
      _$_WorkoutsArchiveStateLoading _value,
      $Res Function(_$_WorkoutsArchiveStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prevWorkouts = null,
    Object? isFirstFetch = null,
  }) {
    return _then(_$_WorkoutsArchiveStateLoading(
      prevWorkouts: null == prevWorkouts
          ? _value._prevWorkouts
          : prevWorkouts // ignore: cast_nullable_to_non_nullable
              as List<Workout>,
      isFirstFetch: null == isFirstFetch
          ? _value.isFirstFetch
          : isFirstFetch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WorkoutsArchiveStateLoading implements _WorkoutsArchiveStateLoading {
  const _$_WorkoutsArchiveStateLoading(
      {required final List<Workout> prevWorkouts, required this.isFirstFetch})
      : _prevWorkouts = prevWorkouts;

  final List<Workout> _prevWorkouts;
  @override
  List<Workout> get prevWorkouts {
    if (_prevWorkouts is EqualUnmodifiableListView) return _prevWorkouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prevWorkouts);
  }

  @override
  final bool isFirstFetch;

  @override
  String toString() {
    return 'WorkoutsArchiveState.loading(prevWorkouts: $prevWorkouts, isFirstFetch: $isFirstFetch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutsArchiveStateLoading &&
            const DeepCollectionEquality()
                .equals(other._prevWorkouts, _prevWorkouts) &&
            (identical(other.isFirstFetch, isFirstFetch) ||
                other.isFirstFetch == isFirstFetch));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_prevWorkouts), isFirstFetch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutsArchiveStateLoadingCopyWith<_$_WorkoutsArchiveStateLoading>
      get copyWith => __$$_WorkoutsArchiveStateLoadingCopyWithImpl<
          _$_WorkoutsArchiveStateLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Workout> prevWorkouts, bool isFirstFetch)
        loading,
    required TResult Function(List<Workout> workouts) loaded,
    required TResult Function(String error) error,
  }) {
    return loading(prevWorkouts, isFirstFetch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Workout> prevWorkouts, bool isFirstFetch)? loading,
    TResult? Function(List<Workout> workouts)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call(prevWorkouts, isFirstFetch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Workout> prevWorkouts, bool isFirstFetch)? loading,
    TResult Function(List<Workout> workouts)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(prevWorkouts, isFirstFetch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutsArchiveStateInitial value) initial,
    required TResult Function(_WorkoutsArchiveStateLoading value) loading,
    required TResult Function(_WorkoutsArchiveStateLoaded value) loaded,
    required TResult Function(_WorkoutsArchiveStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutsArchiveStateInitial value)? initial,
    TResult? Function(_WorkoutsArchiveStateLoading value)? loading,
    TResult? Function(_WorkoutsArchiveStateLoaded value)? loaded,
    TResult? Function(_WorkoutsArchiveStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutsArchiveStateInitial value)? initial,
    TResult Function(_WorkoutsArchiveStateLoading value)? loading,
    TResult Function(_WorkoutsArchiveStateLoaded value)? loaded,
    TResult Function(_WorkoutsArchiveStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _WorkoutsArchiveStateLoading implements WorkoutsArchiveState {
  const factory _WorkoutsArchiveStateLoading(
      {required final List<Workout> prevWorkouts,
      required final bool isFirstFetch}) = _$_WorkoutsArchiveStateLoading;

  List<Workout> get prevWorkouts;
  bool get isFirstFetch;
  @JsonKey(ignore: true)
  _$$_WorkoutsArchiveStateLoadingCopyWith<_$_WorkoutsArchiveStateLoading>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WorkoutsArchiveStateLoadedCopyWith<$Res> {
  factory _$$_WorkoutsArchiveStateLoadedCopyWith(
          _$_WorkoutsArchiveStateLoaded value,
          $Res Function(_$_WorkoutsArchiveStateLoaded) then) =
      __$$_WorkoutsArchiveStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Workout> workouts});
}

/// @nodoc
class __$$_WorkoutsArchiveStateLoadedCopyWithImpl<$Res>
    extends _$WorkoutsArchiveStateCopyWithImpl<$Res,
        _$_WorkoutsArchiveStateLoaded>
    implements _$$_WorkoutsArchiveStateLoadedCopyWith<$Res> {
  __$$_WorkoutsArchiveStateLoadedCopyWithImpl(
      _$_WorkoutsArchiveStateLoaded _value,
      $Res Function(_$_WorkoutsArchiveStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workouts = null,
  }) {
    return _then(_$_WorkoutsArchiveStateLoaded(
      workouts: null == workouts
          ? _value._workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as List<Workout>,
    ));
  }
}

/// @nodoc

class _$_WorkoutsArchiveStateLoaded implements _WorkoutsArchiveStateLoaded {
  const _$_WorkoutsArchiveStateLoaded({required final List<Workout> workouts})
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
    return 'WorkoutsArchiveState.loaded(workouts: $workouts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutsArchiveStateLoaded &&
            const DeepCollectionEquality().equals(other._workouts, _workouts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_workouts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutsArchiveStateLoadedCopyWith<_$_WorkoutsArchiveStateLoaded>
      get copyWith => __$$_WorkoutsArchiveStateLoadedCopyWithImpl<
          _$_WorkoutsArchiveStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Workout> prevWorkouts, bool isFirstFetch)
        loading,
    required TResult Function(List<Workout> workouts) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(workouts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Workout> prevWorkouts, bool isFirstFetch)? loading,
    TResult? Function(List<Workout> workouts)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(workouts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Workout> prevWorkouts, bool isFirstFetch)? loading,
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
    required TResult Function(_WorkoutsArchiveStateInitial value) initial,
    required TResult Function(_WorkoutsArchiveStateLoading value) loading,
    required TResult Function(_WorkoutsArchiveStateLoaded value) loaded,
    required TResult Function(_WorkoutsArchiveStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutsArchiveStateInitial value)? initial,
    TResult? Function(_WorkoutsArchiveStateLoading value)? loading,
    TResult? Function(_WorkoutsArchiveStateLoaded value)? loaded,
    TResult? Function(_WorkoutsArchiveStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutsArchiveStateInitial value)? initial,
    TResult Function(_WorkoutsArchiveStateLoading value)? loading,
    TResult Function(_WorkoutsArchiveStateLoaded value)? loaded,
    TResult Function(_WorkoutsArchiveStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _WorkoutsArchiveStateLoaded implements WorkoutsArchiveState {
  const factory _WorkoutsArchiveStateLoaded(
      {required final List<Workout> workouts}) = _$_WorkoutsArchiveStateLoaded;

  List<Workout> get workouts;
  @JsonKey(ignore: true)
  _$$_WorkoutsArchiveStateLoadedCopyWith<_$_WorkoutsArchiveStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WorkoutsArchiveStateErrorCopyWith<$Res> {
  factory _$$_WorkoutsArchiveStateErrorCopyWith(
          _$_WorkoutsArchiveStateError value,
          $Res Function(_$_WorkoutsArchiveStateError) then) =
      __$$_WorkoutsArchiveStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_WorkoutsArchiveStateErrorCopyWithImpl<$Res>
    extends _$WorkoutsArchiveStateCopyWithImpl<$Res,
        _$_WorkoutsArchiveStateError>
    implements _$$_WorkoutsArchiveStateErrorCopyWith<$Res> {
  __$$_WorkoutsArchiveStateErrorCopyWithImpl(
      _$_WorkoutsArchiveStateError _value,
      $Res Function(_$_WorkoutsArchiveStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_WorkoutsArchiveStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WorkoutsArchiveStateError implements _WorkoutsArchiveStateError {
  const _$_WorkoutsArchiveStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'WorkoutsArchiveState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutsArchiveStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutsArchiveStateErrorCopyWith<_$_WorkoutsArchiveStateError>
      get copyWith => __$$_WorkoutsArchiveStateErrorCopyWithImpl<
          _$_WorkoutsArchiveStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Workout> prevWorkouts, bool isFirstFetch)
        loading,
    required TResult Function(List<Workout> workouts) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Workout> prevWorkouts, bool isFirstFetch)? loading,
    TResult? Function(List<Workout> workouts)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Workout> prevWorkouts, bool isFirstFetch)? loading,
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
    required TResult Function(_WorkoutsArchiveStateInitial value) initial,
    required TResult Function(_WorkoutsArchiveStateLoading value) loading,
    required TResult Function(_WorkoutsArchiveStateLoaded value) loaded,
    required TResult Function(_WorkoutsArchiveStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutsArchiveStateInitial value)? initial,
    TResult? Function(_WorkoutsArchiveStateLoading value)? loading,
    TResult? Function(_WorkoutsArchiveStateLoaded value)? loaded,
    TResult? Function(_WorkoutsArchiveStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutsArchiveStateInitial value)? initial,
    TResult Function(_WorkoutsArchiveStateLoading value)? loading,
    TResult Function(_WorkoutsArchiveStateLoaded value)? loaded,
    TResult Function(_WorkoutsArchiveStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _WorkoutsArchiveStateError implements WorkoutsArchiveState {
  const factory _WorkoutsArchiveStateError({required final String error}) =
      _$_WorkoutsArchiveStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_WorkoutsArchiveStateErrorCopyWith<_$_WorkoutsArchiveStateError>
      get copyWith => throw _privateConstructorUsedError;
}
