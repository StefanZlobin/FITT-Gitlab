part of 'payment_toggle_bloc.dart';

@Freezed(equal: false)
class PaymentToggleState with _$PaymentToggleState {
  const factory PaymentToggleState.initial({
    @Default(PaymentTypeEnum.money) PaymentTypeEnum paymentType,
  }) = _PaymentToggleStateInitial;
}
