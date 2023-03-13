// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buy_batch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuyBatchResponse _$BuyBatchResponseFromJson(Map<String, dynamic> json) => BuyBatchResponse(
      clubUuid: json['id'] as String,
      batchUuid: json['offer_id'] as int,
      status: json['status'] as String,
      payForm: json['pay_form'] as String,
    );

Map<String, dynamic> _$BuyBatchResponseToJson(BuyBatchResponse instance) => <String, dynamic>{
      'id': instance.clubUuid,
      'offer_id': instance.batchUuid,
      'status': instance.status,
      'pay_form': instance.payForm,
    };
