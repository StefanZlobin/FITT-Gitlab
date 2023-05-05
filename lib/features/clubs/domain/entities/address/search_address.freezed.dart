// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchAddress _$SearchAddressFromJson(Map<String, dynamic> json) {
  return _SearchAddress.fromJson(json);
}

/// @nodoc
mixin _$SearchAddress {
  @JsonKey(name: 'country')
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'short_address')
  String get shortAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'suggestion_address')
  String get suggestionAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'region')
  String? get region => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'street')
  String? get street => throw _privateConstructorUsedError;
  @JsonKey(name: 'house')
  String? get house => throw _privateConstructorUsedError;
  @JsonKey(name: 'block')
  String? get block => throw _privateConstructorUsedError;
  @JsonKey(name: 'postal_code')
  String? get postalCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'fias_level')
  int? get fiasLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'geo_lat')
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'geo_lon')
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchAddressCopyWith<SearchAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAddressCopyWith<$Res> {
  factory $SearchAddressCopyWith(
          SearchAddress value, $Res Function(SearchAddress) then) =
      _$SearchAddressCopyWithImpl<$Res, SearchAddress>;
  @useResult
  $Res call(
      {@JsonKey(name: 'country') String country,
      @JsonKey(name: 'short_address') String shortAddress,
      @JsonKey(name: 'suggestion_address') String suggestionAddress,
      @JsonKey(name: 'region') String? region,
      @JsonKey(name: 'city') String? city,
      @JsonKey(name: 'street') String? street,
      @JsonKey(name: 'house') String? house,
      @JsonKey(name: 'block') String? block,
      @JsonKey(name: 'postal_code') String? postalCode,
      @JsonKey(name: 'fias_level') int? fiasLevel,
      @JsonKey(name: 'geo_lat') double latitude,
      @JsonKey(name: 'geo_lon') double longitude});
}

/// @nodoc
class _$SearchAddressCopyWithImpl<$Res, $Val extends SearchAddress>
    implements $SearchAddressCopyWith<$Res> {
  _$SearchAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? shortAddress = null,
    Object? suggestionAddress = null,
    Object? region = freezed,
    Object? city = freezed,
    Object? street = freezed,
    Object? house = freezed,
    Object? block = freezed,
    Object? postalCode = freezed,
    Object? fiasLevel = freezed,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      shortAddress: null == shortAddress
          ? _value.shortAddress
          : shortAddress // ignore: cast_nullable_to_non_nullable
              as String,
      suggestionAddress: null == suggestionAddress
          ? _value.suggestionAddress
          : suggestionAddress // ignore: cast_nullable_to_non_nullable
              as String,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      house: freezed == house
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as String?,
      block: freezed == block
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      fiasLevel: freezed == fiasLevel
          ? _value.fiasLevel
          : fiasLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchAddressCopyWith<$Res>
    implements $SearchAddressCopyWith<$Res> {
  factory _$$_SearchAddressCopyWith(
          _$_SearchAddress value, $Res Function(_$_SearchAddress) then) =
      __$$_SearchAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'country') String country,
      @JsonKey(name: 'short_address') String shortAddress,
      @JsonKey(name: 'suggestion_address') String suggestionAddress,
      @JsonKey(name: 'region') String? region,
      @JsonKey(name: 'city') String? city,
      @JsonKey(name: 'street') String? street,
      @JsonKey(name: 'house') String? house,
      @JsonKey(name: 'block') String? block,
      @JsonKey(name: 'postal_code') String? postalCode,
      @JsonKey(name: 'fias_level') int? fiasLevel,
      @JsonKey(name: 'geo_lat') double latitude,
      @JsonKey(name: 'geo_lon') double longitude});
}

