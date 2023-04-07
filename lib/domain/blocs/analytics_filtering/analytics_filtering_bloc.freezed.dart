// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_filtering_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnalyticsFilteringEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TimeSliceEnum timeSlice) timeSliceChanged,
    required TResult Function(String clubUuidSelected) selectedClubsChanged,
    required TResult Function(TimeSliceEnum timeSlice, DateTime selectedDate)
        dateRangeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TimeSliceEnum timeSlice)? timeSliceChanged,
    TResult? Function(String clubUuidSelected)? selectedClubsChanged,
    TResult? Function(TimeSliceEnum timeSlice, DateTime selectedDate)?
        dateRangeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TimeSliceEnum timeSlice)? timeSliceChanged,
    TResult Function(String clubUuidSelected)? selectedClubsChanged,
    TResult Function(TimeSliceEnum timeSlice, DateTime selectedDate)?
        dateRangeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AnalyticsFilteringEventTimeSliceChanged value)
        timeSliceChanged,
    required TResult Function(
            _AnalyticsFilteringEventSelectedClubsChanged value)
        selectedClubsChanged,
    required TResult Function(_AnalyticsFilteringEventDateRangeChanged value)
        dateRangeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyticsFilteringEventTimeSliceChanged value)?
        timeSliceChanged,
    TResult? Function(_AnalyticsFilteringEventSelectedClubsChanged value)?
        selectedClubsChanged,
    TResult? Function(_AnalyticsFilteringEventDateRangeChanged value)?
        dateRangeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyticsFilteringEventTimeSliceChanged value)?
        timeSliceChanged,
    TResult Function(_AnalyticsFilteringEventSelectedClubsChanged value)?
        selectedClubsChanged,
    TResult Function(_AnalyticsFilteringEventDateRangeChanged value)?
        dateRangeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsFilteringEventCopyWith<$Res> {
  factory $AnalyticsFilteringEventCopyWith(AnalyticsFilteringEvent value,
          $Res Function(AnalyticsFilteringEvent) then) =
      _$AnalyticsFilteringEventCopyWithImpl<$Res, AnalyticsFilteringEvent>;
}

