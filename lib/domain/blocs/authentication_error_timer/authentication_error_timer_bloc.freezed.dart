// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_error_timer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationErrorTimerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) setTimerInitial,
    required TResult Function(Duration duration) timerStarted,
    required TResult Function() timerPaused,
    required TResult Function() timerResumed,
    required TResult Function() timerReset,
    required TResult Function(Duration duration) timerTicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? setTimerInitial,
    TResult? Function(Duration duration)? timerStarted,
    TResult? Function()? timerPaused,
    TResult? Function()? timerResumed,
    TResult? Function()? timerReset,
    TResult? Function(Duration duration)? timerTicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? setTimerInitial,
    TResult Function(Duration duration)? timerStarted,
    TResult Function()? timerPaused,
    TResult Function()? timerResumed,
    TResult Function()? timerReset,
    TResult Function(Duration duration)? timerTicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTimerInitial value) setTimerInitial,
    required TResult Function(_TimerStarted value) timerStarted,
    required TResult Function(_TimerPaused value) timerPaused,
    required TResult Function(_TimerResumed value) timerResumed,
    required TResult Function(_TimerReset value) timerReset,
    required TResult Function(_TimerTicked value) timerTicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetTimerInitial value)? setTimerInitial,
    TResult? Function(_TimerStarted value)? timerStarted,
    TResult? Function(_TimerPaused value)? timerPaused,
    TResult? Function(_TimerResumed value)? timerResumed,
    TResult? Function(_TimerReset value)? timerReset,
    TResult? Function(_TimerTicked value)? timerTicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTimerInitial value)? setTimerInitial,
    TResult Function(_TimerStarted value)? timerStarted,
    TResult Function(_TimerPaused value)? timerPaused,
    TResult Function(_TimerResumed value)? timerResumed,
    TResult Function(_TimerReset value)? timerReset,
    TResult Function(_TimerTicked value)? timerTicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationErrorTimerEventCopyWith<$Res> {
  factory $AuthenticationErrorTimerEventCopyWith(
          AuthenticationErrorTimerEvent value,
          $Res Function(AuthenticationErrorTimerEvent) then) =
      _$AuthenticationErrorTimerEventCopyWithImpl<$Res,
          AuthenticationErrorTimerEvent>;
}

/// @nodoc
class _$AuthenticationErrorTimerEventCopyWithImpl<$Res,
        $Val extends AuthenticationErrorTimerEvent>
    implements $AuthenticationErrorTimerEventCopyWith<$Res> {
  _$AuthenticationErrorTimerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SetTimerInitialCopyWith<$Res> {
  factory _$$_SetTimerInitialCopyWith(
          _$_SetTimerInitial value, $Res Function(_$_SetTimerInitial) then) =
      __$$_SetTimerInitialCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$_SetTimerInitialCopyWithImpl<$Res>
    extends _$AuthenticationErrorTimerEventCopyWithImpl<$Res,
        _$_SetTimerInitial> implements _$$_SetTimerInitialCopyWith<$Res> {
  __$$_SetTimerInitialCopyWithImpl(
      _$_SetTimerInitial _value, $Res Function(_$_SetTimerInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$_SetTimerInitial(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_SetTimerInitial implements _SetTimerInitial {
  const _$_SetTimerInitial({required this.duration});

  @override
  final Duration duration;

  @override
  String toString() {
    return 'AuthenticationErrorTimerEvent.setTimerInitial(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetTimerInitial &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetTimerInitialCopyWith<_$_SetTimerInitial> get copyWith =>
      __$$_SetTimerInitialCopyWithImpl<_$_SetTimerInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) setTimerInitial,
    required TResult Function(Duration duration) timerStarted,
    required TResult Function() timerPaused,
    required TResult Function() timerResumed,
    required TResult Function() timerReset,
    required TResult Function(Duration duration) timerTicked,
  }) {
    return setTimerInitial(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? setTimerInitial,
    TResult? Function(Duration duration)? timerStarted,
    TResult? Function()? timerPaused,
    TResult? Function()? timerResumed,
    TResult? Function()? timerReset,
    TResult? Function(Duration duration)? timerTicked,
  }) {
    return setTimerInitial?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? setTimerInitial,
    TResult Function(Duration duration)? timerStarted,
    TResult Function()? timerPaused,
    TResult Function()? timerResumed,
    TResult Function()? timerReset,
    TResult Function(Duration duration)? timerTicked,
    required TResult orElse(),
  }) {
    if (setTimerInitial != null) {
      return setTimerInitial(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTimerInitial value) setTimerInitial,
    required TResult Function(_TimerStarted value) timerStarted,
    required TResult Function(_TimerPaused value) timerPaused,
    required TResult Function(_TimerResumed value) timerResumed,
    required TResult Function(_TimerReset value) timerReset,
    required TResult Function(_TimerTicked value) timerTicked,
  }) {
    return setTimerInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetTimerInitial value)? setTimerInitial,
    TResult? Function(_TimerStarted value)? timerStarted,
    TResult? Function(_TimerPaused value)? timerPaused,
    TResult? Function(_TimerResumed value)? timerResumed,
    TResult? Function(_TimerReset value)? timerReset,
    TResult? Function(_TimerTicked value)? timerTicked,
  }) {
    return setTimerInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTimerInitial value)? setTimerInitial,
    TResult Function(_TimerStarted value)? timerStarted,
    TResult Function(_TimerPaused value)? timerPaused,
    TResult Function(_TimerResumed value)? timerResumed,
    TResult Function(_TimerReset value)? timerReset,
    TResult Function(_TimerTicked value)? timerTicked,
    required TResult orElse(),
  }) {
    if (setTimerInitial != null) {
      return setTimerInitial(this);
    }
    return orElse();
  }
}

