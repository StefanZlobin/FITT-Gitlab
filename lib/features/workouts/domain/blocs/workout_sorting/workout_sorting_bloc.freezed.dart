// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_sorting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WorkoutSortingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkoutSortingEnum sortingItem) sortingChanged,
    required TResult Function(Map<WorkoutSortingEnum, bool> sortingItems)
        refreshState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkoutSortingEnum sortingItem)? sortingChanged,
    TResult? Function(Map<WorkoutSortingEnum, bool> sortingItems)? refreshState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkoutSortingEnum sortingItem)? sortingChanged,
    TResult Function(Map<WorkoutSortingEnum, bool> sortingItems)? refreshState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutSortingEventSortingChanged value)
        sortingChanged,
    required TResult Function(_WorkoutSortingEventRefreshState value)
        refreshState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutSortingEventSortingChanged value)? sortingChanged,
    TResult? Function(_WorkoutSortingEventRefreshState value)? refreshState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutSortingEventSortingChanged value)? sortingChanged,
    TResult Function(_WorkoutSortingEventRefreshState value)? refreshState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutSortingEventCopyWith<$Res> {
  factory $WorkoutSortingEventCopyWith(
          WorkoutSortingEvent value, $Res Function(WorkoutSortingEvent) then) =
      _$WorkoutSortingEventCopyWithImpl<$Res, WorkoutSortingEvent>;
}

/// @nodoc
class _$WorkoutSortingEventCopyWithImpl<$Res, $Val extends WorkoutSortingEvent>
    implements $WorkoutSortingEventCopyWith<$Res> {
  _$WorkoutSortingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WorkoutSortingEventSortingChangedCopyWith<$Res> {
  factory _$$_WorkoutSortingEventSortingChangedCopyWith(
          _$_WorkoutSortingEventSortingChanged value,
          $Res Function(_$_WorkoutSortingEventSortingChanged) then) =
      __$$_WorkoutSortingEventSortingChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkoutSortingEnum sortingItem});
}

/// @nodoc
class __$$_WorkoutSortingEventSortingChangedCopyWithImpl<$Res>
    extends _$WorkoutSortingEventCopyWithImpl<$Res,
        _$_WorkoutSortingEventSortingChanged>
    implements _$$_WorkoutSortingEventSortingChangedCopyWith<$Res> {
  __$$_WorkoutSortingEventSortingChangedCopyWithImpl(
      _$_WorkoutSortingEventSortingChanged _value,
      $Res Function(_$_WorkoutSortingEventSortingChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortingItem = null,
  }) {
    return _then(_$_WorkoutSortingEventSortingChanged(
      sortingItem: null == sortingItem
          ? _value.sortingItem
          : sortingItem // ignore: cast_nullable_to_non_nullable
              as WorkoutSortingEnum,
    ));
  }
}

/// @nodoc

class _$_WorkoutSortingEventSortingChanged
    implements _WorkoutSortingEventSortingChanged {
  const _$_WorkoutSortingEventSortingChanged({required this.sortingItem});

  @override
  final WorkoutSortingEnum sortingItem;

  @override
  String toString() {
    return 'WorkoutSortingEvent.sortingChanged(sortingItem: $sortingItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutSortingEventSortingChanged &&
            (identical(other.sortingItem, sortingItem) ||
                other.sortingItem == sortingItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortingItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutSortingEventSortingChangedCopyWith<
          _$_WorkoutSortingEventSortingChanged>
      get copyWith => __$$_WorkoutSortingEventSortingChangedCopyWithImpl<
          _$_WorkoutSortingEventSortingChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkoutSortingEnum sortingItem) sortingChanged,
    required TResult Function(Map<WorkoutSortingEnum, bool> sortingItems)
        refreshState,
  }) {
    return sortingChanged(sortingItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkoutSortingEnum sortingItem)? sortingChanged,
    TResult? Function(Map<WorkoutSortingEnum, bool> sortingItems)? refreshState,
  }) {
    return sortingChanged?.call(sortingItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkoutSortingEnum sortingItem)? sortingChanged,
    TResult Function(Map<WorkoutSortingEnum, bool> sortingItems)? refreshState,
    required TResult orElse(),
  }) {
    if (sortingChanged != null) {
      return sortingChanged(sortingItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutSortingEventSortingChanged value)
        sortingChanged,
    required TResult Function(_WorkoutSortingEventRefreshState value)
        refreshState,
  }) {
    return sortingChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutSortingEventSortingChanged value)? sortingChanged,
    TResult? Function(_WorkoutSortingEventRefreshState value)? refreshState,
  }) {
    return sortingChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutSortingEventSortingChanged value)? sortingChanged,
    TResult Function(_WorkoutSortingEventRefreshState value)? refreshState,
    required TResult orElse(),
  }) {
    if (sortingChanged != null) {
      return sortingChanged(this);
    }
    return orElse();
  }
}

