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
          return emit(
              _NotificationStatePaymentBatchNotification(message: message));
        case 'PAYMENT_WORKOUT_NOTIFICATION':
          return emit(
              _NotificationStatePaymentWorkoutNotification(message: message));
        case 'CHANGE_WORKOUT':
          return emit(_NotificationStateChangeWorkout(message: message));
      }
    });
  }
}
