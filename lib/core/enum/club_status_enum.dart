import 'package:json_annotation/json_annotation.dart';

enum ClubStatusEnum {
  @JsonValue('WORKED')
  worked,

  @JsonValue('HIDDEN')
  hidden,
}
