part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = _PaymentStateInitial;

  const factory PaymentState.paymentBatch({
    required PaymentStatusEnum paymentStatus,
  }) = _PaymentStatePaymentBatch;

  const factory PaymentState.paymentWorkout({
    required PaymentStatusEnum paymentStatus,
  }) = _PaymentStatePaymentWorkout;

  const factory PaymentState.error({
    required String error,
  }) = _PaymentStateError;
}
