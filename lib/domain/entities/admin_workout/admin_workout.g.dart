// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_workout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdminWorkout _$$_AdminWorkoutFromJson(Map<String, dynamic> json) => _$_AdminWorkout(
      uuid: json['id'] as String?,
      user: AdminUser.fromJson(json['user'] as Map<String, dynamic>),
      price: toRubles(json['price'] as int),
      planStartTime: dateTimeFromStringRemoveUTC(json['plan_start_time'] as String),
      planEndTime: dateTimeFromStringRemoveUTC(json['plan_end_time'] as String),
      factStartTime: dateTimeFromStringNullableRemoveUTC(json['fact_start_time'] as String?),
      factEndTime: dateTimeFromStringNullableRemoveUTC(json['fact_end_time'] as String?),
      status: $enumDecodeNullable(_$WorkoutStatusEnumEnumMap, json['status']),
      isOverdue: json['is_overdue'] as bool?,
      key: json['key'] as String?,
    );

Map<String, dynamic> _$$_AdminWorkoutToJson(_$_AdminWorkout instance) => <String, dynamic>{
      'id': instance.uuid,
      'user': instance.user,
      'price': toCent(instance.price),
      'plan_start_time': dateTimeToString(instance.planStartTime),
      'plan_end_time': dateTimeToString(instance.planEndTime),
      'fact_start_time': dateTimeToStringNullable(instance.factStartTime),
      'fact_end_time': dateTimeToStringNullable(instance.factEndTime),
      'status': _$WorkoutStatusEnumEnumMap[instance.status],
      'is_overdue': instance.isOverdue,
      'key': instance.key,
    };

const _$WorkoutStatusEnumEnumMap = {
  WorkoutStatusEnum.requiresStart: 'REQUIRED_START',
  WorkoutStatusEnum.requiersFinish: 'REQUIRED_FINISH',
  WorkoutStatusEnum.reg: 'REG',
  WorkoutStatusEnum.planned: 'PLAN',
  WorkoutStatusEnum.extending: 'EXTEND',
  WorkoutStatusEnum.started: 'START',
  WorkoutStatusEnum.finished: 'FINISH',
  WorkoutStatusEnum.canceled: 'CANCEL',
  WorkoutStatusEnum.missed: 'MISS',
  WorkoutStatusEnum.forceFinish: 'FORCE_FINISH',
};
