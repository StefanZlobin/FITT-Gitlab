// ignore_for_file: prefer_mixin

import 'package:fitt/core/enum/payment_status_enum.dart';
import 'package:get_it/get_it.dart';

abstract class PushNotificationsService with Disposable {
  Stream<PaymentStatusEnum?> get paymentBatchNotification;
  Stream<PaymentStatusEnum?> get paymentWorkoutNotification;

  /// Стрим отвечает за прием данных о смене статуса тренировки
  /// Нам не важно, какой статус у тренировки
  /// Так как мы будем обновлять стрим тренировки (или стрим тренировок)
  /// Исходя из полученного workout uuid
  Stream<String?> get changeWorkoutStatusNotification;
}
