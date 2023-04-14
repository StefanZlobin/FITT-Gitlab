import 'package:json_annotation/json_annotation.dart';

enum PaymentStatusEnum {
  @JsonValue('SUCCESS')
  success,

  @JsonValue('REJECT')
  reject,
}
