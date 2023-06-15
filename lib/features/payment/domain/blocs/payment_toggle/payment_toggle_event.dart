part of 'payment_toggle_bloc.dart';

@freezed
class PaymentToggleEvent with _$PaymentToggleEvent {
  const factory PaymentToggleEvent.toggleChanged({
    required PaymentTypeEnum paymentType,
  }) = _PaymentToggleEventToggleChanged;
}
