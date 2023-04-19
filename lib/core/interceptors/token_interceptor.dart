// ignore_for_file: deprecated_member_use

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/entities/jwt_token/token_pair.dart';
import 'package:fitt/features/authorization/domain/repositories/token/token_repository.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class TokenInterceptor extends Interceptor {
  TokenInterceptor({required this.dio}) {
    _tokenRepository.token.listen((event) {
      token = event;
    });
  }

  final Dio dio;
  final TokenRepository _tokenRepository = getIt<TokenRepository>();
  TokenPair? token;

  String? _formatToken(String? token) => token == null ? null : 'Bearer $token';

  bool _isTokenValid(String? access) {
    final missing = token?.access == null;
    final expired = !missing &&
        JwtDecoder.isExpired(
          token?.access ?? '',
        ); //TODO: Avoid using non null assertion.

    final valid = !expired;

    return valid;
  }

  Future<void> _tryRefreshTokens() async {
    if (token != null) {
      token = await _tokenRepository.refreshToken(token: token!);
    }
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (!_isTokenValid(token?.access)) {
      try {
        dio.lock();
        await _tryRefreshTokens();
      } finally {
        dio.unlock();
      }
    }

    options.headers['Authorization'] = _formatToken(token?.access);
    return handler.next(options);
  }

  @override
  Future<void> onError(
    DioError err,
    ErrorInterceptorHandler handler,
  ) async {
    await Sentry.captureException(
      err,
      stackTrace: err.stackTrace,
      hint: err.requestOptions,
    );
  }
}
