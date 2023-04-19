import 'package:dio/dio.dart';
import 'package:fitt/domain/entities/jwt_token/token_pair.dart';
import 'package:fitt/features/authorization/data/models/request/token/refresh_token_request_body.dart';
import 'package:retrofit/retrofit.dart';

part 'token_api_client.g.dart';

@RestApi()
abstract class TokenApiClient {
  factory TokenApiClient(Dio dio, {String? baseUrl}) = _TokenApiClient;

  @POST('user/accounts/login/token-refresh/')
  Future<TokenPair> refreshTokens(@Body() RefreshTokenRequestBody request);
}
