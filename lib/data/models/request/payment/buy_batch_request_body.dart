import 'package:json_annotation/json_annotation.dart';

part 'buy_batch_request_body.g.dart';

@JsonSerializable()
class BuyBatchRequestBody {
  BuyBatchRequestBody(this.batchUuid);

  @JsonKey(name: 'id')
  final int batchUuid;

  Map<String, dynamic> toJson() => _$BuyBatchRequestBodyToJson(this);
}
