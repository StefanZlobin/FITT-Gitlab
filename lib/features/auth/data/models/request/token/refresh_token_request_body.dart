import 'package:json_annotation/json_annotation.dart';

part 'refresh_token_request_body.g.dart';

@JsonSerializable()
class RefreshTokenRequestBody {
  const RefreshTokenRequestBody(this.refreshToken);

  @JsonKey(name: 'refresh')
  final String refreshToken;

  Map<String, dynamic> toJson() => _$RefreshTokenRequestBodyToJson(this);
}
