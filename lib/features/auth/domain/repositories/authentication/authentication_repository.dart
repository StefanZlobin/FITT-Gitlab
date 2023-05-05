// ignore_for_file: prefer_mixin

import 'package:fitt/core/enum/authentication_status_enum.dart';
import 'package:get_it/get_it.dart';

/// Класс, который будет проверять пользователя, после идентификации -
/// проверять токены.
///
/// Проверка происходит путем запроса данных о пользователя
/// В header'е запроса передаются сохраненные токены
/// При 400(1) ошибках - отмена всех последующих запросов требующих наличие токенов

abstract class AuthenticationRepository with Disposable {
  Future<void> checkUser();

  Stream<AuthenticationStatusEnum> get authenticationStatus;
  void updateAuthenticationStatus(
    AuthenticationStatusEnum authenticationStatus,
  );
}
