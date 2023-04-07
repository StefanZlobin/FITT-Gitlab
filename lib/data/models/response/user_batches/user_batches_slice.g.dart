// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_batches_slice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBatchesSlice _$UserBatchesSliceFromJson(Map<String, dynamic> json) =>
    UserBatchesSlice(
      count: json['count'] as int,
      next: json['next'] as String? ?? '',
      previous: json['previous'] as String? ?? '',
      results: (json['results'] as List<dynamic>)
          .map((e) => UserBatch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserBatchesSliceToJson(UserBatchesSlice instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
