part of 'notifications_bloc.dart';

@freezed
class NotificationsEvent with _$NotificationsEvent {
  const factory NotificationsEvent.started() = _Started;
  const factory NotificationsEvent.onChangeWorkoutNotification({
    required Map<String, String> changeWorkoutNotification,
  }) = _OnChangeWorkoutNotification;

  const factory NotificationsEvent.onAdminChangeWorkoutNotification({
    required RemoteMessage remoteMessage,
  }) = _OnAdminChangeWorkoutNotification;

  const factory NotificationsEvent.onPaymentWorkoutNotification({
    required PaymentStatusEnum paymentStatus,
  }) = _OnPaymentWorkoutNotification;

  const factory NotificationsEvent.onPaymentBatchNotification({
    required PaymentStatusEnum paymentStatus,
  }) = _OnPaymentBatchNotification;
}
