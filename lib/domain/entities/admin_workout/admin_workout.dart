// ignore_for_file: invalid_annotation_target

import 'package:fitt/core/enum/workout_status_enum.dart';
import 'package:fitt/core/utils/functions/serialization.dart';
import 'package:fitt/domain/entities/admin_user/admin_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_workout.freezed.dart';
part 'admin_workout.g.dart';

@freezed
class AdminWorkout with _$AdminWorkout {
  const factory AdminWorkout({
    @JsonKey(name: 'id')
        String? uuid,
    @JsonKey(name: 'user')
        required AdminUser user,
    @JsonKey(name: 'price', fromJson: toRubles, toJson: toCent)
        required int price,
    @JsonKey(
      fromJson: dateTimeFromStringRemoveUTC,
      toJson: dateTimeToString,
      name: 'plan_start_time',
    )
        required DateTime planStartTime,
    @JsonKey(
      fromJson: dateTimeFromStringRemoveUTC,
      toJson: dateTimeToString,
      name: 'plan_end_time',
    )
        required DateTime planEndTime,
    @JsonKey(
      fromJson: dateTimeFromStringNullableRemoveUTC,
      toJson: dateTimeToStringNullable,
      name: 'fact_start_time',
    )
        DateTime? factStartTime,
    @JsonKey(
      fromJson: dateTimeFromStringNullableRemoveUTC,
      toJson: dateTimeToStringNullable,
      name: 'fact_end_time',
    )
        DateTime? factEndTime,
    @JsonKey(name: 'status')
        WorkoutStatusEnum? status,
    @JsonKey(name: 'is_overdue')
        bool? isOverdue,
    @JsonKey(name: 'key')
        String? key,
  }) = _AdminWorkout;

  factory AdminWorkout.fromJson(Map<String, dynamic> json) =>
      _$AdminWorkoutFromJson(json);
}
