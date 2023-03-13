// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  @JsonKey(name: 'short_address')
  String get shortAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'coordinates')
  LatLng get coordinates => throw _privateConstructorUsedError;
  @JsonKey(name: 'detail_path')
  String? get detailPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) = _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {@JsonKey(name: 'short_address') String shortAddress,
      @JsonKey(name: 'coordinates') LatLng coordinates,
      @JsonKey(name: 'detail_path') String? detailPath});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address> implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortAddress = null,
    Object? coordinates = null,
    Object? detailPath = freezed,
  }) {
    return _then(_value.copyWith(
      shortAddress: null == shortAddress
          ? _value.shortAddress
          : shortAddress // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as LatLng,
      detailPath: freezed == detailPath
          ? _value.detailPath
          : detailPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$_AddressCopyWith(_$_Address value, $Res Function(_$_Address) then) = __$$_AddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'short_address') String shortAddress,
      @JsonKey(name: 'coordinates') LatLng coordinates,
      @JsonKey(name: 'detail_path') String? detailPath});
}

/// @nodoc
class __$$_AddressCopyWithImpl<$Res> extends _$AddressCopyWithImpl<$Res, _$_Address>
    implements _$$_AddressCopyWith<$Res> {
  __$$_AddressCopyWithImpl(_$_Address _value, $Res Function(_$_Address) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortAddress = null,
    Object? coordinates = null,
    Object? detailPath = freezed,
  }) {
    return _then(_$_Address(
      shortAddress: null == shortAddress
          ? _value.shortAddress
          : shortAddress // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as LatLng,
      detailPath: freezed == detailPath
          ? _value.detailPath
          : detailPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Address implements _Address {
  _$_Address(
      {@JsonKey(name: 'short_address') required this.shortAddress,
      @JsonKey(name: 'coordinates') required this.coordinates,
      @JsonKey(name: 'detail_path') this.detailPath});

  factory _$_Address.fromJson(Map<String, dynamic> json) => _$$_AddressFromJson(json);

  @override
  @JsonKey(name: 'short_address')
  final String shortAddress;
  @override
  @JsonKey(name: 'coordinates')
  final LatLng coordinates;
  @override
  @JsonKey(name: 'detail_path')
  final String? detailPath;

  @override
  String toString() {
    return 'Address(shortAddress: $shortAddress, coordinates: $coordinates, detailPath: $detailPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Address &&
            (identical(other.shortAddress, shortAddress) || other.shortAddress == shortAddress) &&
            (identical(other.coordinates, coordinates) || other.coordinates == coordinates) &&
            (identical(other.detailPath, detailPath) || other.detailPath == detailPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, shortAddress, coordinates, detailPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressCopyWith<_$_Address> get copyWith => __$$_AddressCopyWithImpl<_$_Address>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  factory _Address(
      {@JsonKey(name: 'short_address') required final String shortAddress,
      @JsonKey(name: 'coordinates') required final LatLng coordinates,
      @JsonKey(name: 'detail_path') final String? detailPath}) = _$_Address;

  factory _Address.fromJson(Map<String, dynamic> json) = _$_Address.fromJson;

  @override
  @JsonKey(name: 'short_address')
  String get shortAddress;
  @override
  @JsonKey(name: 'coordinates')
  LatLng get coordinates;
  @override
  @JsonKey(name: 'detail_path')
  String? get detailPath;
  @override
  @JsonKey(ignore: true)
  _$$_AddressCopyWith<_$_Address> get copyWith => throw _privateConstructorUsedError;
}
