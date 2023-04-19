// ignore_for_file: only_throw_errors

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fitt/core/enum/authentication_status_enum.dart';
import 'package:fitt/core/enum/identification_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/entities/jwt_token/token_pair.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/repositories/user/user_repository.dart';
import 'package:fitt/features/authorization/domain/repositories/authentication/authentication_repository.dart';
import 'package:fitt/features/authorization/domain/repositories/identification/identification_repository.dart';
import 'package:fitt/features/authorization/domain/repositories/token/token_repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  AuthenticationRepositoryImpl() {
    getIt<IdentificationRepository>()
        .identificationStatus
        .listen((IdentificationStatusEnum identificationStatus) {
      if (identificationStatus == IdentificationStatusEnum.identificated) {
        checkUser();
      } else {
        updateAuthStatus(AuthenticationStatusEnum.unauthenticated);
      }
    });

    getIt<TokenRepository>().token.listen((TokenPair? token) {
      if (token == null) {
        updateAuthStatus(AuthenticationStatusEnum.unauthenticated);
      } else {
        checkUser();
      }
    });
  }

  final userRepository = getIt<UserRepository>();

  final BehaviorSubject<AuthenticationStatusEnum>
      _authenticationStatusController =
      BehaviorSubject.seeded(AuthenticationStatusEnum.unknown, sync: true);
  void Function(AuthenticationStatusEnum) get updateAuthStatus =>
      _authenticationStatusController.sink.add;
  Stream<AuthenticationStatusEnum> get _authenticationStatus =>
      _authenticationStatusController;

  @override
  Stream<AuthenticationStatusEnum> get authenticationStatus =>
      _authenticationStatus;

  @override
  void updateAuthenticationStatus(
    AuthenticationStatusEnum authenticationStatus,
  ) {
    updateAuthStatus(authenticationStatus);
  }

  @override
  Future<void> checkUser() async {
    updateAuthStatus(AuthenticationStatusEnum.loading);

    try {
      final user = await userRepository.getUser(fromCache: false);

      if (user != null) {
        updateAuthStatus(AuthenticationStatusEnum.authenticated);
      } else {
        updateAuthStatus(AuthenticationStatusEnum.unauthenticated);
      }
    } on DioError catch (e, stackTrace) {
      updateAuthStatus(AuthenticationStatusEnum.error);
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  FutureOr onDispose() {
    _authenticationStatusController.close();
  }
}
