import 'package:fitt/core/enum/authentication_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/features/authorization/domain/repositories/authentication/authentication_repository.dart';

mixin AuthMixin {
  AuthenticationRepository get __repo => getIt<AuthenticationRepository>();
  Stream<AuthenticationStatusEnum> get auth => __repo.authenticationStatus;
}
