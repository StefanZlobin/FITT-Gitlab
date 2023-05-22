part of 'payment_type_bloc.dart';

@freezed
class PaymentTypeState with _$PaymentTypeState {
  const factory PaymentTypeState.initial({
    @Default(PaymentTypeEnum.money) PaymentTypeEnum paymentType,
  }) = _PaymentTypeStateInitial;
  const factory PaymentTypeState.loaded({
    required PaymentTypeEnum paymentType,
  }) = _PaymentTypeStateLoaded;
  const factory PaymentTypeState.error({
    required String error,
  }) = _PaymentTypeStateError;
}
