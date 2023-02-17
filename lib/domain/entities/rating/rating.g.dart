// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Rating _$$_RatingFromJson(Map<String, dynamic> json) => _$_Rating(
      score: (json['score'] as num).toDouble(),
      reviewCount: json['review_count'] as int,
    );

Map<String, dynamic> _$$_RatingToJson(_$_Rating instance) => <String, dynamic>{
      'score': instance.score,
      'review_count': instance.reviewCount,
    };
