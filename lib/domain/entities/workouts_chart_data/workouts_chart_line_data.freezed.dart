// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workouts_chart_line_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkoutsChartLineData _$WorkoutsChartLineDataFromJson(
    Map<String, dynamic> json) {
  return _WorkoutsChartLineData.fromJson(json);
}

/// @nodoc
mixin _$WorkoutsChartLineData {
  /// Отображение показателей на графике (числа, дни недели...)
  @JsonKey(name: 'label')
  String get timeSlice => throw _privateConstructorUsedError;

  /// Отображение запланированных тренировок
  @JsonKey(name: 'plan')
  int get countSheduledWorkout => throw _privateConstructorUsedError;

  /// Отображение закончившихся тренировок
  @JsonKey(name: 'fact')
  int get countCompletedWorkout => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutsChartLineDataCopyWith<WorkoutsChartLineData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutsChartLineDataCopyWith<$Res> {
  factory $WorkoutsChartLineDataCopyWith(WorkoutsChartLineData value,
          $Res Function(WorkoutsChartLineData) then) =
      _$WorkoutsChartLineDataCopyWithImpl<$Res, WorkoutsChartLineData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'label') String timeSlice,
      @JsonKey(name: 'plan') int countSheduledWorkout,
      @JsonKey(name: 'fact') int countCompletedWorkout});
}

/// @nodoc
class _$WorkoutsChartLineDataCopyWithImpl<$Res,
        $Val extends WorkoutsChartLineData>
    implements $WorkoutsChartLineDataCopyWith<$Res> {
  _$WorkoutsChartLineDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSlice = null,
    Object? countSheduledWorkout = null,
    Object? countCompletedWorkout = null,
  }) {
    return _then(_value.copyWith(
      timeSlice: null == timeSlice
          ? _value.timeSlice
          : timeSlice // ignore: cast_nullable_to_non_nullable
              as String,
      countSheduledWorkout: null == countSheduledWorkout
          ? _value.countSheduledWorkout
          : countSheduledWorkout // ignore: cast_nullable_to_non_nullable
              as int,
      countCompletedWorkout: null == countCompletedWorkout
          ? _value.countCompletedWorkout
          : countCompletedWorkout // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkoutsChartLineDataCopyWith<$Res>
    implements $WorkoutsChartLineDataCopyWith<$Res> {
  factory _$$_WorkoutsChartLineDataCopyWith(_$_WorkoutsChartLineData value,
          $Res Function(_$_WorkoutsChartLineData) then) =
      __$$_WorkoutsChartLineDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'label') String timeSlice,
      @JsonKey(name: 'plan') int countSheduledWorkout,
      @JsonKey(name: 'fact') int countCompletedWorkout});
}

/// @nodoc
class __$$_WorkoutsChartLineDataCopyWithImpl<$Res>
    extends _$WorkoutsChartLineDataCopyWithImpl<$Res, _$_WorkoutsChartLineData>
    implements _$$_WorkoutsChartLineDataCopyWith<$Res> {
  __$$_WorkoutsChartLineDataCopyWithImpl(_$_WorkoutsChartLineData _value,
      $Res Function(_$_WorkoutsChartLineData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSlice = null,
    Object? countSheduledWorkout = null,
    Object? countCompletedWorkout = null,
  }) {
    return _then(_$_WorkoutsChartLineData(
      timeSlice: null == timeSlice
          ? _value.timeSlice
          : timeSlice // ignore: cast_nullable_to_non_nullable
              as String,
      countSheduledWorkout: null == countSheduledWorkout
          ? _value.countSheduledWorkout
          : countSheduledWorkout // ignore: cast_nullable_to_non_nullable
              as int,
      countCompletedWorkout: null == countCompletedWorkout
          ? _value.countCompletedWorkout
          : countCompletedWorkout // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkoutsChartLineData implements _WorkoutsChartLineData {
  const _$_WorkoutsChartLineData(
      {@JsonKey(name: 'label') required this.timeSlice,
      @JsonKey(name: 'plan') required this.countSheduledWorkout,
      @JsonKey(name: 'fact') required this.countCompletedWorkout});

  factory _$_WorkoutsChartLineData.fromJson(Map<String, dynamic> json) =>
      _$$_WorkoutsChartLineDataFromJson(json);

  /// Отображение показателей на графике (числа, дни недели...)
  @override
  @JsonKey(name: 'label')
  final String timeSlice;

  /// Отображение запланированных тренировок
  @override
  @JsonKey(name: 'plan')
  final int countSheduledWorkout;

  /// Отображение закончившихся тренировок
  @override
  @JsonKey(name: 'fact')
  final int countCompletedWorkout;

  @override
  String toString() {
    return 'WorkoutsChartLineData(timeSlice: $timeSlice, countSheduledWorkout: $countSheduledWorkout, countCompletedWorkout: $countCompletedWorkout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutsChartLineData &&
            (identical(other.timeSlice, timeSlice) ||
                other.timeSlice == timeSlice) &&
            (identical(other.countSheduledWorkout, countSheduledWorkout) ||
                other.countSheduledWorkout == countSheduledWorkout) &&
            (identical(other.countCompletedWorkout, countCompletedWorkout) ||
                other.countCompletedWorkout == countCompletedWorkout));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, timeSlice, countSheduledWorkout, countCompletedWorkout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutsChartLineDataCopyWith<_$_WorkoutsChartLineData> get copyWith =>
      __$$_WorkoutsChartLineDataCopyWithImpl<_$_WorkoutsChartLineData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkoutsChartLineDataToJson(
      this,
    );
  }
}

abstract class _WorkoutsChartLineData implements WorkoutsChartLineData {
  const factory _WorkoutsChartLineData(
          {@JsonKey(name: 'label') required final String timeSlice,
          @JsonKey(name: 'plan') required final int countSheduledWorkout,
          @JsonKey(name: 'fact') required final int countCompletedWorkout}) =
      _$_WorkoutsChartLineData;

  factory _WorkoutsChartLineData.fromJson(Map<String, dynamic> json) =
      _$_WorkoutsChartLineData.fromJson;

  @override

  /// Отображение показателей на графике (числа, дни недели...)
  @JsonKey(name: 'label')
  String get timeSlice;
  @override

  /// Отображение запланированных тренировок
  @JsonKey(name: 'plan')
  int get countSheduledWorkout;
  @override

  /// Отображение закончившихся тренировок
  @JsonKey(name: 'fact')
  int get countCompletedWorkout;
  @override
  @JsonKey(ignore: true)
  _$$_WorkoutsChartLineDataCopyWith<_$_WorkoutsChartLineData> get copyWith =>
      throw _privateConstructorUsedError;
}
