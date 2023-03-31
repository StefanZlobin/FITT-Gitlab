import 'package:json_annotation/json_annotation.dart';

part 'get_analytics_request_body.g.dart';

@JsonSerializable()
class GetAnalyticsRequestBody {
  GetAnalyticsRequestBody({
    required this.timeSlice,
    required this.clubsUuid,
  });

  @JsonKey(name: 'slice')
  final String timeSlice;
  @JsonKey(name: 'club_ids')
  final List<String> clubsUuid;

  Map<String, dynamic> toJson() => _$GetAnalyticsRequestBodyToJson(this);
}
