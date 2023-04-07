// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_kpi_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnalyticsKPIEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AnalyticsFilters analyticsFilters) started,
    required TResult Function(KPI kpi) kpiChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AnalyticsFilters analyticsFilters)? started,
    TResult? Function(KPI kpi)? kpiChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AnalyticsFilters analyticsFilters)? started,
    TResult Function(KPI kpi)? kpiChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AnalyticsKPIEventStarted value) started,
    required TResult Function(_AnalyticsKPIEventChanged value) kpiChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyticsKPIEventStarted value)? started,
    TResult? Function(_AnalyticsKPIEventChanged value)? kpiChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyticsKPIEventStarted value)? started,
    TResult Function(_AnalyticsKPIEventChanged value)? kpiChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsKPIEventCopyWith<$Res> {
  factory $AnalyticsKPIEventCopyWith(
          AnalyticsKPIEvent value, $Res Function(AnalyticsKPIEvent) then) =
      _$AnalyticsKPIEventCopyWithImpl<$Res, AnalyticsKPIEvent>;
}

/// @nodoc
class _$AnalyticsKPIEventCopyWithImpl<$Res, $Val extends AnalyticsKPIEvent>
    implements $AnalyticsKPIEventCopyWith<$Res> {
  _$AnalyticsKPIEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AnalyticsKPIEventStartedCopyWith<$Res> {
  factory _$$_AnalyticsKPIEventStartedCopyWith(
          _$_AnalyticsKPIEventStarted value,
          $Res Function(_$_AnalyticsKPIEventStarted) then) =
      __$$_AnalyticsKPIEventStartedCopyWithImpl<$Res>;
  @useResult
  $Res call({AnalyticsFilters analyticsFilters});

  $AnalyticsFiltersCopyWith<$Res> get analyticsFilters;
}

/// @nodoc
class __$$_AnalyticsKPIEventStartedCopyWithImpl<$Res>
    extends _$AnalyticsKPIEventCopyWithImpl<$Res, _$_AnalyticsKPIEventStarted>
    implements _$$_AnalyticsKPIEventStartedCopyWith<$Res> {
  __$$_AnalyticsKPIEventStartedCopyWithImpl(_$_AnalyticsKPIEventStarted _value,
      $Res Function(_$_AnalyticsKPIEventStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? analyticsFilters = null,
  }) {
    return _then(_$_AnalyticsKPIEventStarted(
      analyticsFilters: null == analyticsFilters
          ? _value.analyticsFilters
          : analyticsFilters // ignore: cast_nullable_to_non_nullable
              as AnalyticsFilters,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AnalyticsFiltersCopyWith<$Res> get analyticsFilters {
    return $AnalyticsFiltersCopyWith<$Res>(_value.analyticsFilters, (value) {
      return _then(_value.copyWith(analyticsFilters: value));
    });
  }
}

/// @nodoc

class _$_AnalyticsKPIEventStarted implements _AnalyticsKPIEventStarted {
  const _$_AnalyticsKPIEventStarted({required this.analyticsFilters});

  @override
  final AnalyticsFilters analyticsFilters;

  @override
  String toString() {
    return 'AnalyticsKPIEvent.started(analyticsFilters: $analyticsFilters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnalyticsKPIEventStarted &&
            (identical(other.analyticsFilters, analyticsFilters) ||
                other.analyticsFilters == analyticsFilters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, analyticsFilters);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnalyticsKPIEventStartedCopyWith<_$_AnalyticsKPIEventStarted>
      get copyWith => __$$_AnalyticsKPIEventStartedCopyWithImpl<
          _$_AnalyticsKPIEventStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AnalyticsFilters analyticsFilters) started,
    required TResult Function(KPI kpi) kpiChanged,
  }) {
    return started(analyticsFilters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AnalyticsFilters analyticsFilters)? started,
    TResult? Function(KPI kpi)? kpiChanged,
  }) {
    return started?.call(analyticsFilters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AnalyticsFilters analyticsFilters)? started,
    TResult Function(KPI kpi)? kpiChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(analyticsFilters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AnalyticsKPIEventStarted value) started,
    required TResult Function(_AnalyticsKPIEventChanged value) kpiChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyticsKPIEventStarted value)? started,
    TResult? Function(_AnalyticsKPIEventChanged value)? kpiChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyticsKPIEventStarted value)? started,
    TResult Function(_AnalyticsKPIEventChanged value)? kpiChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _AnalyticsKPIEventStarted implements AnalyticsKPIEvent {
  const factory _AnalyticsKPIEventStarted(
          {required final AnalyticsFilters analyticsFilters}) =
      _$_AnalyticsKPIEventStarted;

  AnalyticsFilters get analyticsFilters;
  @JsonKey(ignore: true)
  _$$_AnalyticsKPIEventStartedCopyWith<_$_AnalyticsKPIEventStarted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AnalyticsKPIEventChangedCopyWith<$Res> {
  factory _$$_AnalyticsKPIEventChangedCopyWith(
          _$_AnalyticsKPIEventChanged value,
          $Res Function(_$_AnalyticsKPIEventChanged) then) =
      __$$_AnalyticsKPIEventChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({KPI kpi});

  $KPICopyWith<$Res> get kpi;
}

/// @nodoc
class __$$_AnalyticsKPIEventChangedCopyWithImpl<$Res>
    extends _$AnalyticsKPIEventCopyWithImpl<$Res, _$_AnalyticsKPIEventChanged>
    implements _$$_AnalyticsKPIEventChangedCopyWith<$Res> {
  __$$_AnalyticsKPIEventChangedCopyWithImpl(_$_AnalyticsKPIEventChanged _value,
      $Res Function(_$_AnalyticsKPIEventChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kpi = null,
  }) {
    return _then(_$_AnalyticsKPIEventChanged(
      kpi: null == kpi
          ? _value.kpi
          : kpi // ignore: cast_nullable_to_non_nullable
              as KPI,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $KPICopyWith<$Res> get kpi {
    return $KPICopyWith<$Res>(_value.kpi, (value) {
      return _then(_value.copyWith(kpi: value));
    });
  }
}

/// @nodoc

class _$_AnalyticsKPIEventChanged implements _AnalyticsKPIEventChanged {
  const _$_AnalyticsKPIEventChanged({required this.kpi});

  @override
  final KPI kpi;

  @override
  String toString() {
    return 'AnalyticsKPIEvent.kpiChanged(kpi: $kpi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnalyticsKPIEventChanged &&
            (identical(other.kpi, kpi) || other.kpi == kpi));
  }

  @override
  int get hashCode => Object.hash(runtimeType, kpi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnalyticsKPIEventChangedCopyWith<_$_AnalyticsKPIEventChanged>
      get copyWith => __$$_AnalyticsKPIEventChangedCopyWithImpl<
          _$_AnalyticsKPIEventChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AnalyticsFilters analyticsFilters) started,
    required TResult Function(KPI kpi) kpiChanged,
  }) {
    return kpiChanged(kpi);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AnalyticsFilters analyticsFilters)? started,
    TResult? Function(KPI kpi)? kpiChanged,
  }) {
    return kpiChanged?.call(kpi);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AnalyticsFilters analyticsFilters)? started,
    TResult Function(KPI kpi)? kpiChanged,
    required TResult orElse(),
  }) {
    if (kpiChanged != null) {
      return kpiChanged(kpi);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AnalyticsKPIEventStarted value) started,
    required TResult Function(_AnalyticsKPIEventChanged value) kpiChanged,
  }) {
    return kpiChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyticsKPIEventStarted value)? started,
    TResult? Function(_AnalyticsKPIEventChanged value)? kpiChanged,
  }) {
    return kpiChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyticsKPIEventStarted value)? started,
    TResult Function(_AnalyticsKPIEventChanged value)? kpiChanged,
    required TResult orElse(),
  }) {
    if (kpiChanged != null) {
      return kpiChanged(this);
    }
    return orElse();
  }
}