/// @nodoc
class _$AnalyticsFilteringEventCopyWithImpl<$Res,
        $Val extends AnalyticsFilteringEvent>
    implements $AnalyticsFilteringEventCopyWith<$Res> {
  _$AnalyticsFilteringEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AnalyticsFilteringEventTimeSliceChangedCopyWith<$Res> {
  factory _$$_AnalyticsFilteringEventTimeSliceChangedCopyWith(
          _$_AnalyticsFilteringEventTimeSliceChanged value,
          $Res Function(_$_AnalyticsFilteringEventTimeSliceChanged) then) =
      __$$_AnalyticsFilteringEventTimeSliceChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({TimeSliceEnum timeSlice});
}

/// @nodoc
class __$$_AnalyticsFilteringEventTimeSliceChangedCopyWithImpl<$Res>
    extends _$AnalyticsFilteringEventCopyWithImpl<$Res,
        _$_AnalyticsFilteringEventTimeSliceChanged>
    implements _$$_AnalyticsFilteringEventTimeSliceChangedCopyWith<$Res> {
  __$$_AnalyticsFilteringEventTimeSliceChangedCopyWithImpl(
      _$_AnalyticsFilteringEventTimeSliceChanged _value,
      $Res Function(_$_AnalyticsFilteringEventTimeSliceChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSlice = null,
  }) {
    return _then(_$_AnalyticsFilteringEventTimeSliceChanged(
      timeSlice: null == timeSlice
          ? _value.timeSlice
          : timeSlice // ignore: cast_nullable_to_non_nullable
              as TimeSliceEnum,
    ));
  }
}

/// @nodoc

class _$_AnalyticsFilteringEventTimeSliceChanged
    implements _AnalyticsFilteringEventTimeSliceChanged {
  const _$_AnalyticsFilteringEventTimeSliceChanged({required this.timeSlice});

  @override
  final TimeSliceEnum timeSlice;

  @override
  String toString() {
    return 'AnalyticsFilteringEvent.timeSliceChanged(timeSlice: $timeSlice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnalyticsFilteringEventTimeSliceChanged &&
            (identical(other.timeSlice, timeSlice) ||
                other.timeSlice == timeSlice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeSlice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnalyticsFilteringEventTimeSliceChangedCopyWith<
          _$_AnalyticsFilteringEventTimeSliceChanged>
      get copyWith => __$$_AnalyticsFilteringEventTimeSliceChangedCopyWithImpl<
          _$_AnalyticsFilteringEventTimeSliceChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TimeSliceEnum timeSlice) timeSliceChanged,
    required TResult Function(String clubUuidSelected) selectedClubsChanged,
    required TResult Function(TimeSliceEnum timeSlice, DateTime selectedDate)
        dateRangeChanged,
  }) {
    return timeSliceChanged(timeSlice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TimeSliceEnum timeSlice)? timeSliceChanged,
    TResult? Function(String clubUuidSelected)? selectedClubsChanged,
    TResult? Function(TimeSliceEnum timeSlice, DateTime selectedDate)?
        dateRangeChanged,
  }) {
    return timeSliceChanged?.call(timeSlice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TimeSliceEnum timeSlice)? timeSliceChanged,
    TResult Function(String clubUuidSelected)? selectedClubsChanged,
    TResult Function(TimeSliceEnum timeSlice, DateTime selectedDate)?
        dateRangeChanged,
    required TResult orElse(),
  }) {
    if (timeSliceChanged != null) {
      return timeSliceChanged(timeSlice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AnalyticsFilteringEventTimeSliceChanged value)
        timeSliceChanged,
    required TResult Function(
            _AnalyticsFilteringEventSelectedClubsChanged value)
        selectedClubsChanged,
    required TResult Function(_AnalyticsFilteringEventDateRangeChanged value)
        dateRangeChanged,
  }) {
    return timeSliceChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyticsFilteringEventTimeSliceChanged value)?
        timeSliceChanged,
    TResult? Function(_AnalyticsFilteringEventSelectedClubsChanged value)?
        selectedClubsChanged,
    TResult? Function(_AnalyticsFilteringEventDateRangeChanged value)?
        dateRangeChanged,
  }) {
    return timeSliceChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyticsFilteringEventTimeSliceChanged value)?
        timeSliceChanged,
    TResult Function(_AnalyticsFilteringEventSelectedClubsChanged value)?
        selectedClubsChanged,
    TResult Function(_AnalyticsFilteringEventDateRangeChanged value)?
        dateRangeChanged,
    required TResult orElse(),
  }) {
    if (timeSliceChanged != null) {
      return timeSliceChanged(this);
    }
    return orElse();
  }
}

abstract class _AnalyticsFilteringEventTimeSliceChanged
    implements AnalyticsFilteringEvent {
  const factory _AnalyticsFilteringEventTimeSliceChanged(
          {required final TimeSliceEnum timeSlice}) =
      _$_AnalyticsFilteringEventTimeSliceChanged;

  TimeSliceEnum get timeSlice;
  @JsonKey(ignore: true)
  _$$_AnalyticsFilteringEventTimeSliceChangedCopyWith<
          _$_AnalyticsFilteringEventTimeSliceChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AnalyticsFilteringEventSelectedClubsChangedCopyWith<$Res> {
  factory _$$_AnalyticsFilteringEventSelectedClubsChangedCopyWith(
          _$_AnalyticsFilteringEventSelectedClubsChanged value,
          $Res Function(_$_AnalyticsFilteringEventSelectedClubsChanged) then) =
      __$$_AnalyticsFilteringEventSelectedClubsChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String clubUuidSelected});
}