abstract class _SetTimerInitial implements AuthenticationErrorTimerEvent {
  const factory _SetTimerInitial({required final Duration duration}) =
      _$_SetTimerInitial;

  Duration get duration;
  @JsonKey(ignore: true)
  _$$_SetTimerInitialCopyWith<_$_SetTimerInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TimerStartedCopyWith<$Res> {
  factory _$$_TimerStartedCopyWith(
          _$_TimerStarted value, $Res Function(_$_TimerStarted) then) =
      __$$_TimerStartedCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$_TimerStartedCopyWithImpl<$Res>
    extends _$AuthenticationErrorTimerEventCopyWithImpl<$Res, _$_TimerStarted>
    implements _$$_TimerStartedCopyWith<$Res> {
  __$$_TimerStartedCopyWithImpl(
      _$_TimerStarted _value, $Res Function(_$_TimerStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$_TimerStarted(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_TimerStarted implements _TimerStarted {
  const _$_TimerStarted({required this.duration});

  @override
  final Duration duration;

  @override
  String toString() {
    return 'AuthenticationErrorTimerEvent.timerStarted(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimerStarted &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimerStartedCopyWith<_$_TimerStarted> get copyWith =>
      __$$_TimerStartedCopyWithImpl<_$_TimerStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) setTimerInitial,
    required TResult Function(Duration duration) timerStarted,
    required TResult Function() timerPaused,
    required TResult Function() timerResumed,
    required TResult Function() timerReset,
    required TResult Function(Duration duration) timerTicked,
  }) {
    return timerStarted(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? setTimerInitial,
    TResult? Function(Duration duration)? timerStarted,
    TResult? Function()? timerPaused,
    TResult? Function()? timerResumed,
    TResult? Function()? timerReset,
    TResult? Function(Duration duration)? timerTicked,
  }) {
    return timerStarted?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? setTimerInitial,
    TResult Function(Duration duration)? timerStarted,
    TResult Function()? timerPaused,
    TResult Function()? timerResumed,
    TResult Function()? timerReset,
    TResult Function(Duration duration)? timerTicked,
    required TResult orElse(),
  }) {
    if (timerStarted != null) {
      return timerStarted(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTimerInitial value) setTimerInitial,
    required TResult Function(_TimerStarted value) timerStarted,
    required TResult Function(_TimerPaused value) timerPaused,
    required TResult Function(_TimerResumed value) timerResumed,
    required TResult Function(_TimerReset value) timerReset,
    required TResult Function(_TimerTicked value) timerTicked,
  }) {
    return timerStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetTimerInitial value)? setTimerInitial,
    TResult? Function(_TimerStarted value)? timerStarted,
    TResult? Function(_TimerPaused value)? timerPaused,
    TResult? Function(_TimerResumed value)? timerResumed,
    TResult? Function(_TimerReset value)? timerReset,
    TResult? Function(_TimerTicked value)? timerTicked,
  }) {
    return timerStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTimerInitial value)? setTimerInitial,
    TResult Function(_TimerStarted value)? timerStarted,
    TResult Function(_TimerPaused value)? timerPaused,
    TResult Function(_TimerResumed value)? timerResumed,
    TResult Function(_TimerReset value)? timerReset,
    TResult Function(_TimerTicked value)? timerTicked,
    required TResult orElse(),
  }) {
    if (timerStarted != null) {
      return timerStarted(this);
    }
    return orElse();
  }
}

