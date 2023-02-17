import 'package:json_annotation/json_annotation.dart';

part 'admin_set_locker_number_request_body.g.dart';

@JsonSerializable()
class AdminSetLockerNumberRequestBody {
  AdminSetLockerNumberRequestBody({
    required this.key,
  });

  @JsonKey(name: 'key')
  final String key;

  factory AdminSetLockerNumberRequestBody.fromJson(Map<String, dynamic> json) =>
      _$AdminSetLockerNumberRequestBodyFromJson(json);
  Map<String, dynamic> toJson() =>
      _$AdminSetLockerNumberRequestBodyToJson(this);
}
