part of 'payment_workout_button_bloc.dart';

@freezed
class PaymentWorkoutButtonEvent with _$PaymentWorkoutButtonEvent {
  const factory PaymentWorkoutButtonEvent.payment({
    required PaymentTypeEnum paymentType,
  }) = _PaymentWorkoutButtonEventPayment;
  const factory PaymentWorkoutButtonEvent.checkAvailablePayment({
    required bool paymentAvailable,
    required UserExistEnum userHasFullData,
  }) = _PaymentWorkoutButtonEventCheckAvailablePayment;
}
