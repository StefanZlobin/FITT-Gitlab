// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_batches_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserBatchesRequest _$GetUserBatchesRequestFromJson(
        Map<String, dynamic> json) =>
    GetUserBatchesRequest(
      statusIn: json['status__in'] as String? ?? 'ACTIVE, PREACTIVE',
      clubIdIn: json['club_id__in'] as String?,
      expireAtGte: json['expire_at__gte'] as String?,
      expireAtLte: json['expire_at__lte'] as String?,
    );

Map<String, dynamic> _$GetUserBatchesRequestToJson(
        GetUserBatchesRequest instance) =>
    <String, dynamic>{
      'status__in': instance.statusIn,
      'club_id__in': instance.clubIdIn,
      'expire_at__gte': instance.expireAtGte,
      'expire_at__lte': instance.expireAtLte,
    };
