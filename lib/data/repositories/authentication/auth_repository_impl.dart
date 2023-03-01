// ignore_for_file: only_throw_errors

import 'package:dio/dio.dart';
import 'package:fitt/data/models/request/authentication/check_secure_code_request_body.dart';
import 'package:fitt/data/models/request/authentication/refresh_token_request_body.dart';
import 'package:fitt/data/models/request/authentication/signin_request_body.dart';
import 'package:fitt/data/source/local_data_source/auth_local_client/auth_local_client.dart';
import 'package:fitt/data/source/remote_data_source/auth_api_client/auth_api_client.dart';
import 'package:fitt/domain/entities/jwt_token/token_pair.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/repositories/authentication/auth_repository.dart';
import 'package:rxdart/rxdart.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this.dio, this._authLocalClient, {this.baseUrl})
      : _apiClient = AuthApiClient(dio, baseUrl: baseUrl);

  final Dio dio;
  final String? baseUrl;
  final AuthApiClient _apiClient;
  final AuthLocalClient _authLocalClient;

  // ignore: close_sinks
  final BehaviorSubject<TokenPair?> _tokenController =
      BehaviorSubject(sync: true);
  void Function(TokenPair?) get updateToken => _tokenController.sink.add;
  Stream<TokenPair?> get token => _tokenController;

  @override
  Stream<TokenPair?> get tokens => _tokenController;

  @override
  Future<TokenPair?> getToken() async {
    final token = await _authLocalClient.getToken();
    //if (token == null) {
    //  throw Exception('No refresh token. You should login to obtain new pair.');
    //}
    updateToken(token);
    return token;
  }

  @override
  Future<void> saveToken({required TokenPair token}) async {
    updateToken(token);
    await _authLocalClient.saveToken(token: token);
  }

  @override
  Future<void> signIn({required String phoneNumber}) async {
    try {
      await _apiClient.signIn(SignInRequestBody(phoneNumber));
    } on DioError catch (e) {
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<TokenPair> checkSecureCode({
    required String phoneNumber,
    required String secureCode,
    required String fcmToken,
  }) async {
    try {
      final token = await _apiClient.checkSecureCode(
          CheckSecureCodeRequestBody(phoneNumber, secureCode, fcmToken));
      await saveToken(token: token);
      return token;
    } on DioError catch (e) {
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<void> signOut() async {
    await _apiClient.signOut();
    await _authLocalClient.deleteToken();
    updateToken(null);
  }

  @override
  Future<TokenPair> refreshToken() async {
    final token = await getToken();
    final newToken = await _apiClient
        .refreshTokens(RefreshTokenRequestBody(token?.refresh ?? ''));
    await saveToken(token: newToken);
    return newToken;
  }
}