abstract class _TimerStarted implements AuthenticationErrorTimerEvent {
  const factory _TimerStarted({required final Duration duration}) =
      _$_TimerStarted;

  Duration get duration;
  @JsonKey(ignore: true)
  _$$_TimerStartedCopyWith<_$_TimerStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TimerPausedCopyWith<$Res> {
  factory _$$_TimerPausedCopyWith(
          _$_TimerPaused value, $Res Function(_$_TimerPaused) then) =
      __$$_TimerPausedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TimerPausedCopyWithImpl<$Res>
    extends _$AuthenticationErrorTimerEventCopyWithImpl<$Res, _$_TimerPaused>
    implements _$$_TimerPausedCopyWith<$Res> {
  __$$_TimerPausedCopyWithImpl(
      _$_TimerPaused _value, $Res Function(_$_TimerPaused) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TimerPaused implements _TimerPaused {
  const _$_TimerPaused();

  @override
  String toString() {
    return 'AuthenticationErrorTimerEvent.timerPaused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TimerPaused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) setTimerInitial,
    required TResult Function(Duration duration) timerStarted,
    required TResult Function() timerPaused,
    required TResult Function() timerResumed,
    required TResult Function() timerReset,
    required TResult Function(Duration duration) timerTicked,
  }) {
    return timerPaused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? setTimerInitial,
    TResult? Function(Duration duration)? timerStarted,
    TResult? Function()? timerPaused,
    TResult? Function()? timerResumed,
    TResult? Function()? timerReset,
    TResult? Function(Duration duration)? timerTicked,
  }) {
    return timerPaused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? setTimerInitial,
    TResult Function(Duration duration)? timerStarted,
    TResult Function()? timerPaused,
    TResult Function()? timerResumed,
    TResult Function()? timerReset,
    TResult Function(Duration duration)? timerTicked,
    required TResult orElse(),
  }) {
    if (timerPaused != null) {
      return timerPaused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTimerInitial value) setTimerInitial,
    required TResult Function(_TimerStarted value) timerStarted,
    required TResult Function(_TimerPaused value) timerPaused,
    required TResult Function(_TimerResumed value) timerResumed,
    required TResult Function(_TimerReset value) timerReset,
    required TResult Function(_TimerTicked value) timerTicked,
  }) {
    return timerPaused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetTimerInitial value)? setTimerInitial,
    TResult? Function(_TimerStarted value)? timerStarted,
    TResult? Function(_TimerPaused value)? timerPaused,
    TResult? Function(_TimerResumed value)? timerResumed,
    TResult? Function(_TimerReset value)? timerReset,
    TResult? Function(_TimerTicked value)? timerTicked,
  }) {
    return timerPaused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTimerInitial value)? setTimerInitial,
    TResult Function(_TimerStarted value)? timerStarted,
    TResult Function(_TimerPaused value)? timerPaused,
    TResult Function(_TimerResumed value)? timerResumed,
    TResult Function(_TimerReset value)? timerReset,
    TResult Function(_TimerTicked value)? timerTicked,
    required TResult orElse(),
  }) {
    if (timerPaused != null) {
      return timerPaused(this);
    }
    return orElse();
  }
}

abstract class _TimerPaused implements AuthenticationErrorTimerEvent {
  const factory _TimerPaused() = _$_TimerPaused;
}