abstract class _AnalyticsKPIEventChanged implements AnalyticsKPIEvent {
  const factory _AnalyticsKPIEventChanged({required final KPI kpi}) =
      _$_AnalyticsKPIEventChanged;

  KPI get kpi;
  @JsonKey(ignore: true)
  _$$_AnalyticsKPIEventChangedCopyWith<_$_AnalyticsKPIEventChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AnalyticsKPIState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(KPI kpi) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(KPI kpi)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(KPI kpi)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AnalyticsKPIStateInitial value) initial,
    required TResult Function(_AnalyticsKPIStateLoaded value) loaded,
    required TResult Function(_AnalyticsKPIStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyticsKPIStateInitial value)? initial,
    TResult? Function(_AnalyticsKPIStateLoaded value)? loaded,
    TResult? Function(_AnalyticsKPIStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyticsKPIStateInitial value)? initial,
    TResult Function(_AnalyticsKPIStateLoaded value)? loaded,
    TResult Function(_AnalyticsKPIStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsKPIStateCopyWith<$Res> {
  factory $AnalyticsKPIStateCopyWith(
          AnalyticsKPIState value, $Res Function(AnalyticsKPIState) then) =
      _$AnalyticsKPIStateCopyWithImpl<$Res, AnalyticsKPIState>;
}

/// @nodoc
class _$AnalyticsKPIStateCopyWithImpl<$Res, $Val extends AnalyticsKPIState>
    implements $AnalyticsKPIStateCopyWith<$Res> {
  _$AnalyticsKPIStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AnalyticsKPIStateInitialCopyWith<$Res> {
  factory _$$_AnalyticsKPIStateInitialCopyWith(
          _$_AnalyticsKPIStateInitial value,
          $Res Function(_$_AnalyticsKPIStateInitial) then) =
      __$$_AnalyticsKPIStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AnalyticsKPIStateInitialCopyWithImpl<$Res>
    extends _$AnalyticsKPIStateCopyWithImpl<$Res, _$_AnalyticsKPIStateInitial>
    implements _$$_AnalyticsKPIStateInitialCopyWith<$Res> {
  __$$_AnalyticsKPIStateInitialCopyWithImpl(_$_AnalyticsKPIStateInitial _value,
      $Res Function(_$_AnalyticsKPIStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AnalyticsKPIStateInitial implements _AnalyticsKPIStateInitial {
  const _$_AnalyticsKPIStateInitial();

  @override
  String toString() {
    return 'AnalyticsKPIState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnalyticsKPIStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(KPI kpi) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(KPI kpi)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(KPI kpi)? loaded,
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
    required TResult Function(_AnalyticsKPIStateInitial value) initial,
    required TResult Function(_AnalyticsKPIStateLoaded value) loaded,
    required TResult Function(_AnalyticsKPIStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyticsKPIStateInitial value)? initial,
    TResult? Function(_AnalyticsKPIStateLoaded value)? loaded,
    TResult? Function(_AnalyticsKPIStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyticsKPIStateInitial value)? initial,
    TResult Function(_AnalyticsKPIStateLoaded value)? loaded,
    TResult Function(_AnalyticsKPIStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AnalyticsKPIStateInitial implements AnalyticsKPIState {
  const factory _AnalyticsKPIStateInitial() = _$_AnalyticsKPIStateInitial;
}

/// @nodoc
abstract class _$$_AnalyticsKPIStateLoadedCopyWith<$Res> {
  factory _$$_AnalyticsKPIStateLoadedCopyWith(_$_AnalyticsKPIStateLoaded value,
          $Res Function(_$_AnalyticsKPIStateLoaded) then) =
      __$$_AnalyticsKPIStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({KPI kpi});

  $KPICopyWith<$Res> get kpi;
}

/// @nodoc
class __$$_AnalyticsKPIStateLoadedCopyWithImpl<$Res>
    extends _$AnalyticsKPIStateCopyWithImpl<$Res, _$_AnalyticsKPIStateLoaded>
    implements _$$_AnalyticsKPIStateLoadedCopyWith<$Res> {
  __$$_AnalyticsKPIStateLoadedCopyWithImpl(_$_AnalyticsKPIStateLoaded _value,
      $Res Function(_$_AnalyticsKPIStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kpi = null,
  }) {
    return _then(_$_AnalyticsKPIStateLoaded(
      kpi: null == kpi
          ? _value.kpi
          : kpi // ignore: cast_nullable_to_non_nullable
              as KPI,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $KPICopyWith<$Res> get kpi {
    return $KPICopyWith<$Res>(_value.kpi, (value) {
      return _then(_value.copyWith(kpi: value));
    });
  }
}

/// @nodoc

class _$_AnalyticsKPIStateLoaded implements _AnalyticsKPIStateLoaded {
  const _$_AnalyticsKPIStateLoaded({required this.kpi});

  @override
  final KPI kpi;

  @override
  String toString() {
    return 'AnalyticsKPIState.loaded(kpi: $kpi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnalyticsKPIStateLoaded &&
            (identical(other.kpi, kpi) || other.kpi == kpi));
  }

  @override
  int get hashCode => Object.hash(runtimeType, kpi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnalyticsKPIStateLoadedCopyWith<_$_AnalyticsKPIStateLoaded>
      get copyWith =>
          __$$_AnalyticsKPIStateLoadedCopyWithImpl<_$_AnalyticsKPIStateLoaded>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(KPI kpi) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(kpi);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(KPI kpi)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(kpi);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(KPI kpi)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(kpi);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AnalyticsKPIStateInitial value) initial,
    required TResult Function(_AnalyticsKPIStateLoaded value) loaded,
    required TResult Function(_AnalyticsKPIStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyticsKPIStateInitial value)? initial,
    TResult? Function(_AnalyticsKPIStateLoaded value)? loaded,
    TResult? Function(_AnalyticsKPIStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyticsKPIStateInitial value)? initial,
    TResult Function(_AnalyticsKPIStateLoaded value)? loaded,
    TResult Function(_AnalyticsKPIStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _AnalyticsKPIStateLoaded implements AnalyticsKPIState {
  const factory _AnalyticsKPIStateLoaded({required final KPI kpi}) =
      _$_AnalyticsKPIStateLoaded;

  KPI get kpi;
  @JsonKey(ignore: true)
  _$$_AnalyticsKPIStateLoadedCopyWith<_$_AnalyticsKPIStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AnalyticsKPIStateErrorCopyWith<$Res> {
  factory _$$_AnalyticsKPIStateErrorCopyWith(_$_AnalyticsKPIStateError value,
          $Res Function(_$_AnalyticsKPIStateError) then) =
      __$$_AnalyticsKPIStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_AnalyticsKPIStateErrorCopyWithImpl<$Res>
    extends _$AnalyticsKPIStateCopyWithImpl<$Res, _$_AnalyticsKPIStateError>
    implements _$$_AnalyticsKPIStateErrorCopyWith<$Res> {
  __$$_AnalyticsKPIStateErrorCopyWithImpl(_$_AnalyticsKPIStateError _value,
      $Res Function(_$_AnalyticsKPIStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_AnalyticsKPIStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AnalyticsKPIStateError implements _AnalyticsKPIStateError {
  const _$_AnalyticsKPIStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AnalyticsKPIState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnalyticsKPIStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnalyticsKPIStateErrorCopyWith<_$_AnalyticsKPIStateError> get copyWith =>
      __$$_AnalyticsKPIStateErrorCopyWithImpl<_$_AnalyticsKPIStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(KPI kpi) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(KPI kpi)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(KPI kpi)? loaded,
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
    required TResult Function(_AnalyticsKPIStateInitial value) initial,
    required TResult Function(_AnalyticsKPIStateLoaded value) loaded,
    required TResult Function(_AnalyticsKPIStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyticsKPIStateInitial value)? initial,
    TResult? Function(_AnalyticsKPIStateLoaded value)? loaded,
    TResult? Function(_AnalyticsKPIStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyticsKPIStateInitial value)? initial,
    TResult Function(_AnalyticsKPIStateLoaded value)? loaded,
    TResult Function(_AnalyticsKPIStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AnalyticsKPIStateError implements AnalyticsKPIState {
  const factory _AnalyticsKPIStateError({required final String error}) =
      _$_AnalyticsKPIStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_AnalyticsKPIStateErrorCopyWith<_$_AnalyticsKPIStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
