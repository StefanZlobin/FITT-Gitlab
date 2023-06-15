part of 'payment_workout_button_bloc.dart';

@freezed
class PaymentWorkoutButtonState with _$PaymentWorkoutButtonState {
  const factory PaymentWorkoutButtonState.initial({
    @Default(false) bool paymentAvailable,
    @Default(UserExistEnum.none) UserExistEnum userHasFullData,
  }) = _PaymentWorkoutButtonStateInitial;
  const factory PaymentWorkoutButtonState.loaded({
    required PaymentTypeEnum paymentType,
    required Workout workout,
    String? paymentLink,
  }) = _PaymentWorkoutButtonStateLoaded;
  const factory PaymentWorkoutButtonState.error({
    required String error,
  }) = _PaymentWorkoutButtonStateError;
}