/// @nodoc
abstract class _$$_TimerResumedCopyWith<$Res> {
  factory _$$_TimerResumedCopyWith(
          _$_TimerResumed value, $Res Function(_$_TimerResumed) then) =
      __$$_TimerResumedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TimerResumedCopyWithImpl<$Res>
    extends _$AuthenticationErrorTimerEventCopyWithImpl<$Res, _$_TimerResumed>
    implements _$$_TimerResumedCopyWith<$Res> {
  __$$_TimerResumedCopyWithImpl(
      _$_TimerResumed _value, $Res Function(_$_TimerResumed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TimerResumed implements _TimerResumed {
  const _$_TimerResumed();

  @override
  String toString() {
    return 'AuthenticationErrorTimerEvent.timerResumed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TimerResumed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) setTimerInitial,
    required TResult Function(Duration duration) timerStarted,
    required TResult Function() timerPaused,
    required TResult Function() timerResumed,
    required TResult Function() timerReset,
    required TResult Function(Duration duration) timerTicked,
  }) {
    return timerResumed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? setTimerInitial,
    TResult? Function(Duration duration)? timerStarted,
    TResult? Function()? timerPaused,
    TResult? Function()? timerResumed,
    TResult? Function()? timerReset,
    TResult? Function(Duration duration)? timerTicked,
  }) {
    return timerResumed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? setTimerInitial,
    TResult Function(Duration duration)? timerStarted,
    TResult Function()? timerPaused,
    TResult Function()? timerResumed,
    TResult Function()? timerReset,
    TResult Function(Duration duration)? timerTicked,
    required TResult orElse(),
  }) {
    if (timerResumed != null) {
      return timerResumed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTimerInitial value) setTimerInitial,
    required TResult Function(_TimerStarted value) timerStarted,
    required TResult Function(_TimerPaused value) timerPaused,
    required TResult Function(_TimerResumed value) timerResumed,
    required TResult Function(_TimerReset value) timerReset,
    required TResult Function(_TimerTicked value) timerTicked,
  }) {
    return timerResumed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetTimerInitial value)? setTimerInitial,
    TResult? Function(_TimerStarted value)? timerStarted,
    TResult? Function(_TimerPaused value)? timerPaused,
    TResult? Function(_TimerResumed value)? timerResumed,
    TResult? Function(_TimerReset value)? timerReset,
    TResult? Function(_TimerTicked value)? timerTicked,
  }) {
    return timerResumed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTimerInitial value)? setTimerInitial,
    TResult Function(_TimerStarted value)? timerStarted,
    TResult Function(_TimerPaused value)? timerPaused,
    TResult Function(_TimerResumed value)? timerResumed,
    TResult Function(_TimerReset value)? timerReset,
    TResult Function(_TimerTicked value)? timerTicked,
    required TResult orElse(),
  }) {
    if (timerResumed != null) {
      return timerResumed(this);
    }
    return orElse();
  }
}

abstract class _TimerResumed implements AuthenticationErrorTimerEvent {
  const factory _TimerResumed() = _$_TimerResumed;
}

/// @nodoc
abstract class _$$_TimerResetCopyWith<$Res> {
  factory _$$_TimerResetCopyWith(
          _$_TimerReset value, $Res Function(_$_TimerReset) then) =
      __$$_TimerResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TimerResetCopyWithImpl<$Res>
    extends _$AuthenticationErrorTimerEventCopyWithImpl<$Res, _$_TimerReset>
    implements _$$_TimerResetCopyWith<$Res> {
  __$$_TimerResetCopyWithImpl(
      _$_TimerReset _value, $Res Function(_$_TimerReset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TimerReset implements _TimerReset {
  const _$_TimerReset();

  @override
  String toString() {
    return 'AuthenticationErrorTimerEvent.timerReset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TimerReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) setTimerInitial,
    required TResult Function(Duration duration) timerStarted,
    required TResult Function() timerPaused,
    required TResult Function() timerResumed,
    required TResult Function() timerReset,
    required TResult Function(Duration duration) timerTicked,
  }) {
    return timerReset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? setTimerInitial,
    TResult? Function(Duration duration)? timerStarted,
    TResult? Function()? timerPaused,
    TResult? Function()? timerResumed,
    TResult? Function()? timerReset,
    TResult? Function(Duration duration)? timerTicked,
  }) {
    return timerReset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? setTimerInitial,
    TResult Function(Duration duration)? timerStarted,
    TResult Function()? timerPaused,
    TResult Function()? timerResumed,
    TResult Function()? timerReset,
    TResult Function(Duration duration)? timerTicked,
    required TResult orElse(),
  }) {
    if (timerReset != null) {
      return timerReset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTimerInitial value) setTimerInitial,
    required TResult Function(_TimerStarted value) timerStarted,
    required TResult Function(_TimerPaused value) timerPaused,
    required TResult Function(_TimerResumed value) timerResumed,
    required TResult Function(_TimerReset value) timerReset,
    required TResult Function(_TimerTicked value) timerTicked,
  }) {
    return timerReset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetTimerInitial value)? setTimerInitial,
    TResult? Function(_TimerStarted value)? timerStarted,
    TResult? Function(_TimerPaused value)? timerPaused,
    TResult? Function(_TimerResumed value)? timerResumed,
    TResult? Function(_TimerReset value)? timerReset,
    TResult? Function(_TimerTicked value)? timerTicked,
  }) {
    return timerReset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTimerInitial value)? setTimerInitial,
    TResult Function(_TimerStarted value)? timerStarted,
    TResult Function(_TimerPaused value)? timerPaused,
    TResult Function(_TimerResumed value)? timerResumed,
    TResult Function(_TimerReset value)? timerReset,
    TResult Function(_TimerTicked value)? timerTicked,
    required TResult orElse(),
  }) {
    if (timerReset != null) {
      return timerReset(this);
    }
    return orElse();
  }
}

abstract class _TimerReset implements AuthenticationErrorTimerEvent {
  const factory _TimerReset() = _$_TimerReset;
}