abstract class _WorkoutSortingEventSortingChanged
    implements WorkoutSortingEvent {
  const factory _WorkoutSortingEventSortingChanged(
          {required final WorkoutSortingEnum sortingItem}) =
      _$_WorkoutSortingEventSortingChanged;

  WorkoutSortingEnum get sortingItem;
  @JsonKey(ignore: true)
  _$$_WorkoutSortingEventSortingChangedCopyWith<
          _$_WorkoutSortingEventSortingChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WorkoutSortingEventRefreshStateCopyWith<$Res> {
  factory _$$_WorkoutSortingEventRefreshStateCopyWith(
          _$_WorkoutSortingEventRefreshState value,
          $Res Function(_$_WorkoutSortingEventRefreshState) then) =
      __$$_WorkoutSortingEventRefreshStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<WorkoutSortingEnum, bool> sortingItems});
}

/// @nodoc
class __$$_WorkoutSortingEventRefreshStateCopyWithImpl<$Res>
    extends _$WorkoutSortingEventCopyWithImpl<$Res,
        _$_WorkoutSortingEventRefreshState>
    implements _$$_WorkoutSortingEventRefreshStateCopyWith<$Res> {
  __$$_WorkoutSortingEventRefreshStateCopyWithImpl(
      _$_WorkoutSortingEventRefreshState _value,
      $Res Function(_$_WorkoutSortingEventRefreshState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortingItems = null,
  }) {
    return _then(_$_WorkoutSortingEventRefreshState(
      sortingItems: null == sortingItems
          ? _value._sortingItems
          : sortingItems // ignore: cast_nullable_to_non_nullable
              as Map<WorkoutSortingEnum, bool>,
    ));
  }
}

/// @nodoc

class _$_WorkoutSortingEventRefreshState
    implements _WorkoutSortingEventRefreshState {
  const _$_WorkoutSortingEventRefreshState(
      {required final Map<WorkoutSortingEnum, bool> sortingItems})
      : _sortingItems = sortingItems;

  final Map<WorkoutSortingEnum, bool> _sortingItems;
  @override
  Map<WorkoutSortingEnum, bool> get sortingItems {
    if (_sortingItems is EqualUnmodifiableMapView) return _sortingItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sortingItems);
  }

  @override
  String toString() {
    return 'WorkoutSortingEvent.refreshState(sortingItems: $sortingItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutSortingEventRefreshState &&
            const DeepCollectionEquality()
                .equals(other._sortingItems, _sortingItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_sortingItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutSortingEventRefreshStateCopyWith<
          _$_WorkoutSortingEventRefreshState>
      get copyWith => __$$_WorkoutSortingEventRefreshStateCopyWithImpl<
          _$_WorkoutSortingEventRefreshState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WorkoutSortingEnum sortingItem) sortingChanged,
    required TResult Function(Map<WorkoutSortingEnum, bool> sortingItems)
        refreshState,
  }) {
    return refreshState(sortingItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WorkoutSortingEnum sortingItem)? sortingChanged,
    TResult? Function(Map<WorkoutSortingEnum, bool> sortingItems)? refreshState,
  }) {
    return refreshState?.call(sortingItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WorkoutSortingEnum sortingItem)? sortingChanged,
    TResult Function(Map<WorkoutSortingEnum, bool> sortingItems)? refreshState,
    required TResult orElse(),
  }) {
    if (refreshState != null) {
      return refreshState(sortingItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutSortingEventSortingChanged value)
        sortingChanged,
    required TResult Function(_WorkoutSortingEventRefreshState value)
        refreshState,
  }) {
    return refreshState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutSortingEventSortingChanged value)? sortingChanged,
    TResult? Function(_WorkoutSortingEventRefreshState value)? refreshState,
  }) {
    return refreshState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutSortingEventSortingChanged value)? sortingChanged,
    TResult Function(_WorkoutSortingEventRefreshState value)? refreshState,
    required TResult orElse(),
  }) {
    if (refreshState != null) {
      return refreshState(this);
    }
    return orElse();
  }
}

