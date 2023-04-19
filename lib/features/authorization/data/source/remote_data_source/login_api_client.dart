import 'package:dio/dio.dart';
import 'package:fitt/domain/entities/jwt_token/token_pair.dart';
import 'package:fitt/features/authorization/data/models/request/login/check_secure_code_request_body.dart';
import 'package:fitt/features/authorization/data/models/request/login/signin_request_body.dart';
import 'package:retrofit/retrofit.dart';

part 'login_api_client.g.dart';

@RestApi()
abstract class LoginApiClient {
  factory LoginApiClient(Dio dio, {String? baseUrl}) = _LoginApiClient;

  @POST('user/accounts/login/code/initiate/')
  Future<void> login(@Body() SignInRequestBody request);

  @POST('user/accounts/login/code/finish/')
  Future<TokenPair> checkSecureCode(@Body() CheckSecureCodeRequestBody request);

  @POST('user/accounts/logout/')
  Future<void> logout();
}
