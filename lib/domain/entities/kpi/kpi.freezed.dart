// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kpi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KPI _$KPIFromJson(Map<String, dynamic> json) {
  return _KPI.fromJson(json);
}

/// @nodoc
mixin _$KPI {
  /// KPI количества посетилей за какой-либо период
  @JsonKey(name: 'visitors_count')
  int get visitorsCount => throw _privateConstructorUsedError;

  /// KPI выручки за какой-либо период
  @JsonKey(name: 'revenue')
  double get revenue => throw _privateConstructorUsedError;

  /// KPI длительности часов за какой-либо период
  @JsonKey(name: 'duration_of_hours')
  double get durationOfHours => throw _privateConstructorUsedError;

  /// KPI средней стоимости часа за какой-либо период
  @JsonKey(name: 'average_cost_per_hour')
  double get averageCostPerHour => throw _privateConstructorUsedError;

  /// KPI динамика посетилей (измеряется в %) за какой-либо период
  @JsonKey(name: 'dynamics_of_visitors')
  double get dynamicsOfVisitors => throw _privateConstructorUsedError;

  /// KPI динамика выручки (измеряется в %) за какой-либо период
  @JsonKey(name: 'revenue_dynamics')
  double get revenueDynamics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KPICopyWith<KPI> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KPICopyWith<$Res> {
  factory $KPICopyWith(KPI value, $Res Function(KPI) then) =
      _$KPICopyWithImpl<$Res, KPI>;
  @useResult
  $Res call(
      {@JsonKey(name: 'visitors_count') int visitorsCount,
      @JsonKey(name: 'revenue') double revenue,
      @JsonKey(name: 'duration_of_hours') double durationOfHours,
      @JsonKey(name: 'average_cost_per_hour') double averageCostPerHour,
      @JsonKey(name: 'dynamics_of_visitors') double dynamicsOfVisitors,
      @JsonKey(name: 'revenue_dynamics') double revenueDynamics});
}

/// @nodoc
class _$KPICopyWithImpl<$Res, $Val extends KPI> implements $KPICopyWith<$Res> {
  _$KPICopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitorsCount = null,
    Object? revenue = null,
    Object? durationOfHours = null,
    Object? averageCostPerHour = null,
    Object? dynamicsOfVisitors = null,
    Object? revenueDynamics = null,
  }) {
    return _then(_value.copyWith(
      visitorsCount: null == visitorsCount
          ? _value.visitorsCount
          : visitorsCount // ignore: cast_nullable_to_non_nullable
              as int,
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double,
      durationOfHours: null == durationOfHours
          ? _value.durationOfHours
          : durationOfHours // ignore: cast_nullable_to_non_nullable
              as double,
      averageCostPerHour: null == averageCostPerHour
          ? _value.averageCostPerHour
          : averageCostPerHour // ignore: cast_nullable_to_non_nullable
              as double,
      dynamicsOfVisitors: null == dynamicsOfVisitors
          ? _value.dynamicsOfVisitors
          : dynamicsOfVisitors // ignore: cast_nullable_to_non_nullable
              as double,
      revenueDynamics: null == revenueDynamics
          ? _value.revenueDynamics
          : revenueDynamics // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KPICopyWith<$Res> implements $KPICopyWith<$Res> {
  factory _$$_KPICopyWith(_$_KPI value, $Res Function(_$_KPI) then) =
      __$$_KPICopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'visitors_count') int visitorsCount,
      @JsonKey(name: 'revenue') double revenue,
      @JsonKey(name: 'duration_of_hours') double durationOfHours,
      @JsonKey(name: 'average_cost_per_hour') double averageCostPerHour,
      @JsonKey(name: 'dynamics_of_visitors') double dynamicsOfVisitors,
      @JsonKey(name: 'revenue_dynamics') double revenueDynamics});
}

