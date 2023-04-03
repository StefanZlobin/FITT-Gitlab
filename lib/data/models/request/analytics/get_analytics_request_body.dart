import 'package:json_annotation/json_annotation.dart';

part 'get_analytics_request_body.g.dart';

@JsonSerializable()
class GetAnalyticsRequestBody {
  GetAnalyticsRequestBody({
    required this.timeSlice,
    required this.clubsUuid,
    required this.startDate,
    required this.endDate,
  });

  @JsonKey(name: 'slice')
  final String timeSlice;
  @JsonKey(name: 'club_ids')
  final List<String> clubsUuid;
  @JsonKey(name: 'start_date')
  final DateTime startDate;
  @JsonKey(name: 'end_date')
  final DateTime endDate;

  Map<String, dynamic> toJson() => _$GetAnalyticsRequestBodyToJson(this);
}
