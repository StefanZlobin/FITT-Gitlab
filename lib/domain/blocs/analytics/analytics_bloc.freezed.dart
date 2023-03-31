// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnalyticsEvent {
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
    required TResult Function(_AnalyticsEventStarted value) started,
    required TResult Function(_AnalyticsEventKPIChanged value) kpiChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyticsEventStarted value)? started,
    TResult? Function(_AnalyticsEventKPIChanged value)? kpiChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyticsEventStarted value)? started,
    TResult Function(_AnalyticsEventKPIChanged value)? kpiChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsEventCopyWith<$Res> {
  factory $AnalyticsEventCopyWith(
          AnalyticsEvent value, $Res Function(AnalyticsEvent) then) =
      _$AnalyticsEventCopyWithImpl<$Res, AnalyticsEvent>;
}

/// @nodoc
class _$AnalyticsEventCopyWithImpl<$Res, $Val extends AnalyticsEvent>
    implements $AnalyticsEventCopyWith<$Res> {
  _$AnalyticsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AnalyticsEventStartedCopyWith<$Res> {
  factory _$$_AnalyticsEventStartedCopyWith(_$_AnalyticsEventStarted value,
          $Res Function(_$_AnalyticsEventStarted) then) =
      __$$_AnalyticsEventStartedCopyWithImpl<$Res>;
  @useResult
  $Res call({AnalyticsFilters analyticsFilters});

  $AnalyticsFiltersCopyWith<$Res> get analyticsFilters;
}

/// @nodoc
class __$$_AnalyticsEventStartedCopyWithImpl<$Res>
    extends _$AnalyticsEventCopyWithImpl<$Res, _$_AnalyticsEventStarted>
    implements _$$_AnalyticsEventStartedCopyWith<$Res> {
  __$$_AnalyticsEventStartedCopyWithImpl(_$_AnalyticsEventStarted _value,
      $Res Function(_$_AnalyticsEventStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? analyticsFilters = null,
  }) {
    return _then(_$_AnalyticsEventStarted(
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

class _$_AnalyticsEventStarted implements _AnalyticsEventStarted {
  const _$_AnalyticsEventStarted({required this.analyticsFilters});

  @override
  final AnalyticsFilters analyticsFilters;

  @override
  String toString() {
    return 'AnalyticsEvent.started(analyticsFilters: $analyticsFilters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnalyticsEventStarted &&
            (identical(other.analyticsFilters, analyticsFilters) ||
                other.analyticsFilters == analyticsFilters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, analyticsFilters);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnalyticsEventStartedCopyWith<_$_AnalyticsEventStarted> get copyWith =>
      __$$_AnalyticsEventStartedCopyWithImpl<_$_AnalyticsEventStarted>(
          this, _$identity);

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
    required TResult Function(_AnalyticsEventStarted value) started,
    required TResult Function(_AnalyticsEventKPIChanged value) kpiChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyticsEventStarted value)? started,
    TResult? Function(_AnalyticsEventKPIChanged value)? kpiChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyticsEventStarted value)? started,
    TResult Function(_AnalyticsEventKPIChanged value)? kpiChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _AnalyticsEventStarted implements AnalyticsEvent {
  const factory _AnalyticsEventStarted(
          {required final AnalyticsFilters analyticsFilters}) =
      _$_AnalyticsEventStarted;

  AnalyticsFilters get analyticsFilters;
  @JsonKey(ignore: true)
  _$$_AnalyticsEventStartedCopyWith<_$_AnalyticsEventStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AnalyticsEventKPIChangedCopyWith<$Res> {
  factory _$$_AnalyticsEventKPIChangedCopyWith(
          _$_AnalyticsEventKPIChanged value,
          $Res Function(_$_AnalyticsEventKPIChanged) then) =
      __$$_AnalyticsEventKPIChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({KPI kpi});

  $KPICopyWith<$Res> get kpi;
}

/// @nodoc
class __$$_AnalyticsEventKPIChangedCopyWithImpl<$Res>
    extends _$AnalyticsEventCopyWithImpl<$Res, _$_AnalyticsEventKPIChanged>
    implements _$$_AnalyticsEventKPIChangedCopyWith<$Res> {
  __$$_AnalyticsEventKPIChangedCopyWithImpl(_$_AnalyticsEventKPIChanged _value,
      $Res Function(_$_AnalyticsEventKPIChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kpi = null,
  }) {
    return _then(_$_AnalyticsEventKPIChanged(
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

class _$_AnalyticsEventKPIChanged implements _AnalyticsEventKPIChanged {
  const _$_AnalyticsEventKPIChanged({required this.kpi});

  @override
  final KPI kpi;

  @override
  String toString() {
    return 'AnalyticsEvent.kpiChanged(kpi: $kpi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnalyticsEventKPIChanged &&
            (identical(other.kpi, kpi) || other.kpi == kpi));
  }

  @override
  int get hashCode => Object.hash(runtimeType, kpi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnalyticsEventKPIChangedCopyWith<_$_AnalyticsEventKPIChanged>
      get copyWith => __$$_AnalyticsEventKPIChangedCopyWithImpl<
          _$_AnalyticsEventKPIChanged>(this, _$identity);

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
    required TResult Function(_AnalyticsEventStarted value) started,
    required TResult Function(_AnalyticsEventKPIChanged value) kpiChanged,
  }) {
    return kpiChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyticsEventStarted value)? started,
    TResult? Function(_AnalyticsEventKPIChanged value)? kpiChanged,
  }) {
    return kpiChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyticsEventStarted value)? started,
    TResult Function(_AnalyticsEventKPIChanged value)? kpiChanged,
    required TResult orElse(),
  }) {
    if (kpiChanged != null) {
      return kpiChanged(this);
    }
    return orElse();
  }
}

abstract class _AnalyticsEventKPIChanged implements AnalyticsEvent {
  const factory _AnalyticsEventKPIChanged({required final KPI kpi}) =
      _$_AnalyticsEventKPIChanged;

  KPI get kpi;
  @JsonKey(ignore: true)
  _$$_AnalyticsEventKPIChangedCopyWith<_$_AnalyticsEventKPIChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AnalyticsState {
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
    required TResult Function(_AnalyticsStateInitial value) initial,
    required TResult Function(_AnalyticsStateLoaded value) loaded,
    required TResult Function(_AnalyticsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyticsStateInitial value)? initial,
    TResult? Function(_AnalyticsStateLoaded value)? loaded,
    TResult? Function(_AnalyticsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyticsStateInitial value)? initial,
    TResult Function(_AnalyticsStateLoaded value)? loaded,
    TResult Function(_AnalyticsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsStateCopyWith<$Res> {
  factory $AnalyticsStateCopyWith(
          AnalyticsState value, $Res Function(AnalyticsState) then) =
      _$AnalyticsStateCopyWithImpl<$Res, AnalyticsState>;
}

/// @nodoc
class _$AnalyticsStateCopyWithImpl<$Res, $Val extends AnalyticsState>
    implements $AnalyticsStateCopyWith<$Res> {
  _$AnalyticsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AnalyticsStateInitialCopyWith<$Res> {
  factory _$$_AnalyticsStateInitialCopyWith(_$_AnalyticsStateInitial value,
          $Res Function(_$_AnalyticsStateInitial) then) =
      __$$_AnalyticsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AnalyticsStateInitialCopyWithImpl<$Res>
    extends _$AnalyticsStateCopyWithImpl<$Res, _$_AnalyticsStateInitial>
    implements _$$_AnalyticsStateInitialCopyWith<$Res> {
  __$$_AnalyticsStateInitialCopyWithImpl(_$_AnalyticsStateInitial _value,
      $Res Function(_$_AnalyticsStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AnalyticsStateInitial implements _AnalyticsStateInitial {
  const _$_AnalyticsStateInitial();

  @override
  String toString() {
    return 'AnalyticsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AnalyticsStateInitial);
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
    required TResult Function(_AnalyticsStateInitial value) initial,
    required TResult Function(_AnalyticsStateLoaded value) loaded,
    required TResult Function(_AnalyticsStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyticsStateInitial value)? initial,
    TResult? Function(_AnalyticsStateLoaded value)? loaded,
    TResult? Function(_AnalyticsStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyticsStateInitial value)? initial,
    TResult Function(_AnalyticsStateLoaded value)? loaded,
    TResult Function(_AnalyticsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AnalyticsStateInitial implements AnalyticsState {
  const factory _AnalyticsStateInitial() = _$_AnalyticsStateInitial;
}

/// @nodoc
abstract class _$$_AnalyticsStateLoadedCopyWith<$Res> {
  factory _$$_AnalyticsStateLoadedCopyWith(_$_AnalyticsStateLoaded value,
          $Res Function(_$_AnalyticsStateLoaded) then) =
      __$$_AnalyticsStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({KPI kpi});

  $KPICopyWith<$Res> get kpi;
}

/// @nodoc
class __$$_AnalyticsStateLoadedCopyWithImpl<$Res>
    extends _$AnalyticsStateCopyWithImpl<$Res, _$_AnalyticsStateLoaded>
    implements _$$_AnalyticsStateLoadedCopyWith<$Res> {
  __$$_AnalyticsStateLoadedCopyWithImpl(_$_AnalyticsStateLoaded _value,
      $Res Function(_$_AnalyticsStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kpi = null,
  }) {
    return _then(_$_AnalyticsStateLoaded(
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

class _$_AnalyticsStateLoaded implements _AnalyticsStateLoaded {
  const _$_AnalyticsStateLoaded({required this.kpi});

  @override
  final KPI kpi;

  @override
  String toString() {
    return 'AnalyticsState.loaded(kpi: $kpi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnalyticsStateLoaded &&
            (identical(other.kpi, kpi) || other.kpi == kpi));
  }

  @override
  int get hashCode => Object.hash(runtimeType, kpi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnalyticsStateLoadedCopyWith<_$_AnalyticsStateLoaded> get copyWith =>
      __$$_AnalyticsStateLoadedCopyWithImpl<_$_AnalyticsStateLoaded>(
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
    required TResult Function(_AnalyticsStateInitial value) initial,
    required TResult Function(_AnalyticsStateLoaded value) loaded,
    required TResult Function(_AnalyticsStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyticsStateInitial value)? initial,
    TResult? Function(_AnalyticsStateLoaded value)? loaded,
    TResult? Function(_AnalyticsStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyticsStateInitial value)? initial,
    TResult Function(_AnalyticsStateLoaded value)? loaded,
    TResult Function(_AnalyticsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _AnalyticsStateLoaded implements AnalyticsState {
  const factory _AnalyticsStateLoaded({required final KPI kpi}) =
      _$_AnalyticsStateLoaded;

  KPI get kpi;
  @JsonKey(ignore: true)
  _$$_AnalyticsStateLoadedCopyWith<_$_AnalyticsStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AnalyticsStateErrorCopyWith<$Res> {
  factory _$$_AnalyticsStateErrorCopyWith(_$_AnalyticsStateError value,
          $Res Function(_$_AnalyticsStateError) then) =
      __$$_AnalyticsStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_AnalyticsStateErrorCopyWithImpl<$Res>
    extends _$AnalyticsStateCopyWithImpl<$Res, _$_AnalyticsStateError>
    implements _$$_AnalyticsStateErrorCopyWith<$Res> {
  __$$_AnalyticsStateErrorCopyWithImpl(_$_AnalyticsStateError _value,
      $Res Function(_$_AnalyticsStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_AnalyticsStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AnalyticsStateError implements _AnalyticsStateError {
  const _$_AnalyticsStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AnalyticsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnalyticsStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnalyticsStateErrorCopyWith<_$_AnalyticsStateError> get copyWith =>
      __$$_AnalyticsStateErrorCopyWithImpl<_$_AnalyticsStateError>(
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
    required TResult Function(_AnalyticsStateInitial value) initial,
    required TResult Function(_AnalyticsStateLoaded value) loaded,
    required TResult Function(_AnalyticsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyticsStateInitial value)? initial,
    TResult? Function(_AnalyticsStateLoaded value)? loaded,
    TResult? Function(_AnalyticsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyticsStateInitial value)? initial,
    TResult Function(_AnalyticsStateLoaded value)? loaded,
    TResult Function(_AnalyticsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AnalyticsStateError implements AnalyticsState {
  const factory _AnalyticsStateError({required final String error}) =
      _$_AnalyticsStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_AnalyticsStateErrorCopyWith<_$_AnalyticsStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
