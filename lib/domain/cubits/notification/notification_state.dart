part of 'notification_cubit.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = _NotificationStateInitial;
  const factory NotificationState.paymentBatchNotification(
          {required RemoteMessage message}) =
      _NotificationStatePaymentBatchNotification;
  const factory NotificationState.paymentWorkoutNotification(
          {required RemoteMessage message}) =
      _NotificationStatePaymentWorkoutNotification;
  const factory NotificationState.changeWorkout(
      {required RemoteMessage message}) = _NotificationStateChangeWorkout;
}