abstract class _WorkoutSortingEventRefreshState implements WorkoutSortingEvent {
  const factory _WorkoutSortingEventRefreshState(
          {required final Map<WorkoutSortingEnum, bool> sortingItems}) =
      _$_WorkoutSortingEventRefreshState;

  Map<WorkoutSortingEnum, bool> get sortingItems;
  @JsonKey(ignore: true)
  _$$_WorkoutSortingEventRefreshStateCopyWith<
          _$_WorkoutSortingEventRefreshState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WorkoutSortingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<WorkoutSortingEnum, bool> sortingItems)
        loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Map<WorkoutSortingEnum, bool> sortingItems)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<WorkoutSortingEnum, bool> sortingItems)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutSortingStateInitial value) initial,
    required TResult Function(_WorkoutSortingStateLoaded value) loaded,
    required TResult Function(_WorkoutSortingStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutSortingStateInitial value)? initial,
    TResult? Function(_WorkoutSortingStateLoaded value)? loaded,
    TResult? Function(_WorkoutSortingStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutSortingStateInitial value)? initial,
    TResult Function(_WorkoutSortingStateLoaded value)? loaded,
    TResult Function(_WorkoutSortingStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutSortingStateCopyWith<$Res> {
  factory $WorkoutSortingStateCopyWith(
          WorkoutSortingState value, $Res Function(WorkoutSortingState) then) =
      _$WorkoutSortingStateCopyWithImpl<$Res, WorkoutSortingState>;
}

/// @nodoc
class _$WorkoutSortingStateCopyWithImpl<$Res, $Val extends WorkoutSortingState>
    implements $WorkoutSortingStateCopyWith<$Res> {
  _$WorkoutSortingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WorkoutSortingStateInitialCopyWith<$Res> {
  factory _$$_WorkoutSortingStateInitialCopyWith(
          _$_WorkoutSortingStateInitial value,
          $Res Function(_$_WorkoutSortingStateInitial) then) =
      __$$_WorkoutSortingStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WorkoutSortingStateInitialCopyWithImpl<$Res>
    extends _$WorkoutSortingStateCopyWithImpl<$Res,
        _$_WorkoutSortingStateInitial>
    implements _$$_WorkoutSortingStateInitialCopyWith<$Res> {
  __$$_WorkoutSortingStateInitialCopyWithImpl(
      _$_WorkoutSortingStateInitial _value,
      $Res Function(_$_WorkoutSortingStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WorkoutSortingStateInitial implements _WorkoutSortingStateInitial {
  const _$_WorkoutSortingStateInitial();

  @override
  String toString() {
    return 'WorkoutSortingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutSortingStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<WorkoutSortingEnum, bool> sortingItems)
        loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Map<WorkoutSortingEnum, bool> sortingItems)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<WorkoutSortingEnum, bool> sortingItems)? loaded,
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
    required TResult Function(_WorkoutSortingStateInitial value) initial,
    required TResult Function(_WorkoutSortingStateLoaded value) loaded,
    required TResult Function(_WorkoutSortingStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutSortingStateInitial value)? initial,
    TResult? Function(_WorkoutSortingStateLoaded value)? loaded,
    TResult? Function(_WorkoutSortingStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutSortingStateInitial value)? initial,
    TResult Function(_WorkoutSortingStateLoaded value)? loaded,
    TResult Function(_WorkoutSortingStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _WorkoutSortingStateInitial implements WorkoutSortingState {
  const factory _WorkoutSortingStateInitial() = _$_WorkoutSortingStateInitial;
}

/// @nodoc
abstract class _$$_WorkoutSortingStateLoadedCopyWith<$Res> {
  factory _$$_WorkoutSortingStateLoadedCopyWith(
          _$_WorkoutSortingStateLoaded value,
          $Res Function(_$_WorkoutSortingStateLoaded) then) =
      __$$_WorkoutSortingStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<WorkoutSortingEnum, bool> sortingItems});
}

/// @nodoc
class __$$_WorkoutSortingStateLoadedCopyWithImpl<$Res>
    extends _$WorkoutSortingStateCopyWithImpl<$Res,
        _$_WorkoutSortingStateLoaded>
    implements _$$_WorkoutSortingStateLoadedCopyWith<$Res> {
  __$$_WorkoutSortingStateLoadedCopyWithImpl(
      _$_WorkoutSortingStateLoaded _value,
      $Res Function(_$_WorkoutSortingStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortingItems = null,
  }) {
    return _then(_$_WorkoutSortingStateLoaded(
      sortingItems: null == sortingItems
          ? _value._sortingItems
          : sortingItems // ignore: cast_nullable_to_non_nullable
              as Map<WorkoutSortingEnum, bool>,
    ));
  }
}

/// @nodoc

class _$_WorkoutSortingStateLoaded implements _WorkoutSortingStateLoaded {
  const _$_WorkoutSortingStateLoaded(
      {required final Map<WorkoutSortingEnum, bool> sortingItems})
      : _sortingItems = sortingItems;

  final Map<WorkoutSortingEnum, bool> _sortingItems;
  @override
  Map<WorkoutSortingEnum, bool> get sortingItems {
    if (_sortingItems is EqualUnmodifiableMapView) return _sortingItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sortingItems);
  }

  @override
  String toString() {
    return 'WorkoutSortingState.loaded(sortingItems: $sortingItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutSortingStateLoaded &&
            const DeepCollectionEquality()
                .equals(other._sortingItems, _sortingItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_sortingItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutSortingStateLoadedCopyWith<_$_WorkoutSortingStateLoaded>
      get copyWith => __$$_WorkoutSortingStateLoadedCopyWithImpl<
          _$_WorkoutSortingStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<WorkoutSortingEnum, bool> sortingItems)
        loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(sortingItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Map<WorkoutSortingEnum, bool> sortingItems)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(sortingItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<WorkoutSortingEnum, bool> sortingItems)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(sortingItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WorkoutSortingStateInitial value) initial,
    required TResult Function(_WorkoutSortingStateLoaded value) loaded,
    required TResult Function(_WorkoutSortingStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutSortingStateInitial value)? initial,
    TResult? Function(_WorkoutSortingStateLoaded value)? loaded,
    TResult? Function(_WorkoutSortingStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutSortingStateInitial value)? initial,
    TResult Function(_WorkoutSortingStateLoaded value)? loaded,
    TResult Function(_WorkoutSortingStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _WorkoutSortingStateLoaded implements WorkoutSortingState {
  const factory _WorkoutSortingStateLoaded(
          {required final Map<WorkoutSortingEnum, bool> sortingItems}) =
      _$_WorkoutSortingStateLoaded;

  Map<WorkoutSortingEnum, bool> get sortingItems;
  @JsonKey(ignore: true)
  _$$_WorkoutSortingStateLoadedCopyWith<_$_WorkoutSortingStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WorkoutSortingStateErrorCopyWith<$Res> {
  factory _$$_WorkoutSortingStateErrorCopyWith(
          _$_WorkoutSortingStateError value,
          $Res Function(_$_WorkoutSortingStateError) then) =
      __$$_WorkoutSortingStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_WorkoutSortingStateErrorCopyWithImpl<$Res>
    extends _$WorkoutSortingStateCopyWithImpl<$Res, _$_WorkoutSortingStateError>
    implements _$$_WorkoutSortingStateErrorCopyWith<$Res> {
  __$$_WorkoutSortingStateErrorCopyWithImpl(_$_WorkoutSortingStateError _value,
      $Res Function(_$_WorkoutSortingStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_WorkoutSortingStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WorkoutSortingStateError implements _WorkoutSortingStateError {
  const _$_WorkoutSortingStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'WorkoutSortingState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutSortingStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutSortingStateErrorCopyWith<_$_WorkoutSortingStateError>
      get copyWith => __$$_WorkoutSortingStateErrorCopyWithImpl<
          _$_WorkoutSortingStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<WorkoutSortingEnum, bool> sortingItems)
        loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Map<WorkoutSortingEnum, bool> sortingItems)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<WorkoutSortingEnum, bool> sortingItems)? loaded,
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
    required TResult Function(_WorkoutSortingStateInitial value) initial,
    required TResult Function(_WorkoutSortingStateLoaded value) loaded,
    required TResult Function(_WorkoutSortingStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WorkoutSortingStateInitial value)? initial,
    TResult? Function(_WorkoutSortingStateLoaded value)? loaded,
    TResult? Function(_WorkoutSortingStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WorkoutSortingStateInitial value)? initial,
    TResult Function(_WorkoutSortingStateLoaded value)? loaded,
    TResult Function(_WorkoutSortingStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _WorkoutSortingStateError implements WorkoutSortingState {
  const factory _WorkoutSortingStateError({required final String error}) =
      _$_WorkoutSortingStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_WorkoutSortingStateErrorCopyWith<_$_WorkoutSortingStateError>
      get copyWith => throw _privateConstructorUsedError;
}