/// @nodoc
abstract class _$$_TimerTickedCopyWith<$Res> {
  factory _$$_TimerTickedCopyWith(
          _$_TimerTicked value, $Res Function(_$_TimerTicked) then) =
      __$$_TimerTickedCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$_TimerTickedCopyWithImpl<$Res>
    extends _$AuthenticationErrorTimerEventCopyWithImpl<$Res, _$_TimerTicked>
    implements _$$_TimerTickedCopyWith<$Res> {
  __$$_TimerTickedCopyWithImpl(
      _$_TimerTicked _value, $Res Function(_$_TimerTicked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$_TimerTicked(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_TimerTicked implements _TimerTicked {
  const _$_TimerTicked({required this.duration});

  @override
  final Duration duration;

  @override
  String toString() {
    return 'AuthenticationErrorTimerEvent.timerTicked(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimerTicked &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimerTickedCopyWith<_$_TimerTicked> get copyWith =>
      __$$_TimerTickedCopyWithImpl<_$_TimerTicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) setTimerInitial,
    required TResult Function(Duration duration) timerStarted,
    required TResult Function() timerPaused,
    required TResult Function() timerResumed,
    required TResult Function() timerReset,
    required TResult Function(Duration duration) timerTicked,
  }) {
    return timerTicked(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? setTimerInitial,
    TResult? Function(Duration duration)? timerStarted,
    TResult? Function()? timerPaused,
    TResult? Function()? timerResumed,
    TResult? Function()? timerReset,
    TResult? Function(Duration duration)? timerTicked,
  }) {
    return timerTicked?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? setTimerInitial,
    TResult Function(Duration duration)? timerStarted,
    TResult Function()? timerPaused,
    TResult Function()? timerResumed,
    TResult Function()? timerReset,
    TResult Function(Duration duration)? timerTicked,
    required TResult orElse(),
  }) {
    if (timerTicked != null) {
      return timerTicked(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTimerInitial value) setTimerInitial,
    required TResult Function(_TimerStarted value) timerStarted,
    required TResult Function(_TimerPaused value) timerPaused,
    required TResult Function(_TimerResumed value) timerResumed,
    required TResult Function(_TimerReset value) timerReset,
    required TResult Function(_TimerTicked value) timerTicked,
  }) {
    return timerTicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetTimerInitial value)? setTimerInitial,
    TResult? Function(_TimerStarted value)? timerStarted,
    TResult? Function(_TimerPaused value)? timerPaused,
    TResult? Function(_TimerResumed value)? timerResumed,
    TResult? Function(_TimerReset value)? timerReset,
    TResult? Function(_TimerTicked value)? timerTicked,
  }) {
    return timerTicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTimerInitial value)? setTimerInitial,
    TResult Function(_TimerStarted value)? timerStarted,
    TResult Function(_TimerPaused value)? timerPaused,
    TResult Function(_TimerResumed value)? timerResumed,
    TResult Function(_TimerReset value)? timerReset,
    TResult Function(_TimerTicked value)? timerTicked,
    required TResult orElse(),
  }) {
    if (timerTicked != null) {
      return timerTicked(this);
    }
    return orElse();
  }
}

abstract class _TimerTicked implements AuthenticationErrorTimerEvent {
  const factory _TimerTicked({required final Duration duration}) =
      _$_TimerTicked;

  Duration get duration;
  @JsonKey(ignore: true)
  _$$_TimerTickedCopyWith<_$_TimerTicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationErrorTimerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) timerInitial,
    required TResult Function(Duration duration) timerRunInProgress,
    required TResult Function(Duration duration) timerRunPause,
    required TResult Function(int attemptsEnterCode) timerRunComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? timerInitial,
    TResult? Function(Duration duration)? timerRunInProgress,
    TResult? Function(Duration duration)? timerRunPause,
    TResult? Function(int attemptsEnterCode)? timerRunComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? timerInitial,
    TResult Function(Duration duration)? timerRunInProgress,
    TResult Function(Duration duration)? timerRunPause,
    TResult Function(int attemptsEnterCode)? timerRunComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimerInitial value) timerInitial,
    required TResult Function(_TimerRunInProgress value) timerRunInProgress,
    required TResult Function(_TimerRunPause value) timerRunPause,
    required TResult Function(_TimerRunComplete value) timerRunComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TimerInitial value)? timerInitial,
    TResult? Function(_TimerRunInProgress value)? timerRunInProgress,
    TResult? Function(_TimerRunPause value)? timerRunPause,
    TResult? Function(_TimerRunComplete value)? timerRunComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimerInitial value)? timerInitial,
    TResult Function(_TimerRunInProgress value)? timerRunInProgress,
    TResult Function(_TimerRunPause value)? timerRunPause,
    TResult Function(_TimerRunComplete value)? timerRunComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationErrorTimerStateCopyWith<$Res> {
  factory $AuthenticationErrorTimerStateCopyWith(
          AuthenticationErrorTimerState value,
          $Res Function(AuthenticationErrorTimerState) then) =
      _$AuthenticationErrorTimerStateCopyWithImpl<$Res,
          AuthenticationErrorTimerState>;
}

