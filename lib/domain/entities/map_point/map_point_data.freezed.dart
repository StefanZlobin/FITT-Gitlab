// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_point_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MapPointData _$MapPointDataFromJson(Map<String, dynamic> json) {
  return _MapPointData.fromJson(json);
}

/// @nodoc
mixin _$MapPointData {
  @JsonKey(
      name: 'min_price', fromJson: toRublesNullable, toJson: toCentNullable)
  int? get price => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_hours')
  double? get batchHours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapPointDataCopyWith<MapPointData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapPointDataCopyWith<$Res> {
  factory $MapPointDataCopyWith(
          MapPointData value, $Res Function(MapPointData) then) =
      _$MapPointDataCopyWithImpl<$Res, MapPointData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'min_price', fromJson: toRublesNullable, toJson: toCentNullable)
          int? price,
      int? count,
      @JsonKey(name: 'available_hours')
          double? batchHours});
}

/// @nodoc
class _$MapPointDataCopyWithImpl<$Res, $Val extends MapPointData>
    implements $MapPointDataCopyWith<$Res> {
  _$MapPointDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? count = freezed,
    Object? batchHours = freezed,
  }) {
    return _then(_value.copyWith(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      batchHours: freezed == batchHours
          ? _value.batchHours
          : batchHours // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MapPointDataCopyWith<$Res>
    implements $MapPointDataCopyWith<$Res> {
  factory _$$_MapPointDataCopyWith(
          _$_MapPointData value, $Res Function(_$_MapPointData) then) =
      __$$_MapPointDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'min_price', fromJson: toRublesNullable, toJson: toCentNullable)
          int? price,
      int? count,
      @JsonKey(name: 'available_hours')
          double? batchHours});
}

/// @nodoc
class __$$_MapPointDataCopyWithImpl<$Res>
    extends _$MapPointDataCopyWithImpl<$Res, _$_MapPointData>
    implements _$$_MapPointDataCopyWith<$Res> {
  __$$_MapPointDataCopyWithImpl(
      _$_MapPointData _value, $Res Function(_$_MapPointData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? count = freezed,
    Object? batchHours = freezed,
  }) {
    return _then(_$_MapPointData(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      batchHours: freezed == batchHours
          ? _value.batchHours
          : batchHours // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MapPointData implements _MapPointData {
  _$_MapPointData(
      {@JsonKey(name: 'min_price', fromJson: toRublesNullable, toJson: toCentNullable)
          required this.price,
      required this.count,
      @JsonKey(name: 'available_hours')
          required this.batchHours});

  factory _$_MapPointData.fromJson(Map<String, dynamic> json) =>
      _$$_MapPointDataFromJson(json);

  @override
  @JsonKey(
      name: 'min_price', fromJson: toRublesNullable, toJson: toCentNullable)
  final int? price;
  @override
  final int? count;
  @override
  @JsonKey(name: 'available_hours')
  final double? batchHours;

  @override
  String toString() {
    return 'MapPointData(price: $price, count: $count, batchHours: $batchHours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapPointData &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.batchHours, batchHours) ||
                other.batchHours == batchHours));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, price, count, batchHours);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapPointDataCopyWith<_$_MapPointData> get copyWith =>
      __$$_MapPointDataCopyWithImpl<_$_MapPointData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MapPointDataToJson(
      this,
    );
  }
}

abstract class _MapPointData implements MapPointData {
  factory _MapPointData(
      {@JsonKey(name: 'min_price', fromJson: toRublesNullable, toJson: toCentNullable)
          required final int? price,
      required final int? count,
      @JsonKey(name: 'available_hours')
          required final double? batchHours}) = _$_MapPointData;

  factory _MapPointData.fromJson(Map<String, dynamic> json) =
      _$_MapPointData.fromJson;

  @override
  @JsonKey(
      name: 'min_price', fromJson: toRublesNullable, toJson: toCentNullable)
  int? get price;
  @override
  int? get count;
  @override
  @JsonKey(name: 'available_hours')
  double? get batchHours;
  @override
  @JsonKey(ignore: true)
  _$$_MapPointDataCopyWith<_$_MapPointData> get copyWith =>
      throw _privateConstructorUsedError;
}
