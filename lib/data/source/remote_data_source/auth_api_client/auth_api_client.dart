import 'package:dio/dio.dart';
import 'package:fitt/data/models/request/authentication/check_secure_code_request_body.dart';
import 'package:fitt/data/models/request/authentication/refresh_token_request_body.dart';
import 'package:fitt/data/models/request/authentication/signin_request_body.dart';
import 'package:fitt/domain/entities/jwt_token/token_pair.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api_client.g.dart';

@RestApi()
abstract class AuthApiClient {
  factory AuthApiClient(Dio dio, {String? baseUrl}) = _AuthApiClient;

  @POST('user/accounts/logout/')
  Future<void> signOut();

  @POST('user/accounts/login/code/initiate/')
  Future<void> signIn(@Body() SignInRequestBody request);

  @POST('user/accounts/login/code/finish/')
  Future<TokenPair> checkSecureCode(@Body() CheckSecureCodeRequestBody request);

  @POST('user/accounts/login/token-refresh/')
  Future<TokenPair> refreshTokens(@Body() RefreshTokenRequestBody request);
}
