// ignore_for_file: invalid_annotation_target

import 'package:fitt/core/constants/threshold.dart';
import 'package:fitt/core/enum/workout_status_enum.dart';
import 'package:fitt/core/utils/functions/serialization.dart';
import 'package:fitt/features/clubs/domain/entities/club/partner_club.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout.freezed.dart';
part 'workout.g.dart';

@freezed
class Workout with _$Workout {
  factory Workout({
    @JsonKey(name: 'id')
        required String uuid,
    required String user,
    @JsonKey(toJson: toCent, fromJson: toRubles)
        required int price,
    @JsonKey(
      fromJson: dateTimeFromStringRemoveUTC,
      toJson: dateTimeToString,
      name: 'plan_start_time',
    )
        required DateTime startTime,
    @JsonKey(
      fromJson: dateTimeFromStringRemoveUTC,
      toJson: dateTimeToString,
      name: 'plan_end_time',
    )
        required DateTime endTime,
    @JsonKey(name: 'club')
        required PartnerClub club,
    @JsonKey(name: 'pay_form')
        required String? payForm,
    required WorkoutStatusEnum status,
    @JsonKey(
      fromJson: dateTimeFromStringNullable,
      toJson: dateTimeToStringNullable,
      name: 'fact_start_time',
    )
        required DateTime? factStartTime,
    @JsonKey(
      fromJson: dateTimeFromStringNullable,
      toJson: dateTimeToStringNullable,
      name: 'fact_end_time',
    )
        required DateTime? factEndTime,
  }) = _Workout;

  Workout._();

  int get workoutHashCode => uuid.hashCode;
  DateTime get canStartTime => startTime.subtract(kWorkoutStartThreshold);
  DateTime get canEndTime => endTime.add(kWorkoutEndThreshold);
  bool get inProgress => status == WorkoutStatusEnum.started;
  bool get isMissed =>
      status == WorkoutStatusEnum.planned && startTime.isAfter(DateTime.now());

  factory Workout.fromJson(Map<String, dynamic> json) =>
      _$WorkoutFromJson(json);
}
