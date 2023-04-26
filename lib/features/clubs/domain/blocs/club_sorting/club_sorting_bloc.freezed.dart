// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_sorting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClubSortingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ClubSortingEnum clubSortingEnum) sortingChanged,
    required TResult Function(Map<ClubSortingEnum, bool> clubSortingItems)
        refreshState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ClubSortingEnum clubSortingEnum)? sortingChanged,
    TResult? Function(Map<ClubSortingEnum, bool> clubSortingItems)?
        refreshState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ClubSortingEnum clubSortingEnum)? sortingChanged,
    TResult Function(Map<ClubSortingEnum, bool> clubSortingItems)? refreshState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubSortingEventSortingChanged value)
        sortingChanged,
    required TResult Function(_ClubSortingEventRefreshState value) refreshState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubSortingEventSortingChanged value)? sortingChanged,
    TResult? Function(_ClubSortingEventRefreshState value)? refreshState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubSortingEventSortingChanged value)? sortingChanged,
    TResult Function(_ClubSortingEventRefreshState value)? refreshState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubSortingEventCopyWith<$Res> {
  factory $ClubSortingEventCopyWith(
          ClubSortingEvent value, $Res Function(ClubSortingEvent) then) =
      _$ClubSortingEventCopyWithImpl<$Res, ClubSortingEvent>;
}

/// @nodoc
class _$ClubSortingEventCopyWithImpl<$Res, $Val extends ClubSortingEvent>
    implements $ClubSortingEventCopyWith<$Res> {
  _$ClubSortingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ClubSortingEventSortingChangedCopyWith<$Res> {
  factory _$$_ClubSortingEventSortingChangedCopyWith(
          _$_ClubSortingEventSortingChanged value,
          $Res Function(_$_ClubSortingEventSortingChanged) then) =
      __$$_ClubSortingEventSortingChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({ClubSortingEnum clubSortingEnum});
}

/// @nodoc
class __$$_ClubSortingEventSortingChangedCopyWithImpl<$Res>
    extends _$ClubSortingEventCopyWithImpl<$Res,
        _$_ClubSortingEventSortingChanged>
    implements _$$_ClubSortingEventSortingChangedCopyWith<$Res> {
  __$$_ClubSortingEventSortingChangedCopyWithImpl(
      _$_ClubSortingEventSortingChanged _value,
      $Res Function(_$_ClubSortingEventSortingChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubSortingEnum = null,
  }) {
    return _then(_$_ClubSortingEventSortingChanged(
      clubSortingEnum: null == clubSortingEnum
          ? _value.clubSortingEnum
          : clubSortingEnum // ignore: cast_nullable_to_non_nullable
              as ClubSortingEnum,
    ));
  }
}

/// @nodoc

class _$_ClubSortingEventSortingChanged
    implements _ClubSortingEventSortingChanged {
  const _$_ClubSortingEventSortingChanged({required this.clubSortingEnum});

  @override
  final ClubSortingEnum clubSortingEnum;

  @override
  String toString() {
    return 'ClubSortingEvent.sortingChanged(clubSortingEnum: $clubSortingEnum)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubSortingEventSortingChangedCopyWith<_$_ClubSortingEventSortingChanged>
      get copyWith => __$$_ClubSortingEventSortingChangedCopyWithImpl<
          _$_ClubSortingEventSortingChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ClubSortingEnum clubSortingEnum) sortingChanged,
    required TResult Function(Map<ClubSortingEnum, bool> clubSortingItems)
        refreshState,
  }) {
    return sortingChanged(clubSortingEnum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ClubSortingEnum clubSortingEnum)? sortingChanged,
    TResult? Function(Map<ClubSortingEnum, bool> clubSortingItems)?
        refreshState,
  }) {
    return sortingChanged?.call(clubSortingEnum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ClubSortingEnum clubSortingEnum)? sortingChanged,
    TResult Function(Map<ClubSortingEnum, bool> clubSortingItems)? refreshState,
    required TResult orElse(),
  }) {
    if (sortingChanged != null) {
      return sortingChanged(clubSortingEnum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubSortingEventSortingChanged value)
        sortingChanged,
    required TResult Function(_ClubSortingEventRefreshState value) refreshState,
  }) {
    return sortingChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubSortingEventSortingChanged value)? sortingChanged,
    TResult? Function(_ClubSortingEventRefreshState value)? refreshState,
  }) {
    return sortingChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubSortingEventSortingChanged value)? sortingChanged,
    TResult Function(_ClubSortingEventRefreshState value)? refreshState,
    required TResult orElse(),
  }) {
    if (sortingChanged != null) {
      return sortingChanged(this);
    }
    return orElse();
  }
}

