import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:fitt/core/enum/payment_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/services/local_notifications/local_notifications_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_bloc.freezed.dart';
part 'notifications_event.dart';
part 'notifications_state.dart';

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

  void setInitialState() {
    // ignore: invalid_use_of_visible_for_testing_member
    emit(const _Initial());
  }

  void _onPaymentBatchNotification(
    _OnPaymentBatchNotification event,
    Emitter<NotificationsState> emit,
  ) {
    if (event.message.data['payment_status'] == PaymentStatusEnum.success.name.toUpperCase()) {
      emit(const _PaymentBatchSuccess());
    } else {
      emit(const _PaymentBatchReject());
    }
  }

  void _onPaymentWorkoutNotification(
    _OnPaymentWorkoutNotification event,
    Emitter<NotificationsState> emit,
  ) {
    if (event.message.data['payment_status'] == PaymentStatusEnum.success.name.toUpperCase()) {
      emit(const _PaymentWorkoutSuccess());
    } else {
      emit(const _PaymentWorkoutReject());
    }
  }

  void _onChangeWorkoutNotification(
    _OnChangeWorkoutNotification event,
    Emitter<NotificationsState> emit,
  ) {
    if (event.message.data['status'] == 'REQUIRED_START') {
      if (event.message.data['user_type'] == 'ADMINISTRATOR' && Platform.isAndroid) {
        getIt<LocalNotificationsService>().showLocalNotification(
          id: event.message.data['id'].toString().hashCode,
          title: event.message.notification?.title ?? '',
          body: event.message.notification?.body ?? '',
        );
      }
      emit(const NotificationsState.workoutStatusRS());
    } else if (event.message.data['status'] == 'START') {
      emit(const NotificationsState.workoutStatusStarted());
    } else if (event.message.data['status'] == 'REQUIRED_FINISH') {
      if (event.message.data['user_type'] == 'ADMINISTRATOR' && Platform.isAndroid) {
        getIt<LocalNotificationsService>().showLocalNotification(
          id: event.message.data['id'].toString().hashCode,
          title: event.message.notification?.title ?? '',
          body: event.message.notification?.body ?? '',
        );
      }
      emit(const NotificationsState.workoutStatusRF());
    } else if (event.message.data['status'] == 'FINISH') {
      emit(const NotificationsState.workoutStatusFinished());
    } else if (event.message.data['status'] == 'FORCE_FINISH') {
      emit(const NotificationsState.workoutStatusFF());
    } else if (event.message.data['status'] == 'PLAN') {
      emit(const NotificationsState.workoutStatusPlanned());
    }
  }
}
