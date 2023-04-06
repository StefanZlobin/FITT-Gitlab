// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workouts_chart_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkoutsChartData _$WorkoutsChartDataFromJson(Map<String, dynamic> json) {
  return _WorkoutsChartData.fromJson(json);
}

/// @nodoc
mixin _$WorkoutsChartData {
  @JsonKey(name: 'slice')
  String? get timeSlice => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<WorkoutsChartLineData> get workoutsChartLineData =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutsChartDataCopyWith<WorkoutsChartData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutsChartDataCopyWith<$Res> {
  factory $WorkoutsChartDataCopyWith(
          WorkoutsChartData value, $Res Function(WorkoutsChartData) then) =
      _$WorkoutsChartDataCopyWithImpl<$Res, WorkoutsChartData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'slice')
          String? timeSlice,
      @JsonKey(name: 'data')
          List<WorkoutsChartLineData> workoutsChartLineData});
}

/// @nodoc
class _$WorkoutsChartDataCopyWithImpl<$Res, $Val extends WorkoutsChartData>
    implements $WorkoutsChartDataCopyWith<$Res> {
  _$WorkoutsChartDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSlice = freezed,
    Object? workoutsChartLineData = null,
  }) {
    return _then(_value.copyWith(
      timeSlice: freezed == timeSlice
          ? _value.timeSlice
          : timeSlice // ignore: cast_nullable_to_non_nullable
              as String?,
      workoutsChartLineData: null == workoutsChartLineData
          ? _value.workoutsChartLineData
          : workoutsChartLineData // ignore: cast_nullable_to_non_nullable
              as List<WorkoutsChartLineData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkoutsChartDataCopyWith<$Res>
    implements $WorkoutsChartDataCopyWith<$Res> {
  factory _$$_WorkoutsChartDataCopyWith(_$_WorkoutsChartData value,
          $Res Function(_$_WorkoutsChartData) then) =
      __$$_WorkoutsChartDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'slice')
          String? timeSlice,
      @JsonKey(name: 'data')
          List<WorkoutsChartLineData> workoutsChartLineData});
}

/// @nodoc
class __$$_WorkoutsChartDataCopyWithImpl<$Res>
    extends _$WorkoutsChartDataCopyWithImpl<$Res, _$_WorkoutsChartData>
    implements _$$_WorkoutsChartDataCopyWith<$Res> {
  __$$_WorkoutsChartDataCopyWithImpl(
      _$_WorkoutsChartData _value, $Res Function(_$_WorkoutsChartData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSlice = freezed,
    Object? workoutsChartLineData = null,
  }) {
    return _then(_$_WorkoutsChartData(
      timeSlice: freezed == timeSlice
          ? _value.timeSlice
          : timeSlice // ignore: cast_nullable_to_non_nullable
              as String?,
      workoutsChartLineData: null == workoutsChartLineData
          ? _value._workoutsChartLineData
          : workoutsChartLineData // ignore: cast_nullable_to_non_nullable
              as List<WorkoutsChartLineData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkoutsChartData implements _WorkoutsChartData {
  const _$_WorkoutsChartData(
      {@JsonKey(name: 'slice')
          required this.timeSlice,
      @JsonKey(name: 'data')
          required final List<WorkoutsChartLineData> workoutsChartLineData})
      : _workoutsChartLineData = workoutsChartLineData;

  factory _$_WorkoutsChartData.fromJson(Map<String, dynamic> json) =>
      _$$_WorkoutsChartDataFromJson(json);

  @override
  @JsonKey(name: 'slice')
  final String? timeSlice;
  final List<WorkoutsChartLineData> _workoutsChartLineData;
  @override
  @JsonKey(name: 'data')
  List<WorkoutsChartLineData> get workoutsChartLineData {
    if (_workoutsChartLineData is EqualUnmodifiableListView)
      return _workoutsChartLineData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workoutsChartLineData);
  }

  @override
  String toString() {
    return 'WorkoutsChartData(timeSlice: $timeSlice, workoutsChartLineData: $workoutsChartLineData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutsChartData &&
            (identical(other.timeSlice, timeSlice) ||
                other.timeSlice == timeSlice) &&
            const DeepCollectionEquality()
                .equals(other._workoutsChartLineData, _workoutsChartLineData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timeSlice,
      const DeepCollectionEquality().hash(_workoutsChartLineData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutsChartDataCopyWith<_$_WorkoutsChartData> get copyWith =>
      __$$_WorkoutsChartDataCopyWithImpl<_$_WorkoutsChartData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkoutsChartDataToJson(
      this,
    );
  }
}

abstract class _WorkoutsChartData implements WorkoutsChartData {
  const factory _WorkoutsChartData(
      {@JsonKey(name: 'slice')
          required final String? timeSlice,
      @JsonKey(name: 'data')
          required final List<WorkoutsChartLineData>
              workoutsChartLineData}) = _$_WorkoutsChartData;

  factory _WorkoutsChartData.fromJson(Map<String, dynamic> json) =
      _$_WorkoutsChartData.fromJson;

  @override
  @JsonKey(name: 'slice')
  String? get timeSlice;
  @override
  @JsonKey(name: 'data')
  List<WorkoutsChartLineData> get workoutsChartLineData;
  @override
  @JsonKey(ignore: true)
  _$$_WorkoutsChartDataCopyWith<_$_WorkoutsChartData> get copyWith =>
      throw _privateConstructorUsedError;
}
