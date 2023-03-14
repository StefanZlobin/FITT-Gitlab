// ignore_for_file: invalid_annotation_target

import 'package:fitt/domain/entities/lat_lng/lat_lng.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  factory Address({
    @JsonKey(name: 'short_address') required String shortAddress,
    @JsonKey(name: 'coordinates') required LatLng coordinates,
    @JsonKey(name: 'detail_path') String? detailPath,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}
