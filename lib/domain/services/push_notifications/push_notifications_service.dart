// ignore_for_file: prefer_mixin

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:fitt/core/enum/payment_status_enum.dart';
import 'package:get_it/get_it.dart';

abstract class PushNotificationsService with Disposable {
  Stream<PaymentStatusEnum?> get paymentBatchNotification;
  Stream<PaymentStatusEnum?> get paymentWorkoutNotification;

  /// Стрим отвечает за прием данных о смене статуса тренировки
  Stream<Map<String, String>?> get changeWorkoutStatusNotification;

  /// Стрим отвечает за прием данных о смене статуса тренировки
  /// Для администратора
  Stream<RemoteMessage> get adminChangeWorkoutStatusNotification;
}
