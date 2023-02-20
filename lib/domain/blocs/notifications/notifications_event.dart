part of 'notifications_bloc.dart';

@freezed
class NotificationsEvent with _$NotificationsEvent {
  const factory NotificationsEvent.started() = _Started;
  const factory NotificationsEvent.onChangeWorkoutNotification({
    required RemoteMessage message,
  }) = _OnChangeWorkoutNotification;
  const factory NotificationsEvent.onPaymentWorkoutNotification({
    required RemoteMessage message,
  }) = _OnPaymentWorkoutNotification;
  const factory NotificationsEvent.onPaymentBatchNotification({
    required RemoteMessage message,
  }) = _OnPaymentBatchNotification;
}
