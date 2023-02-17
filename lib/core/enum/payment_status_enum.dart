// ignore_for_file: invalid_annotation_target

import 'package:json_annotation/json_annotation.dart';

enum PaymentStatusEnum {
  @JsonEnum(valueField: 'SUCCESS')
  success,

  @JsonEnum(valueField: 'REJECT')
  reject,
}
