import 'package:json_annotation/json_annotation.dart';

enum WorkoutStatusEnum {
  /// User requested start, admin did not respond yet
  @JsonValue('REQUIRED_START')
  requiresStart,

  /// User requested finish, admin did not respond yet
  @JsonValue('REQUIRED_FINISH')
  requiersFinish,

  /// Created on server
  @JsonValue('REG')
  reg,

  /// Created & payed
  @JsonValue('PLAN')
  planned,

  /// Requested extending, new session is not payed yet.
  @JsonValue('EXTEND')
  extending,

  @JsonValue('START')
  started,
  @JsonValue('FINISH')
  finished,
  @JsonValue('CANCEL')
  canceled,
  @JsonValue('MISS')
  missed,
  @JsonValue('FORCE_FINISH')
  forceFinish,
}
