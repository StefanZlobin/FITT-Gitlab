// ignore_for_file: prefer_mixin

import 'package:fitt/core/enum/authorization_status_enum.dart';
import 'package:get_it/get_it.dart';

/// Класс, который будет определять
/// Какие действия будут позволены совершать аутентифицированному пользователю

abstract class AuthorizationRepository with Disposable {
  Future<void> checkAuthorizationStatus();

  Stream<AuthorizationStatusEnum> get authorizationStatus;
}
