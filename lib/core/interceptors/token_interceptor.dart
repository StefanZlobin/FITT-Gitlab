// ignore_for_file: deprecated_member_use

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/entities/jwt_token/token_pair.dart';
import 'package:fitt/domain/repositories/authentication/auth_repository.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class TokenInterceptor extends Interceptor {
  TokenInterceptor({required this.dio}) {
    authRepository.tokens.listen((event) {
      token = event;
    });
  }

  final Dio dio;
  final AuthRepository authRepository = getIt<AuthRepository>();
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
    token = await authRepository.refreshToken();
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
}
