import 'dart:async';

import 'package:fitt/core/enum/authentication_status_enum.dart';
import 'package:fitt/core/enum/authorization_status_enum.dart';
import 'package:fitt/core/enum/user_role_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/domain/repositories/user/user_repository.dart';
import 'package:fitt/features/authorization/domain/repositories/authentication/authentication_repository.dart';
import 'package:fitt/features/authorization/domain/repositories/authorization/authorization_repository.dart';
import 'package:rxdart/rxdart.dart';

class AuthorizationRepositoryImpl
    with UserMixin
    implements AuthorizationRepository {
  AuthorizationRepositoryImpl() {
    getIt<AuthenticationRepository>()
        .authenticationStatus
        .listen((AuthenticationStatusEnum authenticationStatus) {
      if (authenticationStatus == AuthenticationStatusEnum.authenticated) {
        checkAuthorizationStatus();
      }
    });
  }

  final UserRepository userRepository = getIt<UserRepository>();

  final BehaviorSubject<AuthorizationStatusEnum>
      _authorizationStatusController =
      BehaviorSubject.seeded(AuthorizationStatusEnum.unknown, sync: true);
  void Function(AuthorizationStatusEnum) get updateAuthorizationStatus =>
      _authorizationStatusController.sink.add;
  Stream<AuthorizationStatusEnum> get _authorizationStatus =>
      _authorizationStatusController;

  @override
  Stream<AuthorizationStatusEnum> get authorizationStatus =>
      _authorizationStatus;

  @override
  Future<void> checkAuthorizationStatus() async {
    for (final role in userSnapshot!.role!) {
      switch (role) {
        case UserRoleEnum.customer:
          return updateAuthorizationStatus(AuthorizationStatusEnum.customer);
        case UserRoleEnum.administrator:
          return updateAuthorizationStatus(
            AuthorizationStatusEnum.administrator,
          );
        case UserRoleEnum.manager:
          return updateAuthorizationStatus(AuthorizationStatusEnum.manager);
        case UserRoleEnum.anonymous:
          return updateAuthorizationStatus(AuthorizationStatusEnum.unknown);
      }
    }
  }

  @override
  FutureOr onDispose() {
    _authorizationStatusController.close();
  }
}
