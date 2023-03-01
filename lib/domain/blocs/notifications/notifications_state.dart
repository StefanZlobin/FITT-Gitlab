part of 'notifications_bloc.dart';

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState.initial() = _Initial;
  const factory NotificationsState.paymentBatchSuccess() = _PaymentBatchSuccess;
  const factory NotificationsState.paymentBatchReject() = _PaymentBatchReject;
  const factory NotificationsState.paymentWorkoutSuccess() =
      _PaymentWorkoutSuccess;
  const factory NotificationsState.paymentWorkoutReject() =
      _PaymentWorkoutReject;

  const factory NotificationsState.workoutStatusPlanned() =
      _WorkoutStatusPlanned;
  const factory NotificationsState.workoutStatusRS() = _WorkoutStatusRS;
  const factory NotificationsState.workoutStatusStarted() =
      _WorkoutStatusStarted;
  const factory NotificationsState.workoutStatusRF() = _WorkoutStatusRF;
  const factory NotificationsState.workoutStatusFinished() =
      _WorkoutStatusFinished;
  const factory NotificationsState.workoutStatusFF() = _WorkoutStatusFF;
  const factory NotificationsState.error({required String error}) = _Error;
}
