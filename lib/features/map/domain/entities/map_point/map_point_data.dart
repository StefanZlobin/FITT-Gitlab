// ignore_for_file: invalid_annotation_target

import 'package:fitt/core/utils/functions/serialization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_point_data.freezed.dart';
part 'map_point_data.g.dart';

@freezed
class MapPointData with _$MapPointData {
  factory MapPointData({
    @JsonKey(
      name: 'min_price',
      fromJson: toRublesNullable,
      toJson: toCentNullable,
    )
        required int? price,
    required int? count,
    @JsonKey(name: 'available_hours')
        required int? batchHours,
  }) = _MapPointData;

  factory MapPointData.fromJson(Map<String, dynamic> json) =>
      _$MapPointDataFromJson(json);
}