/// @nodoc
class __$$_AnalyticsFilteringEventSelectedClubsChangedCopyWithImpl<$Res>
    extends _$AnalyticsFilteringEventCopyWithImpl<$Res,
        _$_AnalyticsFilteringEventSelectedClubsChanged>
    implements _$$_AnalyticsFilteringEventSelectedClubsChangedCopyWith<$Res> {
  __$$_AnalyticsFilteringEventSelectedClubsChangedCopyWithImpl(
      _$_AnalyticsFilteringEventSelectedClubsChanged _value,
      $Res Function(_$_AnalyticsFilteringEventSelectedClubsChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubUuidSelected = null,
  }) {
    return _then(_$_AnalyticsFilteringEventSelectedClubsChanged(
      clubUuidSelected: null == clubUuidSelected
          ? _value.clubUuidSelected
          : clubUuidSelected // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AnalyticsFilteringEventSelectedClubsChanged
    implements _AnalyticsFilteringEventSelectedClubsChanged {
  const _$_AnalyticsFilteringEventSelectedClubsChanged(
      {required this.clubUuidSelected});

  @override
  final String clubUuidSelected;

  @override
  String toString() {
    return 'AnalyticsFilteringEvent.selectedClubsChanged(clubUuidSelected: $clubUuidSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnalyticsFilteringEventSelectedClubsChanged &&
            (identical(other.clubUuidSelected, clubUuidSelected) ||
                other.clubUuidSelected == clubUuidSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clubUuidSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnalyticsFilteringEventSelectedClubsChangedCopyWith<
          _$_AnalyticsFilteringEventSelectedClubsChanged>
      get copyWith =>
          __$$_AnalyticsFilteringEventSelectedClubsChangedCopyWithImpl<
              _$_AnalyticsFilteringEventSelectedClubsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TimeSliceEnum timeSlice) timeSliceChanged,
    required TResult Function(String clubUuidSelected) selectedClubsChanged,
    required TResult Function(TimeSliceEnum timeSlice, DateTime selectedDate)
        dateRangeChanged,
  }) {
    return selectedClubsChanged(clubUuidSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TimeSliceEnum timeSlice)? timeSliceChanged,
    TResult? Function(String clubUuidSelected)? selectedClubsChanged,
    TResult? Function(TimeSliceEnum timeSlice, DateTime selectedDate)?
        dateRangeChanged,
  }) {
    return selectedClubsChanged?.call(clubUuidSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TimeSliceEnum timeSlice)? timeSliceChanged,
    TResult Function(String clubUuidSelected)? selectedClubsChanged,
    TResult Function(TimeSliceEnum timeSlice, DateTime selectedDate)?
        dateRangeChanged,
    required TResult orElse(),
  }) {
    if (selectedClubsChanged != null) {
      return selectedClubsChanged(clubUuidSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AnalyticsFilteringEventTimeSliceChanged value)
        timeSliceChanged,
    required TResult Function(
            _AnalyticsFilteringEventSelectedClubsChanged value)
        selectedClubsChanged,
    required TResult Function(_AnalyticsFilteringEventDateRangeChanged value)
        dateRangeChanged,
  }) {
    return selectedClubsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyticsFilteringEventTimeSliceChanged value)?
        timeSliceChanged,
    TResult? Function(_AnalyticsFilteringEventSelectedClubsChanged value)?
        selectedClubsChanged,
    TResult? Function(_AnalyticsFilteringEventDateRangeChanged value)?
        dateRangeChanged,
  }) {
    return selectedClubsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyticsFilteringEventTimeSliceChanged value)?
        timeSliceChanged,
    TResult Function(_AnalyticsFilteringEventSelectedClubsChanged value)?
        selectedClubsChanged,
    TResult Function(_AnalyticsFilteringEventDateRangeChanged value)?
        dateRangeChanged,
    required TResult orElse(),
  }) {
    if (selectedClubsChanged != null) {
      return selectedClubsChanged(this);
    }
    return orElse();
  }
}

