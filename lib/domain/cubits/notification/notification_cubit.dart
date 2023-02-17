import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_cubit.freezed.dart';
part 'notification_state.dart';

class NotificationCubit extends Cubit<NotificationState> {
  NotificationCubit() : super(const NotificationState.initial()) {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      log(const JsonEncoder.withIndent('  ').convert(message.toMap()));
      switch (message.data['type']) {
        case 'PAYMENT_BATCH_NOTIFICATION':
          emit(_NotificationStatePaymentBatchNotification(message: message));
          return;
        case 'PAYMENT_WORKOUT_NOTIFICATION':
          emit(_NotificationStatePaymentWorkoutNotification(message: message));
          return;
        case 'CHANGE_WORKOUT':
          emit(_NotificationStateChangeWorkout(message: message));
          return;
      }
    });
  }
}
