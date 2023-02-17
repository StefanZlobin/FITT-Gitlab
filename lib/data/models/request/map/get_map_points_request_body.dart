import 'package:fitt/core/utils/functions/serialization.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_map_points_request_body.g.dart';

@JsonSerializable()
class GetMapPointsRequestBody {
  GetMapPointsRequestBody({
    required this.poligon,
    this.facilities = const [],
    this.maxPrice,
    this.minPrice,
  });

  @JsonKey(name: 'in_area')
  final String poligon;
  @JsonKey(name: 'facility_ids')
  final List<int>? facilities;
  @JsonKey(name: 'price_gte', toJson: toCentNullable)
  final int? minPrice;
  @JsonKey(name: 'price_lte', toJson: toCentNullable)
  final int? maxPrice;

  Map<String, dynamic> toJson() => _$GetMapPointsRequestBodyToJson(this);
}
