// ignore_for_file: prefer_mixin

import 'package:fitt/domain/entities/jwt_token/token_pair.dart';
import 'package:get_it/get_it.dart';

abstract class TokenRepository with Disposable {
  Future<void> getToken();
  Future<TokenPair> refreshToken({required TokenPair token});
  Future<void> saveToken({required TokenPair? token});
  Future<void> deleteToken();

  Stream<TokenPair?> get token;
}
