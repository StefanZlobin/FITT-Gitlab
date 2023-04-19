import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/features/authorization/domain/repositories/login/login_repository.dart';

class LoginUseCase {
  final LoginRepository _loginRepository = getIt<LoginRepository>();

  Future<void> login({required String phoneNumber}) async {
    await _loginRepository.login(phoneNumber: phoneNumber);
  }

  Future<void> checkSecureCode({
    required String phoneNumber,
    required String secureCode,
    required String fcmToken,
  }) async {
    await _loginRepository.checkSecureCode(
      phoneNumber: phoneNumber,
      secureCode: secureCode,
      fcmToken: fcmToken,
    );
  }
}
