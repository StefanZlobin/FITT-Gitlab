import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_request_body.g.dart';

@JsonSerializable()
class SignInRequestBody {
  const SignInRequestBody(this.phoneNumber);

  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  Map<String, dynamic> toJson() => _$SignInRequestBodyToJson(this);
}
