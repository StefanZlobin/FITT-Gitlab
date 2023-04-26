// ignore_for_file: prefer_mixin

import 'package:fitt/core/enum/identification_status_enum.dart';
import 'package:get_it/get_it.dart';

/// Класс, который будет вызываться при инициализации приложения
/// И узнавать, существует ли пользователь, путем "просмотра" кеша
///
/// Исходя из полученного значения, будет меняться
/// Объект dio в запросах (с интерцепторами или без)

abstract class IdentificationRepository with Disposable {
  /// Проверяет наличеие пользователя в кеше
  Future<void> checkUserInCache();

  Stream<IdentificationStatusEnum> get identificationStatus;
}
