// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_filters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StaffFilters _$StaffFiltersFromJson(Map<String, dynamic> json) {
  return _StaffFilters.fromJson(json);
}

/// @nodoc
mixin _$StaffFilters {
  @JsonKey(name: 'club_ids')
  List<String> get clubUuids => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date_for_kpi_show')
  DateTime? get startDateForKPIShow => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date_for_kpi_show')
  DateTime? get endDateForKPIShow => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StaffFiltersCopyWith<StaffFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffFiltersCopyWith<$Res> {
  factory $StaffFiltersCopyWith(
          StaffFilters value, $Res Function(StaffFilters) then) =
      _$StaffFiltersCopyWithImpl<$Res, StaffFilters>;
  @useResult
  $Res call(
      {@JsonKey(name: 'club_ids') List<String> clubUuids,
      @JsonKey(name: 'start_date_for_kpi_show') DateTime? startDateForKPIShow,
      @JsonKey(name: 'end_date_for_kpi_show') DateTime? endDateForKPIShow});
}

/// @nodoc
class _$StaffFiltersCopyWithImpl<$Res, $Val extends StaffFilters>
    implements $StaffFiltersCopyWith<$Res> {
  _$StaffFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubUuids = null,
    Object? startDateForKPIShow = freezed,
    Object? endDateForKPIShow = freezed,
  }) {
    return _then(_value.copyWith(
      clubUuids: null == clubUuids
          ? _value.clubUuids
          : clubUuids // ignore: cast_nullable_to_non_nullable
              as List<String>,
      startDateForKPIShow: freezed == startDateForKPIShow
          ? _value.startDateForKPIShow
          : startDateForKPIShow // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDateForKPIShow: freezed == endDateForKPIShow
          ? _value.endDateForKPIShow
          : endDateForKPIShow // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StaffFiltersCopyWith<$Res>
    implements $StaffFiltersCopyWith<$Res> {
  factory _$$_StaffFiltersCopyWith(
          _$_StaffFilters value, $Res Function(_$_StaffFilters) then) =
      __$$_StaffFiltersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'club_ids') List<String> clubUuids,
      @JsonKey(name: 'start_date_for_kpi_show') DateTime? startDateForKPIShow,
      @JsonKey(name: 'end_date_for_kpi_show') DateTime? endDateForKPIShow});
}

/// @nodoc
class __$$_StaffFiltersCopyWithImpl<$Res>
    extends _$StaffFiltersCopyWithImpl<$Res, _$_StaffFilters>
    implements _$$_StaffFiltersCopyWith<$Res> {
  __$$_StaffFiltersCopyWithImpl(
      _$_StaffFilters _value, $Res Function(_$_StaffFilters) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubUuids = null,
    Object? startDateForKPIShow = freezed,
    Object? endDateForKPIShow = freezed,
  }) {
    return _then(_$_StaffFilters(
      clubUuids: null == clubUuids
          ? _value._clubUuids
          : clubUuids // ignore: cast_nullable_to_non_nullable
              as List<String>,
      startDateForKPIShow: freezed == startDateForKPIShow
          ? _value.startDateForKPIShow
          : startDateForKPIShow // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDateForKPIShow: freezed == endDateForKPIShow
          ? _value.endDateForKPIShow
          : endDateForKPIShow // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StaffFilters extends _StaffFilters {
  const _$_StaffFilters(
      {@JsonKey(name: 'club_ids')
          final List<String> clubUuids = const <String>[],
      @JsonKey(name: 'start_date_for_kpi_show')
          this.startDateForKPIShow,
      @JsonKey(name: 'end_date_for_kpi_show')
          this.endDateForKPIShow})
      : _clubUuids = clubUuids,
        super._();

  factory _$_StaffFilters.fromJson(Map<String, dynamic> json) =>
      _$$_StaffFiltersFromJson(json);

  final List<String> _clubUuids;
  @override
  @JsonKey(name: 'club_ids')
  List<String> get clubUuids {
    if (_clubUuids is EqualUnmodifiableListView) return _clubUuids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clubUuids);
  }

  @override
  @JsonKey(name: 'start_date_for_kpi_show')
  final DateTime? startDateForKPIShow;
  @override
  @JsonKey(name: 'end_date_for_kpi_show')
  final DateTime? endDateForKPIShow;

  @override
  String toString() {
    return 'StaffFilters(clubUuids: $clubUuids, startDateForKPIShow: $startDateForKPIShow, endDateForKPIShow: $endDateForKPIShow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StaffFilters &&
            const DeepCollectionEquality()
                .equals(other._clubUuids, _clubUuids) &&
            (identical(other.startDateForKPIShow, startDateForKPIShow) ||
                other.startDateForKPIShow == startDateForKPIShow) &&
            (identical(other.endDateForKPIShow, endDateForKPIShow) ||
                other.endDateForKPIShow == endDateForKPIShow));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_clubUuids),
      startDateForKPIShow,
      endDateForKPIShow);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StaffFiltersCopyWith<_$_StaffFilters> get copyWith =>
      __$$_StaffFiltersCopyWithImpl<_$_StaffFilters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StaffFiltersToJson(
      this,
    );
  }
}

abstract class _StaffFilters extends StaffFilters {
  const factory _StaffFilters(
      {@JsonKey(name: 'club_ids')
          final List<String> clubUuids,
      @JsonKey(name: 'start_date_for_kpi_show')
          final DateTime? startDateForKPIShow,
      @JsonKey(name: 'end_date_for_kpi_show')
          final DateTime? endDateForKPIShow}) = _$_StaffFilters;
  const _StaffFilters._() : super._();

  factory _StaffFilters.fromJson(Map<String, dynamic> json) =
      _$_StaffFilters.fromJson;

  @override
  @JsonKey(name: 'club_ids')
  List<String> get clubUuids;
  @override
  @JsonKey(name: 'start_date_for_kpi_show')
  DateTime? get startDateForKPIShow;
  @override
  @JsonKey(name: 'end_date_for_kpi_show')
  DateTime? get endDateForKPIShow;
  @override
  @JsonKey(ignore: true)
  _$$_StaffFiltersCopyWith<_$_StaffFilters> get copyWith =>
      throw _privateConstructorUsedError;
}
