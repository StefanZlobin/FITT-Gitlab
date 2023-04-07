// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_batch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserBatch _$$_UserBatchFromJson(Map<String, dynamic> json) => _$_UserBatch(
      uuid: json['id'] as String,
      status: json['status'] as String,
      club: ClubBatchInfo.fromJson(json['club'] as Map<String, dynamic>),
      availableHours: (json['available_hours'] as num).toDouble(),
      totalHours: json['total_hours'] as int,
      duration: json['batch_duration'] as String,
      expireAt: json['expire_at'] as String,
      canCancell: json['can_cancelled'] as bool,
    );

Map<String, dynamic> _$$_UserBatchToJson(_$_UserBatch instance) =>
    <String, dynamic>{
      'id': instance.uuid,
      'status': instance.status,
      'club': instance.club,
      'available_hours': instance.availableHours,
      'total_hours': instance.totalHours,
      'batch_duration': instance.duration,
      'expire_at': instance.expireAt,
      'can_cancelled': instance.canCancell,
    };
