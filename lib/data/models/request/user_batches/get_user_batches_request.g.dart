// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_batches_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserBatchesRequest _$GetUserBatchesRequestFromJson(
        Map<String, dynamic> json) =>
    GetUserBatchesRequest(
      limit: json['limit'] as int? ?? -1,
      offset: json['offset'] as int? ?? 0,
      statusIn: json['status__in'] as String?,
      clubIdIn: json['club_id__in'] as String?,
      expireAtGte: json['expire_at__gte'] as String?,
      expireAtLte: json['expire_at__lte'] as String?,
    );

Map<String, dynamic> _$GetUserBatchesRequestToJson(
        GetUserBatchesRequest instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
      'status__in': instance.statusIn,
      'club_id__in': instance.clubIdIn,
      'expire_at__gte': instance.expireAtGte,
      'expire_at__lte': instance.expireAtLte,
    };
