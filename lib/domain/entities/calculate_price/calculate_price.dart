// ignore_for_file: invalid_annotation_target

import 'package:fitt/core/utils/functions/serialization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calculate_price.freezed.dart';
part 'calculate_price.g.dart';

@freezed
class CalculatePrice with _$CalculatePrice {
  factory CalculatePrice({
    @JsonKey(name: 'price', fromJson: toRubles)
        required int price,
    @JsonKey(
      name: 'start_time',
      fromJson: dateTimeFromString,
      toJson: dateTimeToString,
    )
        required DateTime startTime,
    @JsonKey(
      name: 'end_time',
      fromJson: dateTimeFromString,
      toJson: dateTimeToString,
    )
        required DateTime endTime,
  }) = _CalculatePrice;

  factory CalculatePrice.fromJson(Map<String, dynamic> json) =>
      _$CalculatePriceFromJson(json);
}
