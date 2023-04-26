import 'package:fitt/core/enum/admin_workout_finish_reason_enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'admin_workout_finish_reason_request_body.g.dart';

@JsonSerializable()
class AdminWorkoutFinishReasonRequestBody {
  AdminWorkoutFinishReasonRequestBody({
    this.adminWorkoutFinishReasonEnum = AdminWorkoutFinishReasonEnum.none,
    this.comment = 'none',
  });

  @JsonKey(name: 'cause_type')
  final AdminWorkoutFinishReasonEnum adminWorkoutFinishReasonEnum;
  final String? comment;

  factory AdminWorkoutFinishReasonRequestBody.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AdminWorkoutFinishReasonRequestBodyFromJson(json);
  Map<String, dynamic> toJson() => _$AdminWorkoutFinishReasonRequestBodyToJson(this);
}
