import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:fitt/core/enum/user_role_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_event.dart';
part 'notifications_state.dart';
part 'notifications_bloc.freezed.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  NotificationsBloc() : super(const _Initial()) {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      log(const JsonEncoder.withIndent('  ').convert(message.toMap()));
      switch (message.data['type']) {
        case 'PAYMENT_BATCH_NOTIFICATION':
          return add(NotificationsEvent.onPaymentBatchNotification(
            message: message,
          ));
        case 'PAYMENT_WORKOUT_NOTIFICATION':
          return add(NotificationsEvent.onPaymentWorkoutNotification(
            message: message,
          ));
        case 'CHANGE_WORKOUT':
          return add(NotificationsEvent.onChangeWorkoutNotification(
            message: message,
          ));
      }
    });

    on<_OnPaymentBatchNotification>(_onPaymentBatchNotification);
    on<_OnPaymentWorkoutNotification>(_onPaymentWorkoutNotification);
    on<_OnChangeWorkoutNotification>(_onChangeWorkoutNotification);
  }

  Future<void> _onPaymentBatchNotification(
    _OnPaymentBatchNotification event,
    Emitter<NotificationsState> emit,
  ) async {}

  Future<void> _onPaymentWorkoutNotification(
    _OnPaymentWorkoutNotification event,
    Emitter<NotificationsState> emit,
  ) async {}

  Future<void> _onChangeWorkoutNotification(
    _OnChangeWorkoutNotification event,
    Emitter<NotificationsState> emit,
  ) async {
    if (event.message.data['user_type'] == UserTypeEnum.CUSTOMER.name) {
      if (event.message.data['status'] == 'REQUIRED_START') {
        emit(const NotificationsState.workoutStatusRS());
      } else if (event.message.data['status'] == 'START') {
        emit(const NotificationsState.workoutStatusStarted());
      } else if (event.message.data['status'] == 'REQUIRED_FINISH') {
        emit(const NotificationsState.workoutStatusRF());
      } else if (event.message.data['status'] == 'FINISH') {
        emit(const NotificationsState.workoutStatusFinished());
      }
    }
  }
}
