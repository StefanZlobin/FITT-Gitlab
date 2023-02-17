import 'package:json_annotation/json_annotation.dart';

part 'get_workouts_request_body.g.dart';

@JsonSerializable()
class GetWorkoutsRequestBody {
  GetWorkoutsRequestBody({
    this.limit = -1,
    this.offset = 0,
    required this.workoutPhase,
    required this.workoutSorting,
  });

  @JsonKey(name: 'limit')
  final int limit;
  @JsonKey(name: 'offset')
  final int offset;
  @JsonKey(name: 'phase')
  final String workoutPhase;
  @JsonKey(name: 'ordering')
  final String workoutSorting;

  Map<String, dynamic> toJson() => _$GetWorkoutsRequestBodyToJson(this);
}
