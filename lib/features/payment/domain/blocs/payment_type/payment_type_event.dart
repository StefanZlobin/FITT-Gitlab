part of 'payment_type_bloc.dart';

@freezed
class PaymentTypeEvent with _$PaymentTypeEvent {
  const factory PaymentTypeEvent.changedPaymentType({
    required PaymentTypeEnum paymentType,
  }) = _PaymentTypeEventChangedPaymentType;
}
