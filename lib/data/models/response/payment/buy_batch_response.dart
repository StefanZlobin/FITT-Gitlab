import 'package:json_annotation/json_annotation.dart';

part 'buy_batch_response.g.dart';

@JsonSerializable()
class BuyBatchResponse {
  BuyBatchResponse({
    required this.clubUuid,
    required this.batchUuid,
    required this.status,
    required this.payForm,
  });

  @JsonKey(name: 'id')
  final String clubUuid;
  @JsonKey(name: 'offer_id')
  final int batchUuid;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'pay_form')
  final String payForm;

  static BuyBatchResponse fromJson(Map<String, dynamic> json) =>
      _$BuyBatchResponseFromJson(json);
}