abstract class _AnalyticsFilteringEventSelectedClubsChanged
    implements AnalyticsFilteringEvent {
  const factory _AnalyticsFilteringEventSelectedClubsChanged(
          {required final String clubUuidSelected}) =
      _$_AnalyticsFilteringEventSelectedClubsChanged;

  String get clubUuidSelected;
  @JsonKey(ignore: true)
  _$$_AnalyticsFilteringEventSelectedClubsChangedCopyWith<
          _$_AnalyticsFilteringEventSelectedClubsChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AnalyticsFilteringEventDateRangeChangedCopyWith<$Res> {
  factory _$$_AnalyticsFilteringEventDateRangeChangedCopyWith(
          _$_AnalyticsFilteringEventDateRangeChanged value,
          $Res Function(_$_AnalyticsFilteringEventDateRangeChanged) then) =
      __$$_AnalyticsFilteringEventDateRangeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({TimeSliceEnum timeSlice, DateTime selectedDate});
}

/// @nodoc
class __$$_AnalyticsFilteringEventDateRangeChangedCopyWithImpl<$Res>
    extends _$AnalyticsFilteringEventCopyWithImpl<$Res,
        _$_AnalyticsFilteringEventDateRangeChanged>
    implements _$$_AnalyticsFilteringEventDateRangeChangedCopyWith<$Res> {
  __$$_AnalyticsFilteringEventDateRangeChangedCopyWithImpl(
      _$_AnalyticsFilteringEventDateRangeChanged _value,
      $Res Function(_$_AnalyticsFilteringEventDateRangeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSlice = null,
    Object? selectedDate = null,
  }) {
    return _then(_$_AnalyticsFilteringEventDateRangeChanged(
      timeSlice: null == timeSlice
          ? _value.timeSlice
          : timeSlice // ignore: cast_nullable_to_non_nullable
              as TimeSliceEnum,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_AnalyticsFilteringEventDateRangeChanged
    implements _AnalyticsFilteringEventDateRangeChanged {
  const _$_AnalyticsFilteringEventDateRangeChanged(
      {required this.timeSlice, required this.selectedDate});

  @override
  final TimeSliceEnum timeSlice;
  @override
  final DateTime selectedDate;

  @override
  String toString() {
    return 'AnalyticsFilteringEvent.dateRangeChanged(timeSlice: $timeSlice, selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnalyticsFilteringEventDateRangeChanged &&
            (identical(other.timeSlice, timeSlice) ||
                other.timeSlice == timeSlice) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeSlice, selectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnalyticsFilteringEventDateRangeChangedCopyWith<
          _$_AnalyticsFilteringEventDateRangeChanged>
      get copyWith => __$$_AnalyticsFilteringEventDateRangeChangedCopyWithImpl<
          _$_AnalyticsFilteringEventDateRangeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TimeSliceEnum timeSlice) timeSliceChanged,
    required TResult Function(String clubUuidSelected) selectedClubsChanged,
    required TResult Function(TimeSliceEnum timeSlice, DateTime selectedDate)
        dateRangeChanged,
  }) {
    return dateRangeChanged(timeSlice, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TimeSliceEnum timeSlice)? timeSliceChanged,
    TResult? Function(String clubUuidSelected)? selectedClubsChanged,
    TResult? Function(TimeSliceEnum timeSlice, DateTime selectedDate)?
        dateRangeChanged,
  }) {
    return dateRangeChanged?.call(timeSlice, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TimeSliceEnum timeSlice)? timeSliceChanged,
    TResult Function(String clubUuidSelected)? selectedClubsChanged,
    TResult Function(TimeSliceEnum timeSlice, DateTime selectedDate)?
        dateRangeChanged,
    required TResult orElse(),
  }) {
    if (dateRangeChanged != null) {
      return dateRangeChanged(timeSlice, selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AnalyticsFilteringEventTimeSliceChanged value)
        timeSliceChanged,
    required TResult Function(
            _AnalyticsFilteringEventSelectedClubsChanged value)
        selectedClubsChanged,
    required TResult Function(_AnalyticsFilteringEventDateRangeChanged value)
        dateRangeChanged,
  }) {
    return dateRangeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyticsFilteringEventTimeSliceChanged value)?
        timeSliceChanged,
    TResult? Function(_AnalyticsFilteringEventSelectedClubsChanged value)?
        selectedClubsChanged,
    TResult? Function(_AnalyticsFilteringEventDateRangeChanged value)?
        dateRangeChanged,
  }) {
    return dateRangeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyticsFilteringEventTimeSliceChanged value)?
        timeSliceChanged,
    TResult Function(_AnalyticsFilteringEventSelectedClubsChanged value)?
        selectedClubsChanged,
    TResult Function(_AnalyticsFilteringEventDateRangeChanged value)?
        dateRangeChanged,
    required TResult orElse(),
  }) {
    if (dateRangeChanged != null) {
      return dateRangeChanged(this);
    }
    return orElse();
  }
}