/// @nodoc
class _$AuthenticationErrorTimerStateCopyWithImpl<$Res,
        $Val extends AuthenticationErrorTimerState>
    implements $AuthenticationErrorTimerStateCopyWith<$Res> {
  _$AuthenticationErrorTimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TimerInitialCopyWith<$Res> {
  factory _$$_TimerInitialCopyWith(
          _$_TimerInitial value, $Res Function(_$_TimerInitial) then) =
      __$$_TimerInitialCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$_TimerInitialCopyWithImpl<$Res>
    extends _$AuthenticationErrorTimerStateCopyWithImpl<$Res, _$_TimerInitial>
    implements _$$_TimerInitialCopyWith<$Res> {
  __$$_TimerInitialCopyWithImpl(
      _$_TimerInitial _value, $Res Function(_$_TimerInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$_TimerInitial(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_TimerInitial implements _TimerInitial {
  const _$_TimerInitial({required this.duration});

  @override
  final Duration duration;

  @override
  String toString() {
    return 'AuthenticationErrorTimerState.timerInitial(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimerInitial &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimerInitialCopyWith<_$_TimerInitial> get copyWith =>
      __$$_TimerInitialCopyWithImpl<_$_TimerInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) timerInitial,
    required TResult Function(Duration duration) timerRunInProgress,
    required TResult Function(Duration duration) timerRunPause,
    required TResult Function(int attemptsEnterCode) timerRunComplete,
  }) {
    return timerInitial(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? timerInitial,
    TResult? Function(Duration duration)? timerRunInProgress,
    TResult? Function(Duration duration)? timerRunPause,
    TResult? Function(int attemptsEnterCode)? timerRunComplete,
  }) {
    return timerInitial?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? timerInitial,
    TResult Function(Duration duration)? timerRunInProgress,
    TResult Function(Duration duration)? timerRunPause,
    TResult Function(int attemptsEnterCode)? timerRunComplete,
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
    required TResult Function(_TimerInitial value) timerInitial,
    required TResult Function(_TimerRunInProgress value) timerRunInProgress,
    required TResult Function(_TimerRunPause value) timerRunPause,
    required TResult Function(_TimerRunComplete value) timerRunComplete,
  }) {
    return timerInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TimerInitial value)? timerInitial,
    TResult? Function(_TimerRunInProgress value)? timerRunInProgress,
    TResult? Function(_TimerRunPause value)? timerRunPause,
    TResult? Function(_TimerRunComplete value)? timerRunComplete,
  }) {
    return timerInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimerInitial value)? timerInitial,
    TResult Function(_TimerRunInProgress value)? timerRunInProgress,
    TResult Function(_TimerRunPause value)? timerRunPause,
    TResult Function(_TimerRunComplete value)? timerRunComplete,
    required TResult orElse(),
  }) {
    if (timerInitial != null) {
      return timerInitial(this);
    }
    return orElse();
  }
}

abstract class _TimerInitial implements AuthenticationErrorTimerState {
  const factory _TimerInitial({required final Duration duration}) =
      _$_TimerInitial;

