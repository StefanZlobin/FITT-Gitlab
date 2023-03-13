import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/entities/jwt_token/token_pair.dart';
import 'package:fitt/domain/repositories/authentication/auth_repository.dart';

class AuthUseCase {
  AuthUseCase();

  final _authRepository = getIt<AuthRepository>();

  Future<void> signIn({required String phoneNumber}) async {
    await _authRepository.signIn(phoneNumber: phoneNumber);
  }

  Future<TokenPair> checkSecureCode({
    required String phoneNumber,
    required String secureCode,
    required String fcmToken,
  }) async {
    final token =
        await _authRepository.checkSecureCode(phoneNumber: phoneNumber, secureCode: secureCode, fcmToken: fcmToken);
    return token;
  }

  Future<void> signOut() async {
    await _authRepository.signOut();
  }

  Future<TokenPair?> getToken() async {
    final token = await _authRepository.getToken();
    return token;
  }

  Future<TokenPair?> refreshToken() async {
    final token = await _authRepository.refreshToken();
    return token;
  }

  Future<void> saveToken({required TokenPair token}) async {
    await _authRepository.saveToken(token: token);
  }
}
