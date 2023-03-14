// ignore_for_file: invalid_annotation_target

import 'package:fitt/core/utils/functions/serialization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'price.freezed.dart';
part 'price.g.dart';

@freezed
class Price with _$Price {
  factory Price({
    @JsonKey(name: 'min', fromJson: toRublesNullable, toJson: toCentNullable) @Default(0) int? minPrice,
    @JsonKey(name: 'max', fromJson: toRublesNullable, toJson: toCentNullable) @Default(0) int? maxPrice,
  }) = _Price;

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
}
