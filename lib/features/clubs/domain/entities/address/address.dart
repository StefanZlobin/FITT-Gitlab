// ignore_for_file: invalid_annotation_target

import 'package:fitt/features/map/domain/entities/lat_lng/lat_lng.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  Address._();

  factory Address({
    @JsonKey(name: 'short_address') required String shortAddress,
    @JsonKey(name: 'coordinates') required LatLng coordinates,
    @JsonKey(name: 'detail_path') String? detailPath,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  String get addressWithMask {
    final reg = RegExp(r'ул');

    final res = shortAddress.splitMapJoin(
      reg,
      onMatch: (m) => '${m[0]}.',
      onNonMatch: (n) => n,
    );

    return res;
  }
}