  Duration get duration;
  @JsonKey(ignore: true)
  _$$_TimerInitialCopyWith<_$_TimerInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TimerRunInProgressCopyWith<$Res> {
  factory _$$_TimerRunInProgressCopyWith(_$_TimerRunInProgress value,
          $Res Function(_$_TimerRunInProgress) then) =
      __$$_TimerRunInProgressCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$_TimerRunInProgressCopyWithImpl<$Res>
    extends _$AuthenticationErrorTimerStateCopyWithImpl<$Res,
        _$_TimerRunInProgress> implements _$$_TimerRunInProgressCopyWith<$Res> {
  __$$_TimerRunInProgressCopyWithImpl(
      _$_TimerRunInProgress _value, $Res Function(_$_TimerRunInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$_TimerRunInProgress(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_TimerRunInProgress implements _TimerRunInProgress {
  const _$_TimerRunInProgress({required this.duration});

  @override
  final Duration duration;

  @override
  String toString() {
    return 'AuthenticationErrorTimerState.timerRunInProgress(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimerRunInProgress &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimerRunInProgressCopyWith<_$_TimerRunInProgress> get copyWith =>
      __$$_TimerRunInProgressCopyWithImpl<_$_TimerRunInProgress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) timerInitial,
    required TResult Function(Duration duration) timerRunInProgress,
    required TResult Function(Duration duration) timerRunPause,
    required TResult Function(int attemptsEnterCode) timerRunComplete,
  }) {
    return timerRunInProgress(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? timerInitial,
    TResult? Function(Duration duration)? timerRunInProgress,
    TResult? Function(Duration duration)? timerRunPause,
    TResult? Function(int attemptsEnterCode)? timerRunComplete,
  }) {
    return timerRunInProgress?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? timerInitial,
    TResult Function(Duration duration)? timerRunInProgress,
    TResult Function(Duration duration)? timerRunPause,
    TResult Function(int attemptsEnterCode)? timerRunComplete,
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
    required TResult Function(_TimerInitial value) timerInitial,
    required TResult Function(_TimerRunInProgress value) timerRunInProgress,
    required TResult Function(_TimerRunPause value) timerRunPause,
    required TResult Function(_TimerRunComplete value) timerRunComplete,
  }) {
    return timerRunInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TimerInitial value)? timerInitial,
    TResult? Function(_TimerRunInProgress value)? timerRunInProgress,
    TResult? Function(_TimerRunPause value)? timerRunPause,
    TResult? Function(_TimerRunComplete value)? timerRunComplete,
  }) {
    return timerRunInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimerInitial value)? timerInitial,
    TResult Function(_TimerRunInProgress value)? timerRunInProgress,
    TResult Function(_TimerRunPause value)? timerRunPause,
    TResult Function(_TimerRunComplete value)? timerRunComplete,
    required TResult orElse(),
  }) {
    if (timerRunInProgress != null) {
      return timerRunInProgress(this);
    }
    return orElse();
  }
}

abstract class _TimerRunInProgress implements AuthenticationErrorTimerState {
  const factory _TimerRunInProgress({required final Duration duration}) =
      _$_TimerRunInProgress;

  Duration get duration;
  @JsonKey(ignore: true)
  _$$_TimerRunInProgressCopyWith<_$_TimerRunInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TimerRunPauseCopyWith<$Res> {
  factory _$$_TimerRunPauseCopyWith(
          _$_TimerRunPause value, $Res Function(_$_TimerRunPause) then) =
      __$$_TimerRunPauseCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$_TimerRunPauseCopyWithImpl<$Res>
    extends _$AuthenticationErrorTimerStateCopyWithImpl<$Res, _$_TimerRunPause>
    implements _$$_TimerRunPauseCopyWith<$Res> {
  __$$_TimerRunPauseCopyWithImpl(
      _$_TimerRunPause _value, $Res Function(_$_TimerRunPause) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$_TimerRunPause(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_TimerRunPause implements _TimerRunPause {
  const _$_TimerRunPause({required this.duration});

  @override
  final Duration duration;

  @override
  String toString() {
    return 'AuthenticationErrorTimerState.timerRunPause(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimerRunPause &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimerRunPauseCopyWith<_$_TimerRunPause> get copyWith =>
      __$$_TimerRunPauseCopyWithImpl<_$_TimerRunPause>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) timerInitial,
    required TResult Function(Duration duration) timerRunInProgress,
    required TResult Function(Duration duration) timerRunPause,
    required TResult Function(int attemptsEnterCode) timerRunComplete,
  }) {
    return timerRunPause(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? timerInitial,
    TResult? Function(Duration duration)? timerRunInProgress,
    TResult? Function(Duration duration)? timerRunPause,
    TResult? Function(int attemptsEnterCode)? timerRunComplete,
  }) {
    return timerRunPause?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? timerInitial,
    TResult Function(Duration duration)? timerRunInProgress,
    TResult Function(Duration duration)? timerRunPause,
    TResult Function(int attemptsEnterCode)? timerRunComplete,
    required TResult orElse(),
  }) {
    if (timerRunPause != null) {
      return timerRunPause(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimerInitial value) timerInitial,
    required TResult Function(_TimerRunInProgress value) timerRunInProgress,
    required TResult Function(_TimerRunPause value) timerRunPause,
    required TResult Function(_TimerRunComplete value) timerRunComplete,
  }) {
    return timerRunPause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TimerInitial value)? timerInitial,
    TResult? Function(_TimerRunInProgress value)? timerRunInProgress,
    TResult? Function(_TimerRunPause value)? timerRunPause,
    TResult? Function(_TimerRunComplete value)? timerRunComplete,
  }) {
    return timerRunPause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimerInitial value)? timerInitial,
    TResult Function(_TimerRunInProgress value)? timerRunInProgress,
    TResult Function(_TimerRunPause value)? timerRunPause,
    TResult Function(_TimerRunComplete value)? timerRunComplete,
    required TResult orElse(),
  }) {
    if (timerRunPause != null) {
      return timerRunPause(this);
    }
    return orElse();
  }
}

