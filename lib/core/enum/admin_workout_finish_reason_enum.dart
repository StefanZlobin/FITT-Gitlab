import 'package:json_annotation/json_annotation.dart';

enum AdminWorkoutFinishReasonEnum {
  @JsonValue('TECH')
  technicalReason,
  @JsonValue('EMERGENCY')
  emergencySituation,
  @JsonValue('NOT_IN_CLUB')
  userNotInClub,
  @JsonValue('OTHER')
  other,
  @JsonValue('NONE')
  none,
}
