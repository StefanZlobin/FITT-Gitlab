// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_point_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MapPointData _$$_MapPointDataFromJson(Map<String, dynamic> json) => _$_MapPointData(
      price: toRublesNullable(json['min_price'] as int?),
      count: json['count'] as int?,
      batchHours: (json['available_hours'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_MapPointDataToJson(_$_MapPointData instance) => <String, dynamic>{
      'min_price': toCentNullable(instance.price),
      'count': instance.count,
      'available_hours': instance.batchHours,
    };