abstract class _TimerRunPause implements AuthenticationErrorTimerState {
  const factory _TimerRunPause({required final Duration duration}) =
      _$_TimerRunPause;

  Duration get duration;
  @JsonKey(ignore: true)
  _$$_TimerRunPauseCopyWith<_$_TimerRunPause> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TimerRunCompleteCopyWith<$Res> {
  factory _$$_TimerRunCompleteCopyWith(
          _$_TimerRunComplete value, $Res Function(_$_TimerRunComplete) then) =
      __$$_TimerRunCompleteCopyWithImpl<$Res>;
  @useResult
  $Res call({int attemptsEnterCode});
}

/// @nodoc
class __$$_TimerRunCompleteCopyWithImpl<$Res>
    extends _$AuthenticationErrorTimerStateCopyWithImpl<$Res,
        _$_TimerRunComplete> implements _$$_TimerRunCompleteCopyWith<$Res> {
  __$$_TimerRunCompleteCopyWithImpl(
      _$_TimerRunComplete _value, $Res Function(_$_TimerRunComplete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attemptsEnterCode = null,
  }) {
    return _then(_$_TimerRunComplete(
      attemptsEnterCode: null == attemptsEnterCode
          ? _value.attemptsEnterCode
          : attemptsEnterCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TimerRunComplete implements _TimerRunComplete {
  const _$_TimerRunComplete({required this.attemptsEnterCode});

  @override
  final int attemptsEnterCode;

  @override
  String toString() {
    return 'AuthenticationErrorTimerState.timerRunComplete(attemptsEnterCode: $attemptsEnterCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimerRunComplete &&
            (identical(other.attemptsEnterCode, attemptsEnterCode) ||
                other.attemptsEnterCode == attemptsEnterCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, attemptsEnterCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimerRunCompleteCopyWith<_$_TimerRunComplete> get copyWith =>
      __$$_TimerRunCompleteCopyWithImpl<_$_TimerRunComplete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) timerInitial,
    required TResult Function(Duration duration) timerRunInProgress,
    required TResult Function(Duration duration) timerRunPause,
    required TResult Function(int attemptsEnterCode) timerRunComplete,
  }) {
    return timerRunComplete(attemptsEnterCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration)? timerInitial,
    TResult? Function(Duration duration)? timerRunInProgress,
    TResult? Function(Duration duration)? timerRunPause,
    TResult? Function(int attemptsEnterCode)? timerRunComplete,
  }) {
    return timerRunComplete?.call(attemptsEnterCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? timerInitial,
    TResult Function(Duration duration)? timerRunInProgress,
    TResult Function(Duration duration)? timerRunPause,
    TResult Function(int attemptsEnterCode)? timerRunComplete,
    required TResult orElse(),
  }) {
    if (timerRunComplete != null) {
      return timerRunComplete(attemptsEnterCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimerInitial value) timerInitial,
    required TResult Function(_TimerRunInProgress value) timerRunInProgress,
    required TResult Function(_TimerRunPause value) timerRunPause,
    required TResult Function(_TimerRunComplete value) timerRunComplete,
  }) {
    return timerRunComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TimerInitial value)? timerInitial,
    TResult? Function(_TimerRunInProgress value)? timerRunInProgress,
    TResult? Function(_TimerRunPause value)? timerRunPause,
    TResult? Function(_TimerRunComplete value)? timerRunComplete,
  }) {
    return timerRunComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimerInitial value)? timerInitial,
    TResult Function(_TimerRunInProgress value)? timerRunInProgress,
    TResult Function(_TimerRunPause value)? timerRunPause,
    TResult Function(_TimerRunComplete value)? timerRunComplete,
    required TResult orElse(),
  }) {
    if (timerRunComplete != null) {
      return timerRunComplete(this);
    }
    return orElse();
  }
}

abstract class _TimerRunComplete implements AuthenticationErrorTimerState {
  const factory _TimerRunComplete({required final int attemptsEnterCode}) =
      _$_TimerRunComplete;

  int get attemptsEnterCode;
  @JsonKey(ignore: true)
  _$$_TimerRunCompleteCopyWith<_$_TimerRunComplete> get copyWith =>
      throw _privateConstructorUsedError;
}
