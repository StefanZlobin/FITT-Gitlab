// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner_club_slice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartnerClubSlice _$PartnerClubSliceFromJson(Map<String, dynamic> json) =>
    PartnerClubSlice(
      count: json['count'] as int,
      next: json['next'] as String? ?? '',
      previous: json['previous'] as String? ?? '',
      results: (json['results'] as List<dynamic>)
          .map((e) => PartnerClub.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PartnerClubSliceToJson(PartnerClubSlice instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
