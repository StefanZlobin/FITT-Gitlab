// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_workout_finish_reason_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminWorkoutFinishReasonRequestBody _$AdminWorkoutFinishReasonRequestBodyFromJson(Map<String, dynamic> json) =>
    AdminWorkoutFinishReasonRequestBody(
      adminWorkoutFinishReasonEnum: $enumDecodeNullable(_$AdminWorkoutFinishReasonEnumEnumMap, json['cause_type']) ??
          AdminWorkoutFinishReasonEnum.none,
      comment: json['comment'] as String? ?? 'none',
    );

Map<String, dynamic> _$AdminWorkoutFinishReasonRequestBodyToJson(AdminWorkoutFinishReasonRequestBody instance) =>
    <String, dynamic>{
      'cause_type': _$AdminWorkoutFinishReasonEnumEnumMap[instance.adminWorkoutFinishReasonEnum]!,
      'comment': instance.comment,
    };

const _$AdminWorkoutFinishReasonEnumEnumMap = {
  AdminWorkoutFinishReasonEnum.technicalReason: 'TECH',
  AdminWorkoutFinishReasonEnum.emergencySituation: 'EMERGENCY',
  AdminWorkoutFinishReasonEnum.userNotInClub: 'NOT_IN_CLUB',
  AdminWorkoutFinishReasonEnum.other: 'OTHER',
  AdminWorkoutFinishReasonEnum.none: 'NONE',
};
