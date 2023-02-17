import 'package:fitt/domain/entities/jwt_token/token_pair.dart';

abstract class AuthRepository {
  Future<void> signIn({required String phoneNumber});
  Future<TokenPair> checkSecureCode(
      {required String phoneNumber,
      required String secureCode,
      required String fcmToken});
  Future<void> signOut();

  Future<TokenPair?> getToken();
  Future<TokenPair> refreshToken();
  Future<void> saveToken({required TokenPair token});

  Stream<TokenPair?> get tokens;
}
