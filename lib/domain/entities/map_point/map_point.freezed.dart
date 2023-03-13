// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MapPoint _$MapPointFromJson(Map<String, dynamic> json) {
  return _MapPoint.fromJson(json);
}

/// @nodoc
mixin _$MapPoint {
  @JsonKey(name: 'type')
  MapPointsEnum get type => throw _privateConstructorUsedError;
  LatLng get coordinates => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  MapPointData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapPointCopyWith<MapPoint> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapPointCopyWith<$Res> {
  factory $MapPointCopyWith(MapPoint value, $Res Function(MapPoint) then) = _$MapPointCopyWithImpl<$Res, MapPoint>;
  @useResult
  $Res call({@JsonKey(name: 'type') MapPointsEnum type, LatLng coordinates, String id, MapPointData data});

  $MapPointDataCopyWith<$Res> get data;
}

/// @nodoc
class _$MapPointCopyWithImpl<$Res, $Val extends MapPoint> implements $MapPointCopyWith<$Res> {
  _$MapPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
    Object? id = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MapPointsEnum,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as LatLng,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MapPointData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MapPointDataCopyWith<$Res> get data {
    return $MapPointDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MapPointCopyWith<$Res> implements $MapPointCopyWith<$Res> {
  factory _$$_MapPointCopyWith(_$_MapPoint value, $Res Function(_$_MapPoint) then) = __$$_MapPointCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') MapPointsEnum type, LatLng coordinates, String id, MapPointData data});

  @override
  $MapPointDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_MapPointCopyWithImpl<$Res> extends _$MapPointCopyWithImpl<$Res, _$_MapPoint>
    implements _$$_MapPointCopyWith<$Res> {
  __$$_MapPointCopyWithImpl(_$_MapPoint _value, $Res Function(_$_MapPoint) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
    Object? id = null,
    Object? data = null,
  }) {
    return _then(_$_MapPoint(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MapPointsEnum,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as LatLng,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MapPointData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MapPoint extends _MapPoint {
  _$_MapPoint(
      {@JsonKey(name: 'type') required this.type, required this.coordinates, required this.id, required this.data})
      : super._();

  factory _$_MapPoint.fromJson(Map<String, dynamic> json) => _$$_MapPointFromJson(json);

  @override
  @JsonKey(name: 'type')
  final MapPointsEnum type;
  @override
  final LatLng coordinates;
  @override
  final String id;
  @override
  final MapPointData data;

  @override
  String toString() {
    return 'MapPoint(type: $type, coordinates: $coordinates, id: $id, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapPoint &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.coordinates, coordinates) || other.coordinates == coordinates) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, coordinates, id, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapPointCopyWith<_$_MapPoint> get copyWith => __$$_MapPointCopyWithImpl<_$_MapPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MapPointToJson(
      this,
    );
  }
}

abstract class _MapPoint extends MapPoint {
  factory _MapPoint(
      {@JsonKey(name: 'type') required final MapPointsEnum type,
      required final LatLng coordinates,
      required final String id,
      required final MapPointData data}) = _$_MapPoint;
  _MapPoint._() : super._();

  factory _MapPoint.fromJson(Map<String, dynamic> json) = _$_MapPoint.fromJson;

  @override
  @JsonKey(name: 'type')
  MapPointsEnum get type;
  @override
  LatLng get coordinates;
  @override
  String get id;
  @override
  MapPointData get data;
  @override
  @JsonKey(ignore: true)
  _$$_MapPointCopyWith<_$_MapPoint> get copyWith => throw _privateConstructorUsedError;
}