/// @nodoc
class __$$_SearchAddressCopyWithImpl<$Res>
    extends _$SearchAddressCopyWithImpl<$Res, _$_SearchAddress>
    implements _$$_SearchAddressCopyWith<$Res> {
  __$$_SearchAddressCopyWithImpl(
      _$_SearchAddress _value, $Res Function(_$_SearchAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? shortAddress = null,
    Object? suggestionAddress = null,
    Object? region = freezed,
    Object? city = freezed,
    Object? street = freezed,
    Object? house = freezed,
    Object? block = freezed,
    Object? postalCode = freezed,
    Object? fiasLevel = freezed,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$_SearchAddress(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      shortAddress: null == shortAddress
          ? _value.shortAddress
          : shortAddress // ignore: cast_nullable_to_non_nullable
              as String,
      suggestionAddress: null == suggestionAddress
          ? _value.suggestionAddress
          : suggestionAddress // ignore: cast_nullable_to_non_nullable
              as String,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      house: freezed == house
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as String?,
      block: freezed == block
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      fiasLevel: freezed == fiasLevel
          ? _value.fiasLevel
          : fiasLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchAddress implements _SearchAddress {
  const _$_SearchAddress(
      {@JsonKey(name: 'country') required this.country,
      @JsonKey(name: 'short_address') required this.shortAddress,
      @JsonKey(name: 'suggestion_address') required this.suggestionAddress,
      @JsonKey(name: 'region') this.region,
      @JsonKey(name: 'city') this.city,
      @JsonKey(name: 'street') this.street,
      @JsonKey(name: 'house') this.house,
      @JsonKey(name: 'block') this.block,
      @JsonKey(name: 'postal_code') this.postalCode,
      @JsonKey(name: 'fias_level') this.fiasLevel,
      @JsonKey(name: 'geo_lat') required this.latitude,
      @JsonKey(name: 'geo_lon') required this.longitude});

  factory _$_SearchAddress.fromJson(Map<String, dynamic> json) =>
      _$$_SearchAddressFromJson(json);

  @override
  @JsonKey(name: 'country')
  final String country;
  @override
  @JsonKey(name: 'short_address')
  final String shortAddress;
  @override
  @JsonKey(name: 'suggestion_address')
  final String suggestionAddress;
  @override
  @JsonKey(name: 'region')
  final String? region;
  @override
  @JsonKey(name: 'city')
  final String? city;
  @override
  @JsonKey(name: 'street')
  final String? street;
  @override
  @JsonKey(name: 'house')
  final String? house;
  @override
  @JsonKey(name: 'block')
  final String? block;
  @override
  @JsonKey(name: 'postal_code')
  final String? postalCode;
  @override
  @JsonKey(name: 'fias_level')
  final int? fiasLevel;
  @override
  @JsonKey(name: 'geo_lat')
  final double latitude;
  @override
  @JsonKey(name: 'geo_lon')
  final double longitude;

  @override
  String toString() {
    return 'SearchAddress(country: $country, shortAddress: $shortAddress, suggestionAddress: $suggestionAddress, region: $region, city: $city, street: $street, house: $house, block: $block, postalCode: $postalCode, fiasLevel: $fiasLevel, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchAddress &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.shortAddress, shortAddress) ||
                other.shortAddress == shortAddress) &&
            (identical(other.suggestionAddress, suggestionAddress) ||
                other.suggestionAddress == suggestionAddress) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.house, house) || other.house == house) &&
            (identical(other.block, block) || other.block == block) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.fiasLevel, fiasLevel) ||
                other.fiasLevel == fiasLevel) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      country,
      shortAddress,
      suggestionAddress,
      region,
      city,
      street,
      house,
      block,
      postalCode,
      fiasLevel,
      latitude,
      longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchAddressCopyWith<_$_SearchAddress> get copyWith =>
      __$$_SearchAddressCopyWithImpl<_$_SearchAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchAddressToJson(
      this,
    );
  }
}

abstract class _SearchAddress implements SearchAddress {
  const factory _SearchAddress(
      {@JsonKey(name: 'country')
          required final String country,
      @JsonKey(name: 'short_address')
          required final String shortAddress,
      @JsonKey(name: 'suggestion_address')
          required final String suggestionAddress,
      @JsonKey(name: 'region')
          final String? region,
      @JsonKey(name: 'city')
          final String? city,
      @JsonKey(name: 'street')
          final String? street,
      @JsonKey(name: 'house')
          final String? house,
      @JsonKey(name: 'block')
          final String? block,
      @JsonKey(name: 'postal_code')
          final String? postalCode,
      @JsonKey(name: 'fias_level')
          final int? fiasLevel,
      @JsonKey(name: 'geo_lat')
          required final double latitude,
      @JsonKey(name: 'geo_lon')
          required final double longitude}) = _$_SearchAddress;

  factory _SearchAddress.fromJson(Map<String, dynamic> json) =
      _$_SearchAddress.fromJson;

  @override
  @JsonKey(name: 'country')
  String get country;
  @override
  @JsonKey(name: 'short_address')
  String get shortAddress;
  @override
  @JsonKey(name: 'suggestion_address')
  String get suggestionAddress;
  @override
  @JsonKey(name: 'region')
  String? get region;
  @override
  @JsonKey(name: 'city')
  String? get city;
  @override
  @JsonKey(name: 'street')
  String? get street;
  @override
  @JsonKey(name: 'house')
  String? get house;
  @override
  @JsonKey(name: 'block')
  String? get block;
  @override
  @JsonKey(name: 'postal_code')
  String? get postalCode;
  @override
  @JsonKey(name: 'fias_level')
  int? get fiasLevel;
  @override
  @JsonKey(name: 'geo_lat')
  double get latitude;
  @override
  @JsonKey(name: 'geo_lon')
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_SearchAddressCopyWith<_$_SearchAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
