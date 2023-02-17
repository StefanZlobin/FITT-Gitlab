// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_address.freezed.dart';
part 'search_address.g.dart';

@freezed
class SearchAddress with _$SearchAddress {
  const factory SearchAddress({
    @JsonKey(name: 'country') required String country,
    @JsonKey(name: 'short_address') required String shortAddress,
    @JsonKey(name: 'suggestion_address') required String suggestionAddress,
    @JsonKey(name: 'region') String? region,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'street') String? street,
    @JsonKey(name: 'house') String? house,
    @JsonKey(name: 'block') String? block,
    @JsonKey(name: 'postal_code') String? postalCode,
    @JsonKey(name: 'fias_level') int? fiasLevel,
    @JsonKey(name: 'geo_lat') required double latitude,
    @JsonKey(name: 'geo_lon') required double longitude,
  }) = _SearchAddress;

  factory SearchAddress.fromJson(Map<String, dynamic> json) =>
      _$SearchAddressFromJson(json);
}
