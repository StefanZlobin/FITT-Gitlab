import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_secure_code_request_body.g.dart';

@JsonSerializable()
class CheckSecureCodeRequestBody {
  const CheckSecureCodeRequestBody(
    this.phoneNumber,
    this.secureCode,
    this.fcmToken,
  );

  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  @JsonKey(name: 'code')
  final String secureCode;
  @JsonKey(name: 'firebase_token')
  final String fcmToken;

  Map<String, dynamic> toJson() => _$CheckSecureCodeRequestBodyToJson(this);
}
