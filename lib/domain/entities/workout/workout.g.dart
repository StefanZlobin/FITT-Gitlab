// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Workout _$$_WorkoutFromJson(Map<String, dynamic> json) => _$_Workout(
      uuid: json['id'] as String,
      user: json['user'] as String,
      price: toRubles(json['price'] as int),
      startTime: dateTimeFromStringRemoveUTC(json['plan_start_time'] as String),
      endTime: dateTimeFromStringRemoveUTC(json['plan_end_time'] as String),
      club: PartnerClub.fromJson(json['club'] as Map<String, dynamic>),
      payForm: json['pay_form'] as String?,
      status: $enumDecode(_$WorkoutStatusEnumEnumMap, json['status']),
      factStartTime: dateTimeFromStringNullable(json['fact_start_time'] as String?),
      factEndTime: dateTimeFromStringNullable(json['fact_end_time'] as String?),
    );

Map<String, dynamic> _$$_WorkoutToJson(_$_Workout instance) => <String, dynamic>{
      'id': instance.uuid,
      'user': instance.user,
      'price': toCent(instance.price),
      'plan_start_time': dateTimeToString(instance.startTime),
      'plan_end_time': dateTimeToString(instance.endTime),
      'club': instance.club,
      'pay_form': instance.payForm,
      'status': _$WorkoutStatusEnumEnumMap[instance.status]!,
      'fact_start_time': dateTimeToStringNullable(instance.factStartTime),
      'fact_end_time': dateTimeToStringNullable(instance.factEndTime),
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
