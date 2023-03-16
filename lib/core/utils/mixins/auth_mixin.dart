import 'package:fitt/core/enum/authentication_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/repositories/authentication/auth_repository.dart';

mixin AuthMixin {
  AuthRepository get __repo => getIt<AuthRepository>();
  Stream<AuthenticationStatusEnum> get auth => __repo.authenticationStatus;
}
