// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_club_slice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminClubSlice _$AdminClubSliceFromJson(Map<String, dynamic> json) =>
    AdminClubSlice(
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => AdminClub.fromJson(e as Map<String, dynamic>))
          .toList(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
    );

Map<String, dynamic> _$AdminClubSliceToJson(AdminClubSlice instance) =>
    <String, dynamic>{
      'count': instance.count,
      'results': instance.results,
      'next': instance.next,
      'previous': instance.previous,
    };
