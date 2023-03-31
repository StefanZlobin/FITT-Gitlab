// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_filters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnalyticsFilters _$AnalyticsFiltersFromJson(Map<String, dynamic> json) {
  return _AnalyticsFilters.fromJson(json);
}

/// @nodoc
mixin _$AnalyticsFilters {
  @JsonKey(name: 'club_ids')
  List<String> get clubsUuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'slice')
  TimeSliceEnum get timeSlice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnalyticsFiltersCopyWith<AnalyticsFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsFiltersCopyWith<$Res> {
  factory $AnalyticsFiltersCopyWith(
          AnalyticsFilters value, $Res Function(AnalyticsFilters) then) =
      _$AnalyticsFiltersCopyWithImpl<$Res, AnalyticsFilters>;
  @useResult
  $Res call(
      {@JsonKey(name: 'club_ids') List<String> clubsUuid,
      @JsonKey(name: 'slice') TimeSliceEnum timeSlice});
}

/// @nodoc
class _$AnalyticsFiltersCopyWithImpl<$Res, $Val extends AnalyticsFilters>
    implements $AnalyticsFiltersCopyWith<$Res> {
  _$AnalyticsFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubsUuid = null,
    Object? timeSlice = null,
  }) {
    return _then(_value.copyWith(
      clubsUuid: null == clubsUuid
          ? _value.clubsUuid
          : clubsUuid // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timeSlice: null == timeSlice
          ? _value.timeSlice
          : timeSlice // ignore: cast_nullable_to_non_nullable
              as TimeSliceEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnalyticsFiltersCopyWith<$Res>
    implements $AnalyticsFiltersCopyWith<$Res> {
  factory _$$_AnalyticsFiltersCopyWith(
          _$_AnalyticsFilters value, $Res Function(_$_AnalyticsFilters) then) =
      __$$_AnalyticsFiltersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'club_ids') List<String> clubsUuid,
      @JsonKey(name: 'slice') TimeSliceEnum timeSlice});
}

/// @nodoc
class __$$_AnalyticsFiltersCopyWithImpl<$Res>
    extends _$AnalyticsFiltersCopyWithImpl<$Res, _$_AnalyticsFilters>
    implements _$$_AnalyticsFiltersCopyWith<$Res> {
  __$$_AnalyticsFiltersCopyWithImpl(
      _$_AnalyticsFilters _value, $Res Function(_$_AnalyticsFilters) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubsUuid = null,
    Object? timeSlice = null,
  }) {
    return _then(_$_AnalyticsFilters(
      clubsUuid: null == clubsUuid
          ? _value._clubsUuid
          : clubsUuid // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timeSlice: null == timeSlice
          ? _value.timeSlice
          : timeSlice // ignore: cast_nullable_to_non_nullable
              as TimeSliceEnum,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnalyticsFilters implements _AnalyticsFilters {
  const _$_AnalyticsFilters(
      {@JsonKey(name: 'club_ids')
          final List<String> clubsUuid = const <String>[],
      @JsonKey(name: 'slice')
          this.timeSlice = TimeSliceEnum.week})
      : _clubsUuid = clubsUuid;

  factory _$_AnalyticsFilters.fromJson(Map<String, dynamic> json) =>
      _$$_AnalyticsFiltersFromJson(json);

  final List<String> _clubsUuid;
  @override
  @JsonKey(name: 'club_ids')
  List<String> get clubsUuid {
    if (_clubsUuid is EqualUnmodifiableListView) return _clubsUuid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clubsUuid);
  }

  @override
  @JsonKey(name: 'slice')
  final TimeSliceEnum timeSlice;

  @override
  String toString() {
    return 'AnalyticsFilters(clubsUuid: $clubsUuid, timeSlice: $timeSlice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnalyticsFilters &&
            const DeepCollectionEquality()
                .equals(other._clubsUuid, _clubsUuid) &&
            (identical(other.timeSlice, timeSlice) ||
                other.timeSlice == timeSlice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_clubsUuid), timeSlice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnalyticsFiltersCopyWith<_$_AnalyticsFilters> get copyWith =>
      __$$_AnalyticsFiltersCopyWithImpl<_$_AnalyticsFilters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnalyticsFiltersToJson(
      this,
    );
  }
}

abstract class _AnalyticsFilters implements AnalyticsFilters {
  const factory _AnalyticsFilters(
          {@JsonKey(name: 'club_ids') final List<String> clubsUuid,
          @JsonKey(name: 'slice') final TimeSliceEnum timeSlice}) =
      _$_AnalyticsFilters;

  factory _AnalyticsFilters.fromJson(Map<String, dynamic> json) =
      _$_AnalyticsFilters.fromJson;

  @override
  @JsonKey(name: 'club_ids')
  List<String> get clubsUuid;
  @override
  @JsonKey(name: 'slice')
  TimeSliceEnum get timeSlice;
  @override
  @JsonKey(ignore: true)
  _$$_AnalyticsFiltersCopyWith<_$_AnalyticsFilters> get copyWith =>
      throw _privateConstructorUsedError;
}
