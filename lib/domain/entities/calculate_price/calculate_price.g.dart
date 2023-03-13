// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculate_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalculatePrice _$$_CalculatePriceFromJson(Map<String, dynamic> json) => _$_CalculatePrice(
      price: toRubles(json['price'] as int),
      startTime: dateTimeFromString(json['start_time'] as String),
      endTime: dateTimeFromString(json['end_time'] as String),
    );

Map<String, dynamic> _$$_CalculatePriceToJson(_$_CalculatePrice instance) => <String, dynamic>{
      'price': instance.price,
      'start_time': dateTimeToString(instance.startTime),
      'end_time': dateTimeToString(instance.endTime),
    };