abstract class _AnalyticsFilteringEventDateRangeChanged
    implements AnalyticsFilteringEvent {
  const factory _AnalyticsFilteringEventDateRangeChanged(
          {required final TimeSliceEnum timeSlice,
          required final DateTime selectedDate}) =
      _$_AnalyticsFilteringEventDateRangeChanged;

  TimeSliceEnum get timeSlice;
  DateTime get selectedDate;
  @JsonKey(ignore: true)
  _$$_AnalyticsFilteringEventDateRangeChangedCopyWith<
          _$_AnalyticsFilteringEventDateRangeChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AnalyticsFilteringState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            TimeSliceEnum timeSlice,
            Map<String, bool>? clubsUuid,
            DateTime startDateRange,
            DateTime endDateRange,
            DateTime selectedDate)
        loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            TimeSliceEnum timeSlice,
            Map<String, bool>? clubsUuid,
            DateTime startDateRange,
            DateTime endDateRange,
            DateTime selectedDate)?
        loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            TimeSliceEnum timeSlice,
            Map<String, bool>? clubsUuid,
            DateTime startDateRange,
            DateTime endDateRange,
            DateTime selectedDate)?
        loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AnalyticsFilteringStateInitial value) initial,
    required TResult Function(_AnalyticsFilteringStateLoaded value) loaded,
    required TResult Function(_AnalyticsFilteringStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyticsFilteringStateInitial value)? initial,
    TResult? Function(_AnalyticsFilteringStateLoaded value)? loaded,
    TResult? Function(_AnalyticsFilteringStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyticsFilteringStateInitial value)? initial,
    TResult Function(_AnalyticsFilteringStateLoaded value)? loaded,
    TResult Function(_AnalyticsFilteringStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsFilteringStateCopyWith<$Res> {
  factory $AnalyticsFilteringStateCopyWith(AnalyticsFilteringState value,
          $Res Function(AnalyticsFilteringState) then) =
      _$AnalyticsFilteringStateCopyWithImpl<$Res, AnalyticsFilteringState>;
}

/// @nodoc
class _$AnalyticsFilteringStateCopyWithImpl<$Res,
        $Val extends AnalyticsFilteringState>
    implements $AnalyticsFilteringStateCopyWith<$Res> {
  _$AnalyticsFilteringStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AnalyticsFilteringStateInitialCopyWith<$Res> {
  factory _$$_AnalyticsFilteringStateInitialCopyWith(
          _$_AnalyticsFilteringStateInitial value,
          $Res Function(_$_AnalyticsFilteringStateInitial) then) =
      __$$_AnalyticsFilteringStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AnalyticsFilteringStateInitialCopyWithImpl<$Res>
    extends _$AnalyticsFilteringStateCopyWithImpl<$Res,
        _$_AnalyticsFilteringStateInitial>
    implements _$$_AnalyticsFilteringStateInitialCopyWith<$Res> {
  __$$_AnalyticsFilteringStateInitialCopyWithImpl(
      _$_AnalyticsFilteringStateInitial _value,
      $Res Function(_$_AnalyticsFilteringStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AnalyticsFilteringStateInitial
    implements _AnalyticsFilteringStateInitial {
  const _$_AnalyticsFilteringStateInitial();

  @override
  String toString() {
    return 'AnalyticsFilteringState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnalyticsFilteringStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            TimeSliceEnum timeSlice,
            Map<String, bool>? clubsUuid,
            DateTime startDateRange,
            DateTime endDateRange,
            DateTime selectedDate)
        loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            TimeSliceEnum timeSlice,
            Map<String, bool>? clubsUuid,
            DateTime startDateRange,
            DateTime endDateRange,
            DateTime selectedDate)?
        loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            TimeSliceEnum timeSlice,
            Map<String, bool>? clubsUuid,
            DateTime startDateRange,
            DateTime endDateRange,
            DateTime selectedDate)?
        loaded,
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
    required TResult Function(_AnalyticsFilteringStateInitial value) initial,
    required TResult Function(_AnalyticsFilteringStateLoaded value) loaded,
    required TResult Function(_AnalyticsFilteringStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyticsFilteringStateInitial value)? initial,
    TResult? Function(_AnalyticsFilteringStateLoaded value)? loaded,
    TResult? Function(_AnalyticsFilteringStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyticsFilteringStateInitial value)? initial,
    TResult Function(_AnalyticsFilteringStateLoaded value)? loaded,
    TResult Function(_AnalyticsFilteringStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AnalyticsFilteringStateInitial
    implements AnalyticsFilteringState {
  const factory _AnalyticsFilteringStateInitial() =
      _$_AnalyticsFilteringStateInitial;
}

/// @nodoc
abstract class _$$_AnalyticsFilteringStateLoadedCopyWith<$Res> {
  factory _$$_AnalyticsFilteringStateLoadedCopyWith(
          _$_AnalyticsFilteringStateLoaded value,
          $Res Function(_$_AnalyticsFilteringStateLoaded) then) =
      __$$_AnalyticsFilteringStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {TimeSliceEnum timeSlice,
      Map<String, bool>? clubsUuid,
      DateTime startDateRange,
      DateTime endDateRange,
      DateTime selectedDate});
}

/// @nodoc
class __$$_AnalyticsFilteringStateLoadedCopyWithImpl<$Res>
    extends _$AnalyticsFilteringStateCopyWithImpl<$Res,
        _$_AnalyticsFilteringStateLoaded>
    implements _$$_AnalyticsFilteringStateLoadedCopyWith<$Res> {
  __$$_AnalyticsFilteringStateLoadedCopyWithImpl(
      _$_AnalyticsFilteringStateLoaded _value,
      $Res Function(_$_AnalyticsFilteringStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSlice = null,
    Object? clubsUuid = freezed,
    Object? startDateRange = null,
    Object? endDateRange = null,
    Object? selectedDate = null,
  }) {
    return _then(_$_AnalyticsFilteringStateLoaded(
      timeSlice: null == timeSlice
          ? _value.timeSlice
          : timeSlice // ignore: cast_nullable_to_non_nullable
              as TimeSliceEnum,
      clubsUuid: freezed == clubsUuid
          ? _value._clubsUuid
          : clubsUuid // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>?,
      startDateRange: null == startDateRange
          ? _value.startDateRange
          : startDateRange // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDateRange: null == endDateRange
          ? _value.endDateRange
          : endDateRange // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_AnalyticsFilteringStateLoaded
    implements _AnalyticsFilteringStateLoaded {
  const _$_AnalyticsFilteringStateLoaded(
      {this.timeSlice = TimeSliceEnum.week,
      final Map<String, bool>? clubsUuid,
      required this.startDateRange,
      required this.endDateRange,
      required this.selectedDate})
      : _clubsUuid = clubsUuid;

  @override
  @JsonKey()
  final TimeSliceEnum timeSlice;
  final Map<String, bool>? _clubsUuid;
  @override
  Map<String, bool>? get clubsUuid {
    final value = _clubsUuid;
    if (value == null) return null;
    if (_clubsUuid is EqualUnmodifiableMapView) return _clubsUuid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DateTime startDateRange;
  @override
  final DateTime endDateRange;
  @override
  final DateTime selectedDate;

  @override
  String toString() {
    return 'AnalyticsFilteringState.loaded(timeSlice: $timeSlice, clubsUuid: $clubsUuid, startDateRange: $startDateRange, endDateRange: $endDateRange, selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnalyticsFilteringStateLoaded &&
            (identical(other.timeSlice, timeSlice) ||
                other.timeSlice == timeSlice) &&
            const DeepCollectionEquality()
                .equals(other._clubsUuid, _clubsUuid) &&
            (identical(other.startDateRange, startDateRange) ||
                other.startDateRange == startDateRange) &&
            (identical(other.endDateRange, endDateRange) ||
                other.endDateRange == endDateRange) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      timeSlice,
      const DeepCollectionEquality().hash(_clubsUuid),
      startDateRange,
      endDateRange,
      selectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnalyticsFilteringStateLoadedCopyWith<_$_AnalyticsFilteringStateLoaded>
      get copyWith => __$$_AnalyticsFilteringStateLoadedCopyWithImpl<
          _$_AnalyticsFilteringStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            TimeSliceEnum timeSlice,
            Map<String, bool>? clubsUuid,
            DateTime startDateRange,
            DateTime endDateRange,
            DateTime selectedDate)
        loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(
        timeSlice, clubsUuid, startDateRange, endDateRange, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            TimeSliceEnum timeSlice,
            Map<String, bool>? clubsUuid,
            DateTime startDateRange,
            DateTime endDateRange,
            DateTime selectedDate)?
        loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(
        timeSlice, clubsUuid, startDateRange, endDateRange, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            TimeSliceEnum timeSlice,
            Map<String, bool>? clubsUuid,
            DateTime startDateRange,
            DateTime endDateRange,
            DateTime selectedDate)?
        loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          timeSlice, clubsUuid, startDateRange, endDateRange, selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AnalyticsFilteringStateInitial value) initial,
    required TResult Function(_AnalyticsFilteringStateLoaded value) loaded,
    required TResult Function(_AnalyticsFilteringStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyticsFilteringStateInitial value)? initial,
    TResult? Function(_AnalyticsFilteringStateLoaded value)? loaded,
    TResult? Function(_AnalyticsFilteringStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyticsFilteringStateInitial value)? initial,
    TResult Function(_AnalyticsFilteringStateLoaded value)? loaded,
    TResult Function(_AnalyticsFilteringStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _AnalyticsFilteringStateLoaded
    implements AnalyticsFilteringState {
  const factory _AnalyticsFilteringStateLoaded(
      {final TimeSliceEnum timeSlice,
      final Map<String, bool>? clubsUuid,
      required final DateTime startDateRange,
      required final DateTime endDateRange,
      required final DateTime selectedDate}) = _$_AnalyticsFilteringStateLoaded;

  TimeSliceEnum get timeSlice;
  Map<String, bool>? get clubsUuid;
  DateTime get startDateRange;
  DateTime get endDateRange;
  DateTime get selectedDate;
  @JsonKey(ignore: true)
  _$$_AnalyticsFilteringStateLoadedCopyWith<_$_AnalyticsFilteringStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AnalyticsFilteringStateErrorCopyWith<$Res> {
  factory _$$_AnalyticsFilteringStateErrorCopyWith(
          _$_AnalyticsFilteringStateError value,
          $Res Function(_$_AnalyticsFilteringStateError) then) =
      __$$_AnalyticsFilteringStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_AnalyticsFilteringStateErrorCopyWithImpl<$Res>
    extends _$AnalyticsFilteringStateCopyWithImpl<$Res,
        _$_AnalyticsFilteringStateError>
    implements _$$_AnalyticsFilteringStateErrorCopyWith<$Res> {
  __$$_AnalyticsFilteringStateErrorCopyWithImpl(
      _$_AnalyticsFilteringStateError _value,
      $Res Function(_$_AnalyticsFilteringStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_AnalyticsFilteringStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AnalyticsFilteringStateError implements _AnalyticsFilteringStateError {
  const _$_AnalyticsFilteringStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AnalyticsFilteringState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnalyticsFilteringStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnalyticsFilteringStateErrorCopyWith<_$_AnalyticsFilteringStateError>
      get copyWith => __$$_AnalyticsFilteringStateErrorCopyWithImpl<
          _$_AnalyticsFilteringStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            TimeSliceEnum timeSlice,
            Map<String, bool>? clubsUuid,
            DateTime startDateRange,
            DateTime endDateRange,
            DateTime selectedDate)
        loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            TimeSliceEnum timeSlice,
            Map<String, bool>? clubsUuid,
            DateTime startDateRange,
            DateTime endDateRange,
            DateTime selectedDate)?
        loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            TimeSliceEnum timeSlice,
            Map<String, bool>? clubsUuid,
            DateTime startDateRange,
            DateTime endDateRange,
            DateTime selectedDate)?
        loaded,
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
    required TResult Function(_AnalyticsFilteringStateInitial value) initial,
    required TResult Function(_AnalyticsFilteringStateLoaded value) loaded,
    required TResult Function(_AnalyticsFilteringStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyticsFilteringStateInitial value)? initial,
    TResult? Function(_AnalyticsFilteringStateLoaded value)? loaded,
    TResult? Function(_AnalyticsFilteringStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyticsFilteringStateInitial value)? initial,
    TResult Function(_AnalyticsFilteringStateLoaded value)? loaded,
    TResult Function(_AnalyticsFilteringStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AnalyticsFilteringStateError
    implements AnalyticsFilteringState {
  const factory _AnalyticsFilteringStateError({required final String error}) =
      _$_AnalyticsFilteringStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_AnalyticsFilteringStateErrorCopyWith<_$_AnalyticsFilteringStateError>
      get copyWith => throw _privateConstructorUsedError;
}
