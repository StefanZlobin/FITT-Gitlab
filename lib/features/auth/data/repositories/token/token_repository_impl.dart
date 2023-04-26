// ignore_for_file: only_throw_errors

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fitt/data/storages/token_storage.dart';
import 'package:fitt/domain/entities/jwt_token/token_pair.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/features/auth/data/models/request/token/refresh_token_request_body.dart';
import 'package:fitt/features/auth/data/source/remote_data_source/token_api_client.dart';
import 'package:fitt/features/auth/domain/repositories/token/token_repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class TokenRepositoryImpl implements TokenRepository {
  TokenRepositoryImpl(
    this.dio,
    this.tokenStorage, {
    this.baseUrl,
  }) : tokenApiClient = TokenApiClient(dio, baseUrl: baseUrl);

  final Dio dio;
  final String? baseUrl;
  final TokenApiClient tokenApiClient;
  final TokenStorage<Map?> tokenStorage;

  Future<void> _ensureInitialized() async {
    await Future.wait([
      if (!tokenStorage.isOpen) tokenStorage.open(),
    ]);
  }

  final BehaviorSubject<TokenPair?> _tokenController =
      BehaviorSubject.seeded(null, sync: true);
  void Function(TokenPair?) get updateToken => _tokenController.sink.add;
  @override
  Stream<TokenPair?> get token => _tokenController;

  @override
  Future<void> getToken() async {
    await _ensureInitialized();

    final tokenJson = tokenStorage.get(0);
    final token = tokenJson == null
        ? null
        : TokenPair.fromJson(
            tokenJson.map<String, dynamic>((dynamic key, dynamic value) =>
                MapEntry<String, dynamic>(key.toString(), value)),
          );

    updateToken(token);
  }

  @override
  Future<TokenPair> refreshToken({required TokenPair token}) async {
    try {
      final tokenPair = await tokenApiClient
          .refreshTokens(RefreshTokenRequestBody(token.refresh ?? ''));
      await saveToken(token: tokenPair);

      return tokenPair;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<void> saveToken({required TokenPair? token}) async {
    await _ensureInitialized();

    await tokenStorage.put(0, token?.toJson());

    updateToken(token);
  }

  @override
  Future<void> deleteToken() async {
    await _ensureInitialized();

    await tokenStorage.delete(0);
    await saveToken(token: null);

    updateToken(null);
  }

  @override
  FutureOr onDispose() {
    _tokenController.close();
  }
}
