part of 'payment_toggle_bloc.dart';

@Freezed(equal: false)
class PaymentToggleState with _$PaymentToggleState {
  const factory PaymentToggleState.initial({
    @Default(PaymentTypeEnum.corporateBalance) PaymentTypeEnum paymentType,
  }) = _PaymentToggleStateInitial;
}
