// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_shedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkSchedule _$WorkScheduleFromJson(Map<String, dynamic> json) {
  return _WorkSchedule.fromJson(json);
}

/// @nodoc
mixin _$WorkSchedule {
  @JsonKey(name: 'date', fromJson: dateFromString)
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time', fromJson: timeFromString)
  DateTime? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time', fromJson: timeFromString)
  DateTime? get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_special', defaultValue: false)
  bool get isSpecial => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkScheduleCopyWith<WorkSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkScheduleCopyWith<$Res> {
  factory $WorkScheduleCopyWith(
          WorkSchedule value, $Res Function(WorkSchedule) then) =
      _$WorkScheduleCopyWithImpl<$Res, WorkSchedule>;
  @useResult
  $Res call(
      {@JsonKey(name: 'date', fromJson: dateFromString)
          DateTime? date,
      @JsonKey(name: 'start_time', fromJson: timeFromString)
          DateTime? startTime,
      @JsonKey(name: 'end_time', fromJson: timeFromString)
          DateTime? endTime,
      @JsonKey(name: 'is_special', defaultValue: false)
          bool isSpecial});
}

/// @nodoc
class _$WorkScheduleCopyWithImpl<$Res, $Val extends WorkSchedule>
    implements $WorkScheduleCopyWith<$Res> {
  _$WorkScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? isSpecial = null,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isSpecial: null == isSpecial
          ? _value.isSpecial
          : isSpecial // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkScheduleCopyWith<$Res>
    implements $WorkScheduleCopyWith<$Res> {
  factory _$$_WorkScheduleCopyWith(
          _$_WorkSchedule value, $Res Function(_$_WorkSchedule) then) =
      __$$_WorkScheduleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'date', fromJson: dateFromString)
          DateTime? date,
      @JsonKey(name: 'start_time', fromJson: timeFromString)
          DateTime? startTime,
      @JsonKey(name: 'end_time', fromJson: timeFromString)
          DateTime? endTime,
      @JsonKey(name: 'is_special', defaultValue: false)
          bool isSpecial});
}

/// @nodoc
class __$$_WorkScheduleCopyWithImpl<$Res>
    extends _$WorkScheduleCopyWithImpl<$Res, _$_WorkSchedule>
    implements _$$_WorkScheduleCopyWith<$Res> {
  __$$_WorkScheduleCopyWithImpl(
      _$_WorkSchedule _value, $Res Function(_$_WorkSchedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? isSpecial = null,
  }) {
    return _then(_$_WorkSchedule(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isSpecial: null == isSpecial
          ? _value.isSpecial
          : isSpecial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkSchedule extends _WorkSchedule {
  const _$_WorkSchedule(
      {@JsonKey(name: 'date', fromJson: dateFromString)
          this.date,
      @JsonKey(name: 'start_time', fromJson: timeFromString)
          this.startTime,
      @JsonKey(name: 'end_time', fromJson: timeFromString)
          this.endTime,
      @JsonKey(name: 'is_special', defaultValue: false)
          required this.isSpecial})
      : super._();

  factory _$_WorkSchedule.fromJson(Map<String, dynamic> json) =>
      _$$_WorkScheduleFromJson(json);

  @override
  @JsonKey(name: 'date', fromJson: dateFromString)
  final DateTime? date;
  @override
  @JsonKey(name: 'start_time', fromJson: timeFromString)
  final DateTime? startTime;
  @override
  @JsonKey(name: 'end_time', fromJson: timeFromString)
  final DateTime? endTime;
  @override
  @JsonKey(name: 'is_special', defaultValue: false)
  final bool isSpecial;

  @override
  String toString() {
    return 'WorkSchedule(date: $date, startTime: $startTime, endTime: $endTime, isSpecial: $isSpecial)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkSchedule &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.isSpecial, isSpecial) ||
                other.isSpecial == isSpecial));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, startTime, endTime, isSpecial);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkScheduleCopyWith<_$_WorkSchedule> get copyWith =>
      __$$_WorkScheduleCopyWithImpl<_$_WorkSchedule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkScheduleToJson(
      this,
    );
  }
}

abstract class _WorkSchedule extends WorkSchedule {
  const factory _WorkSchedule(
      {@JsonKey(name: 'date', fromJson: dateFromString)
          final DateTime? date,
      @JsonKey(name: 'start_time', fromJson: timeFromString)
          final DateTime? startTime,
      @JsonKey(name: 'end_time', fromJson: timeFromString)
          final DateTime? endTime,
      @JsonKey(name: 'is_special', defaultValue: false)
          required final bool isSpecial}) = _$_WorkSchedule;
  const _WorkSchedule._() : super._();

  factory _WorkSchedule.fromJson(Map<String, dynamic> json) =
      _$_WorkSchedule.fromJson;

  @override
  @JsonKey(name: 'date', fromJson: dateFromString)
  DateTime? get date;
  @override
  @JsonKey(name: 'start_time', fromJson: timeFromString)
  DateTime? get startTime;
  @override
  @JsonKey(name: 'end_time', fromJson: timeFromString)
  DateTime? get endTime;
  @override
  @JsonKey(name: 'is_special', defaultValue: false)
  bool get isSpecial;
  @override
  @JsonKey(ignore: true)
  _$$_WorkScheduleCopyWith<_$_WorkSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}