abstract class _ClubSortingEventSortingChanged implements ClubSortingEvent {
  const factory _ClubSortingEventSortingChanged(
          {required final ClubSortingEnum clubSortingEnum}) =
      _$_ClubSortingEventSortingChanged;

  ClubSortingEnum get clubSortingEnum;
  @JsonKey(ignore: true)
  _$$_ClubSortingEventSortingChangedCopyWith<_$_ClubSortingEventSortingChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClubSortingEventRefreshStateCopyWith<$Res> {
  factory _$$_ClubSortingEventRefreshStateCopyWith(
          _$_ClubSortingEventRefreshState value,
          $Res Function(_$_ClubSortingEventRefreshState) then) =
      __$$_ClubSortingEventRefreshStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<ClubSortingEnum, bool> clubSortingItems});
}

/// @nodoc
class __$$_ClubSortingEventRefreshStateCopyWithImpl<$Res>
    extends _$ClubSortingEventCopyWithImpl<$Res,
        _$_ClubSortingEventRefreshState>
    implements _$$_ClubSortingEventRefreshStateCopyWith<$Res> {
  __$$_ClubSortingEventRefreshStateCopyWithImpl(
      _$_ClubSortingEventRefreshState _value,
      $Res Function(_$_ClubSortingEventRefreshState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubSortingItems = null,
  }) {
    return _then(_$_ClubSortingEventRefreshState(
      clubSortingItems: null == clubSortingItems
          ? _value._clubSortingItems
          : clubSortingItems // ignore: cast_nullable_to_non_nullable
              as Map<ClubSortingEnum, bool>,
    ));
  }
}

/// @nodoc

class _$_ClubSortingEventRefreshState implements _ClubSortingEventRefreshState {
  const _$_ClubSortingEventRefreshState(
      {required final Map<ClubSortingEnum, bool> clubSortingItems})
      : _clubSortingItems = clubSortingItems;

  final Map<ClubSortingEnum, bool> _clubSortingItems;
  @override
  Map<ClubSortingEnum, bool> get clubSortingItems {
    if (_clubSortingItems is EqualUnmodifiableMapView) return _clubSortingItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_clubSortingItems);
  }

  @override
  String toString() {
    return 'ClubSortingEvent.refreshState(clubSortingItems: $clubSortingItems)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubSortingEventRefreshStateCopyWith<_$_ClubSortingEventRefreshState>
      get copyWith => __$$_ClubSortingEventRefreshStateCopyWithImpl<
          _$_ClubSortingEventRefreshState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ClubSortingEnum clubSortingEnum) sortingChanged,
    required TResult Function(Map<ClubSortingEnum, bool> clubSortingItems)
        refreshState,
  }) {
    return refreshState(clubSortingItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ClubSortingEnum clubSortingEnum)? sortingChanged,
    TResult? Function(Map<ClubSortingEnum, bool> clubSortingItems)?
        refreshState,
  }) {
    return refreshState?.call(clubSortingItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ClubSortingEnum clubSortingEnum)? sortingChanged,
    TResult Function(Map<ClubSortingEnum, bool> clubSortingItems)? refreshState,
    required TResult orElse(),
  }) {
    if (refreshState != null) {
      return refreshState(clubSortingItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubSortingEventSortingChanged value)
        sortingChanged,
    required TResult Function(_ClubSortingEventRefreshState value) refreshState,
  }) {
    return refreshState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubSortingEventSortingChanged value)? sortingChanged,
    TResult? Function(_ClubSortingEventRefreshState value)? refreshState,
  }) {
    return refreshState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubSortingEventSortingChanged value)? sortingChanged,
    TResult Function(_ClubSortingEventRefreshState value)? refreshState,
    required TResult orElse(),
  }) {
    if (refreshState != null) {
      return refreshState(this);
    }
    return orElse();
  }
}

