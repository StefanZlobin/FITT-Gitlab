import 'package:fitt/domain/entities/jwt_token/token_pair.dart';

abstract class TokenRepository {
  Future<void> saveToken({required TokenPair token});
  Future<void> getToken();
  Future<void> deleteToken();

  Stream<TokenPair?> get tokens;
}
