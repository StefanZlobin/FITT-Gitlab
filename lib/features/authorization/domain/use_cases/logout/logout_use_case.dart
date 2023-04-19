import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/features/authorization/domain/repositories/login/login_repository.dart';

class LogoutUseCase {
  final LoginRepository _loginRepository = getIt<LoginRepository>();

  Future<void> logout() async {
    await _loginRepository.logout();
  }
}
