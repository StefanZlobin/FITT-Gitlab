import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:fitt/core/enum/payment_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/services/app_metrica/app_metrica_service.dart';
import 'package:fitt/domain/services/local_notifications/local_notifications_service.dart';
import 'package:fitt/domain/services/push_notifications/push_notifications_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_bloc.freezed.dart';
part 'notifications_event.dart';
part 'notifications_state.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  NotificationsBloc() : super(const _Initial()) {
    on<_OnPaymentBatchNotification>(_onPaymentBatchNotification);
    on<_OnPaymentWorkoutNotification>(_onPaymentWorkoutNotification);
    on<_OnChangeWorkoutNotification>(_onChangeWorkoutNotification);
    on<_OnAdminChangeWorkoutNotification>(_onAdminChangeWorkoutNotification);

    getIt<PushNotificationsService>()
        .paymentWorkoutNotification
        .listen((PaymentStatusEnum? paymentStatus) {
      if (paymentStatus != null) {
        add(NotificationsEvent.onPaymentWorkoutNotification(
          paymentStatus: paymentStatus,
        ));
      }
    });

    getIt<PushNotificationsService>()
        .paymentBatchNotification
        .listen((PaymentStatusEnum? paymentStatus) {
      if (paymentStatus != null) {
        add(NotificationsEvent.onPaymentBatchNotification(
          paymentStatus: paymentStatus,
        ));
      }
    });

    getIt<PushNotificationsService>()
        .changeWorkoutStatusNotification
        .listen((Map<String, String>? changeWorkoutStatus) {
      if (changeWorkoutStatus != null) {
        add(NotificationsEvent.onChangeWorkoutNotification(
          changeWorkoutNotification: changeWorkoutStatus,
        ));
      }
    });

    getIt<PushNotificationsService>()
        .adminChangeWorkoutStatusNotification
        .listen((RemoteMessage remoteMessage) {
      add(NotificationsEvent.onAdminChangeWorkoutNotification(
        remoteMessage: remoteMessage,
      ));
    });
  }

  Future<void> _onPaymentBatchNotification(
    _OnPaymentBatchNotification event,
    Emitter<NotificationsState> emit,
  ) async {
    if (event.paymentStatus == PaymentStatusEnum.success) {
      await getIt<AppMetricaService>().reportEventToAppMetrica(
        eventName: 'у пользователя прошла оплата пакета часов',
      );
    } else {
      await getIt<AppMetricaService>().reportEventToAppMetrica(
        eventName: 'у пользователя не прошла оплата пакета часов',
      );
    }
  }

  Future<void> _onPaymentWorkoutNotification(
    _OnPaymentWorkoutNotification event,
    Emitter<NotificationsState> emit,
  ) async {
    if (event.paymentStatus == PaymentStatusEnum.success) {
      await getIt<AppMetricaService>().reportEventToAppMetrica(
        eventName: 'у пользователя прошла оплата тренировки',
      );
    } else {
      await getIt<AppMetricaService>().reportEventToAppMetrica(
        eventName: 'у пользователя не прошла оплата тренировки ',
      );
    }
  }

  void _onChangeWorkoutNotification(
    _OnChangeWorkoutNotification event,
    Emitter<NotificationsState> emit,
  ) {
    if (event.changeWorkoutNotification.values.first == 'REQUIRED_START') {
      emit(const NotificationsState.workoutStatusRS());
    } else if (event.changeWorkoutNotification.values.first == 'START') {
      emit(const NotificationsState.workoutStatusStarted());
    } else if (event.changeWorkoutNotification.values.first ==
        'REQUIRED_FINISH') {
      emit(const NotificationsState.workoutStatusRF());
    } else if (event.changeWorkoutNotification.values.first == 'FINISH') {
      emit(const NotificationsState.workoutStatusFinished());
    } else if (event.changeWorkoutNotification.values.first == 'FORCE_FINISH') {
      emit(const NotificationsState.workoutStatusFF());
    } else if (event.changeWorkoutNotification.values.first == 'PLAN') {
      emit(const NotificationsState.workoutStatusPlanned());
    }
  }

  void _onAdminChangeWorkoutNotification(
    _OnAdminChangeWorkoutNotification event,
    Emitter<NotificationsState> emit,
  ) {
    if (event.remoteMessage.data['status'] == 'REQUIRED_START') {
      if (Platform.isAndroid) {
        getIt<LocalNotificationsService>().showLocalNotification(
          id: event.remoteMessage.data['id'].toString().hashCode,
          title: event.remoteMessage.notification?.title ?? '',
          body: event.remoteMessage.notification?.body ?? '',
        );
      }

      emit(const NotificationsState.workoutStatusRS());
    } else if (event.remoteMessage.data['status'] == 'REQUIRED_FINISH') {
      if (Platform.isAndroid) {
        getIt<LocalNotificationsService>().showLocalNotification(
          id: event.remoteMessage.data['id'].toString().hashCode,
          title: event.remoteMessage.notification?.title ?? '',
          body: event.remoteMessage.notification?.body ?? '',
        );
      }

      emit(const NotificationsState.workoutStatusRF());
    } else if (event.remoteMessage.data['status'] == 'FINISH') {
      emit(const NotificationsState.workoutStatusFinished());
    } else if (event.remoteMessage.data['status'] == 'FORCE_FINISH') {
      emit(const NotificationsState.workoutStatusFF());
    } else if (event.remoteMessage.data['status'] == 'MISSED') {
      emit(const NotificationsState.workoutStatusMissed());
    } else if (event.remoteMessage.data['status'] == 'PLAN') {
      emit(const NotificationsState.workoutStatusPlanned());
    }
  }
}
