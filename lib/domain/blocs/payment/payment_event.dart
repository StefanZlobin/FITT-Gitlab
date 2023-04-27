part of 'payment_bloc.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.paymentCompleted({
    required PaymentStatusEnum paymentStatus,
    required PushNotificationsEnum pushNotifications,
  }) = _PaymentEventPaymentCompleted;

  const factory PaymentEvent.dropState() = _PaymentEventDropState;
}