/// @nodoc
class __$$_KPICopyWithImpl<$Res> extends _$KPICopyWithImpl<$Res, _$_KPI>
    implements _$$_KPICopyWith<$Res> {
  __$$_KPICopyWithImpl(_$_KPI _value, $Res Function(_$_KPI) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitorsCount = null,
    Object? revenue = null,
    Object? durationOfHours = null,
    Object? averageCostPerHour = null,
    Object? dynamicsOfVisitors = null,
    Object? revenueDynamics = null,
  }) {
    return _then(_$_KPI(
      visitorsCount: null == visitorsCount
          ? _value.visitorsCount
          : visitorsCount // ignore: cast_nullable_to_non_nullable
              as int,
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double,
      durationOfHours: null == durationOfHours
          ? _value.durationOfHours
          : durationOfHours // ignore: cast_nullable_to_non_nullable
              as double,
      averageCostPerHour: null == averageCostPerHour
          ? _value.averageCostPerHour
          : averageCostPerHour // ignore: cast_nullable_to_non_nullable
              as double,
      dynamicsOfVisitors: null == dynamicsOfVisitors
          ? _value.dynamicsOfVisitors
          : dynamicsOfVisitors // ignore: cast_nullable_to_non_nullable
              as double,
      revenueDynamics: null == revenueDynamics
          ? _value.revenueDynamics
          : revenueDynamics // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KPI implements _KPI {
  const _$_KPI(
      {@JsonKey(name: 'visitors_count') this.visitorsCount = 0,
      @JsonKey(name: 'revenue') this.revenue = 0,
      @JsonKey(name: 'duration_of_hours') this.durationOfHours = 0,
      @JsonKey(name: 'average_cost_per_hour') this.averageCostPerHour = 0,
      @JsonKey(name: 'dynamics_of_visitors') this.dynamicsOfVisitors = 0,
      @JsonKey(name: 'revenue_dynamics') this.revenueDynamics = 0});

  factory _$_KPI.fromJson(Map<String, dynamic> json) => _$$_KPIFromJson(json);

  /// KPI количества посетилей за какой-либо период
  @override
  @JsonKey(name: 'visitors_count')
  final int visitorsCount;

  /// KPI выручки за какой-либо период
  @override
  @JsonKey(name: 'revenue')
  final double revenue;

  /// KPI длительности часов за какой-либо период
  @override
  @JsonKey(name: 'duration_of_hours')
  final double durationOfHours;

  /// KPI средней стоимости часа за какой-либо период
  @override
  @JsonKey(name: 'average_cost_per_hour')
  final double averageCostPerHour;

  /// KPI динамика посетилей (измеряется в %) за какой-либо период
  @override
  @JsonKey(name: 'dynamics_of_visitors')
  final double dynamicsOfVisitors;

  /// KPI динамика выручки (измеряется в %) за какой-либо период
  @override
  @JsonKey(name: 'revenue_dynamics')
  final double revenueDynamics;

  @override
  String toString() {
    return 'KPI(visitorsCount: $visitorsCount, revenue: $revenue, durationOfHours: $durationOfHours, averageCostPerHour: $averageCostPerHour, dynamicsOfVisitors: $dynamicsOfVisitors, revenueDynamics: $revenueDynamics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KPI &&
            (identical(other.visitorsCount, visitorsCount) ||
                other.visitorsCount == visitorsCount) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.durationOfHours, durationOfHours) ||
                other.durationOfHours == durationOfHours) &&
            (identical(other.averageCostPerHour, averageCostPerHour) ||
                other.averageCostPerHour == averageCostPerHour) &&
            (identical(other.dynamicsOfVisitors, dynamicsOfVisitors) ||
                other.dynamicsOfVisitors == dynamicsOfVisitors) &&
            (identical(other.revenueDynamics, revenueDynamics) ||
                other.revenueDynamics == revenueDynamics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, visitorsCount, revenue,
      durationOfHours, averageCostPerHour, dynamicsOfVisitors, revenueDynamics);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KPICopyWith<_$_KPI> get copyWith =>
      __$$_KPICopyWithImpl<_$_KPI>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KPIToJson(
      this,
    );
  }
}

abstract class _KPI implements KPI {
  const factory _KPI(
      {@JsonKey(name: 'visitors_count')
          final int visitorsCount,
      @JsonKey(name: 'revenue')
          final double revenue,
      @JsonKey(name: 'duration_of_hours')
          final double durationOfHours,
      @JsonKey(name: 'average_cost_per_hour')
          final double averageCostPerHour,
      @JsonKey(name: 'dynamics_of_visitors')
          final double dynamicsOfVisitors,
      @JsonKey(name: 'revenue_dynamics')
          final double revenueDynamics}) = _$_KPI;

  factory _KPI.fromJson(Map<String, dynamic> json) = _$_KPI.fromJson;

  @override

  /// KPI количества посетилей за какой-либо период
  @JsonKey(name: 'visitors_count')
  int get visitorsCount;
  @override

  /// KPI выручки за какой-либо период
  @JsonKey(name: 'revenue')
  double get revenue;
  @override

  /// KPI длительности часов за какой-либо период
  @JsonKey(name: 'duration_of_hours')
  double get durationOfHours;
  @override

  /// KPI средней стоимости часа за какой-либо период
  @JsonKey(name: 'average_cost_per_hour')
  double get averageCostPerHour;
  @override

  /// KPI динамика посетилей (измеряется в %) за какой-либо период
  @JsonKey(name: 'dynamics_of_visitors')
  double get dynamicsOfVisitors;
  @override

  /// KPI динамика выручки (измеряется в %) за какой-либо период
  @JsonKey(name: 'revenue_dynamics')
  double get revenueDynamics;
  @override
  @JsonKey(ignore: true)
  _$$_KPICopyWith<_$_KPI> get copyWith => throw _privateConstructorUsedError;
}
