import 'package:json_annotation/json_annotation.dart';

enum PushNotificationsEnum {
  @JsonValue('PAYMENT_BATCH_NOTIFICATION')
  paymentBatchNotification,
  @JsonValue('PAYMENT_WORKOUT_NOTIFICATION')
  paymentWorkoutNotification,
  @JsonValue('CHANGE_WORKOUT')
  changeWorkoutStatusNotification,
}
