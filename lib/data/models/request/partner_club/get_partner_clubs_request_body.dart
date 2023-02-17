import 'package:fitt/core/utils/functions/serialization.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_partner_clubs_request_body.g.dart';

@JsonSerializable()
class GetPartnerClubsRequestBody {
  GetPartnerClubsRequestBody({
    this.limit = -1,
    this.offset = 0,
    this.facilities = const [],
    this.maxPrice,
    this.minPrice,
    this.isFavorite = false,
    required this.poligon,
    required this.sorting,
  });

  @JsonKey(name: 'limit')
  final int limit;
  @JsonKey(name: 'offset')
  final int offset;
  @JsonKey(name: 'facility_ids')
  final List<int>? facilities;
  @JsonKey(name: 'price_gte', toJson: toCentNullable)
  final int? minPrice;
  @JsonKey(name: 'price_lte', toJson: toCentNullable)
  final int? maxPrice;
  @JsonKey(name: 'ordering')
  final String sorting;
  @JsonKey(name: 'in_area')
  final String poligon;
  @JsonKey(name: 'only_favorite')
  final bool isFavorite;

  Map<String, dynamic> toJson() => _$GetPartnerClubsRequestBodyToJson(this);
}
