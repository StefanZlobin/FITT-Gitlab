// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Price _$$_PriceFromJson(Map<String, dynamic> json) => _$_Price(
      minPrice: json['min'] == null ? 0 : toRublesNullable(json['min'] as int?),
      maxPrice: json['max'] == null ? 0 : toRublesNullable(json['max'] as int?),
    );

Map<String, dynamic> _$$_PriceToJson(_$_Price instance) => <String, dynamic>{
      'min': toCentNullable(instance.minPrice),
      'max': toCentNullable(instance.maxPrice),
    };