abstract class _ClubSortingEventRefreshState implements ClubSortingEvent {
  const factory _ClubSortingEventRefreshState(
          {required final Map<ClubSortingEnum, bool> clubSortingItems}) =
      _$_ClubSortingEventRefreshState;

  Map<ClubSortingEnum, bool> get clubSortingItems;
  @JsonKey(ignore: true)
  _$$_ClubSortingEventRefreshStateCopyWith<_$_ClubSortingEventRefreshState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClubSortingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<ClubSortingEnum, bool> sortingItems) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Map<ClubSortingEnum, bool> sortingItems)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<ClubSortingEnum, bool> sortingItems)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubSortingStateInitial value) initial,
    required TResult Function(_ClubSortingStateLoaded value) loaded,
    required TResult Function(_ClubSortingStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubSortingStateInitial value)? initial,
    TResult? Function(_ClubSortingStateLoaded value)? loaded,
    TResult? Function(_ClubSortingStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubSortingStateInitial value)? initial,
    TResult Function(_ClubSortingStateLoaded value)? loaded,
    TResult Function(_ClubSortingStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubSortingStateCopyWith<$Res> {
  factory $ClubSortingStateCopyWith(
          ClubSortingState value, $Res Function(ClubSortingState) then) =
      _$ClubSortingStateCopyWithImpl<$Res, ClubSortingState>;
}

/// @nodoc
class _$ClubSortingStateCopyWithImpl<$Res, $Val extends ClubSortingState>
    implements $ClubSortingStateCopyWith<$Res> {
  _$ClubSortingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ClubSortingStateInitialCopyWith<$Res> {
  factory _$$_ClubSortingStateInitialCopyWith(_$_ClubSortingStateInitial value,
          $Res Function(_$_ClubSortingStateInitial) then) =
      __$$_ClubSortingStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClubSortingStateInitialCopyWithImpl<$Res>
    extends _$ClubSortingStateCopyWithImpl<$Res, _$_ClubSortingStateInitial>
    implements _$$_ClubSortingStateInitialCopyWith<$Res> {
  __$$_ClubSortingStateInitialCopyWithImpl(_$_ClubSortingStateInitial _value,
      $Res Function(_$_ClubSortingStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClubSortingStateInitial implements _ClubSortingStateInitial {
  const _$_ClubSortingStateInitial();

  @override
  String toString() {
    return 'ClubSortingState.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<ClubSortingEnum, bool> sortingItems) loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Map<ClubSortingEnum, bool> sortingItems)? loaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<ClubSortingEnum, bool> sortingItems)? loaded,
    TResult Function()? error,
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
    required TResult Function(_ClubSortingStateInitial value) initial,
    required TResult Function(_ClubSortingStateLoaded value) loaded,
    required TResult Function(_ClubSortingStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubSortingStateInitial value)? initial,
    TResult? Function(_ClubSortingStateLoaded value)? loaded,
    TResult? Function(_ClubSortingStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubSortingStateInitial value)? initial,
    TResult Function(_ClubSortingStateLoaded value)? loaded,
    TResult Function(_ClubSortingStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ClubSortingStateInitial implements ClubSortingState {
  const factory _ClubSortingStateInitial() = _$_ClubSortingStateInitial;
}

/// @nodoc
abstract class _$$_ClubSortingStateLoadedCopyWith<$Res> {
  factory _$$_ClubSortingStateLoadedCopyWith(_$_ClubSortingStateLoaded value,
          $Res Function(_$_ClubSortingStateLoaded) then) =
      __$$_ClubSortingStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<ClubSortingEnum, bool> sortingItems});
}

/// @nodoc
class __$$_ClubSortingStateLoadedCopyWithImpl<$Res>
    extends _$ClubSortingStateCopyWithImpl<$Res, _$_ClubSortingStateLoaded>
    implements _$$_ClubSortingStateLoadedCopyWith<$Res> {
  __$$_ClubSortingStateLoadedCopyWithImpl(_$_ClubSortingStateLoaded _value,
      $Res Function(_$_ClubSortingStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortingItems = null,
  }) {
    return _then(_$_ClubSortingStateLoaded(
      sortingItems: null == sortingItems
          ? _value._sortingItems
          : sortingItems // ignore: cast_nullable_to_non_nullable
              as Map<ClubSortingEnum, bool>,
    ));
  }
}

/// @nodoc

class _$_ClubSortingStateLoaded implements _ClubSortingStateLoaded {
  const _$_ClubSortingStateLoaded(
      {required final Map<ClubSortingEnum, bool> sortingItems})
      : _sortingItems = sortingItems;

  final Map<ClubSortingEnum, bool> _sortingItems;
  @override
  Map<ClubSortingEnum, bool> get sortingItems {
    if (_sortingItems is EqualUnmodifiableMapView) return _sortingItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sortingItems);
  }

  @override
  String toString() {
    return 'ClubSortingState.loaded(sortingItems: $sortingItems)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubSortingStateLoadedCopyWith<_$_ClubSortingStateLoaded> get copyWith =>
      __$$_ClubSortingStateLoadedCopyWithImpl<_$_ClubSortingStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<ClubSortingEnum, bool> sortingItems) loaded,
    required TResult Function() error,
  }) {
    return loaded(sortingItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Map<ClubSortingEnum, bool> sortingItems)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(sortingItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<ClubSortingEnum, bool> sortingItems)? loaded,
    TResult Function()? error,
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
    required TResult Function(_ClubSortingStateInitial value) initial,
    required TResult Function(_ClubSortingStateLoaded value) loaded,
    required TResult Function(_ClubSortingStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubSortingStateInitial value)? initial,
    TResult? Function(_ClubSortingStateLoaded value)? loaded,
    TResult? Function(_ClubSortingStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubSortingStateInitial value)? initial,
    TResult Function(_ClubSortingStateLoaded value)? loaded,
    TResult Function(_ClubSortingStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ClubSortingStateLoaded implements ClubSortingState {
  const factory _ClubSortingStateLoaded(
          {required final Map<ClubSortingEnum, bool> sortingItems}) =
      _$_ClubSortingStateLoaded;

  Map<ClubSortingEnum, bool> get sortingItems;
  @JsonKey(ignore: true)
  _$$_ClubSortingStateLoadedCopyWith<_$_ClubSortingStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClubSortingStateErrorCopyWith<$Res> {
  factory _$$_ClubSortingStateErrorCopyWith(_$_ClubSortingStateError value,
          $Res Function(_$_ClubSortingStateError) then) =
      __$$_ClubSortingStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClubSortingStateErrorCopyWithImpl<$Res>
    extends _$ClubSortingStateCopyWithImpl<$Res, _$_ClubSortingStateError>
    implements _$$_ClubSortingStateErrorCopyWith<$Res> {
  __$$_ClubSortingStateErrorCopyWithImpl(_$_ClubSortingStateError _value,
      $Res Function(_$_ClubSortingStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClubSortingStateError implements _ClubSortingStateError {
  const _$_ClubSortingStateError();

  @override
  String toString() {
    return 'ClubSortingState.error()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<ClubSortingEnum, bool> sortingItems) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Map<ClubSortingEnum, bool> sortingItems)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<ClubSortingEnum, bool> sortingItems)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubSortingStateInitial value) initial,
    required TResult Function(_ClubSortingStateLoaded value) loaded,
    required TResult Function(_ClubSortingStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubSortingStateInitial value)? initial,
    TResult? Function(_ClubSortingStateLoaded value)? loaded,
    TResult? Function(_ClubSortingStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubSortingStateInitial value)? initial,
    TResult Function(_ClubSortingStateLoaded value)? loaded,
    TResult Function(_ClubSortingStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ClubSortingStateError implements ClubSortingState {
  const factory _ClubSortingStateError() = _$_ClubSortingStateError;
}
