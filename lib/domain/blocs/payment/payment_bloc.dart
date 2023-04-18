import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/payment_status_enum.dart';
import 'package:fitt/core/enum/push_notifications_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/services/push_notifications/push_notifications_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_bloc.freezed.dart';
part 'payment_event.dart';
part 'payment_state.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc() : super(const PaymentState.initial()) {
    on<_PaymentEventPaymentCompleted>(_onPaymentEventPaymentCompleted);
    on<_PaymentEventDropState>(_onPaymentEventDropState);

    pushNotificationsService.paymentBatchNotification
        .listen((PaymentStatusEnum? paymentStatus) {
      if (paymentStatus != null) {
        add(PaymentEvent.paymentCompleted(
          paymentStatus: paymentStatus,
          pushNotifications: PushNotificationsEnum.paymentBatchNotification,
        ));
      }
    });

    pushNotificationsService.paymentWorkoutNotification
        .listen((PaymentStatusEnum? paymentStatus) {
      if (paymentStatus != null) {
        add(PaymentEvent.paymentCompleted(
          paymentStatus: paymentStatus,
          pushNotifications: PushNotificationsEnum.paymentWorkoutNotification,
        ));
      }
    });
  }

  final pushNotificationsService = getIt<PushNotificationsService>();

  void _onPaymentEventDropState(
    _PaymentEventDropState event,
    Emitter<PaymentState> emit,
  ) {
    emit(const PaymentState.initial());
  }

  void _onPaymentEventPaymentCompleted(
    _PaymentEventPaymentCompleted event,
    Emitter<PaymentState> emit,
  ) {
    switch (event.paymentStatus) {
      case PaymentStatusEnum.success:
        return _emitNewState(
          event.pushNotifications,
          event.paymentStatus,
          emit,
        );
      case PaymentStatusEnum.reject:
        return _emitNewState(
          event.pushNotifications,
          event.paymentStatus,
          emit,
        );
    }
  }

  void _emitNewState(
    PushNotificationsEnum pushNotifications,
    PaymentStatusEnum paymentStatus,
    Emitter<PaymentState> emit,
  ) {
    switch (pushNotifications) {
      case PushNotificationsEnum.paymentBatchNotification:
        return emit(PaymentState.paymentBatch(paymentStatus: paymentStatus));
      case PushNotificationsEnum.paymentWorkoutNotification:
        return emit(PaymentState.paymentWorkout(paymentStatus: paymentStatus));
      case PushNotificationsEnum.changeWorkoutStatusNotification:
        return;
    }
  }
}
