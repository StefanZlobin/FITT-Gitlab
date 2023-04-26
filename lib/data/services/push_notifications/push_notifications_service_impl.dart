import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:fitt/core/enum/payment_status_enum.dart';
import 'package:fitt/core/enum/push_notifications_enum.dart';
import 'package:fitt/domain/services/push_notifications/push_notifications_service.dart';
import 'package:rxdart/rxdart.dart';

class PushNotificationsServiceImpl implements PushNotificationsService {
  PushNotificationsServiceImpl() {
    FirebaseMessaging.onMessage.listen((RemoteMessage remoteMessage) {
      log(const JsonEncoder.withIndent('  ').convert(remoteMessage.toMap()));

      switch (remoteMessage.data['type']) {
        case 'PAYMENT_BATCH_NOTIFICATION':
          final status = remoteMessage.data['payment_status'].toString();

          return _updateStream(
            PushNotificationsEnum.paymentBatchNotification,
            paymentStatus: _checkPaymentStatus(status),
          );
        case 'PAYMENT_WORKOUT_NOTIFICATION':
          final status = remoteMessage.data['payment_status'].toString();

          return _updateStream(
            PushNotificationsEnum.paymentWorkoutNotification,
            paymentStatus: _checkPaymentStatus(status),
          );
        case 'CHANGE_WORKOUT':
          final workoutUuid = remoteMessage.data['id'].toString();
          final status = remoteMessage.data['status'].toString();

          if (status != 'REG') {
            return _updateStream(
              PushNotificationsEnum.changeWorkoutStatusNotification,
              workoutUuid: workoutUuid,
              workoutStatus: status,
            );
          }
      }
    });
  }

  final BehaviorSubject<PaymentStatusEnum?>
      _paymentBatchNotificationController = BehaviorSubject(sync: true);
  void Function(PaymentStatusEnum?) get updatePaymentBatchNotification =>
      _paymentBatchNotificationController.sink.add;
  @override
  Stream<PaymentStatusEnum?> get paymentBatchNotification =>
      _paymentBatchNotificationController;

  final BehaviorSubject<PaymentStatusEnum?>
      _paymentWorkoutNotificationController = BehaviorSubject(sync: true);
  void Function(PaymentStatusEnum?) get updatePaymentWorkoutNotification =>
      _paymentWorkoutNotificationController.sink.add;
  @override
  Stream<PaymentStatusEnum?> get paymentWorkoutNotification =>
      _paymentWorkoutNotificationController;

  final BehaviorSubject<Map<String, String>?>
      _changeWorkoutStatusNotificationController = BehaviorSubject(sync: true);
  void Function(Map<String, String>?)
      get updateChangeWorkoutStatusNotification =>
          _changeWorkoutStatusNotificationController.sink.add;
  @override
  Stream<Map<String, String>?> get changeWorkoutStatusNotification =>
      _changeWorkoutStatusNotificationController;

  PaymentStatusEnum _checkPaymentStatus(String status) {
    return status == PaymentStatusEnum.success.name.toUpperCase()
        ? PaymentStatusEnum.success
        : PaymentStatusEnum.reject;
  }

  void _updateStream(
    PushNotificationsEnum pushNotifications, {
    PaymentStatusEnum? paymentStatus,
    String? workoutUuid,
    String? workoutStatus,
  }) {
    switch (pushNotifications) {
      case PushNotificationsEnum.changeWorkoutStatusNotification:
        return updateChangeWorkoutStatusNotification(
          {workoutUuid!: workoutStatus!},
        );
      case PushNotificationsEnum.paymentBatchNotification:
        return updatePaymentBatchNotification(paymentStatus);
      case PushNotificationsEnum.paymentWorkoutNotification:
        return updatePaymentWorkoutNotification(paymentStatus);
    }
  }

  @override
  FutureOr onDispose() {
    _paymentBatchNotificationController.close();
    _paymentWorkoutNotificationController.close();
    _changeWorkoutStatusNotificationController.close();
  }
}
