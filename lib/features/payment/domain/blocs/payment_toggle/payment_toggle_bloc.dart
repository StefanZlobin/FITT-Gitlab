import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/payment_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_toggle_bloc.freezed.dart';
part 'payment_toggle_event.dart';
part 'payment_toggle_state.dart';

class PaymentToggleBloc extends Bloc<PaymentToggleEvent, PaymentToggleState> {
  PaymentToggleBloc() : super(const _PaymentToggleStateInitial()) {
    on<_PaymentToggleEventToggleChanged>(_onPaymentToggleEventToggleChanged);
  }

  void _onPaymentToggleEventToggleChanged(
    _PaymentToggleEventToggleChanged event,
    Emitter<PaymentToggleState> emit,
  ) {
    emit(PaymentToggleState.initial(paymentType: event.paymentType));
  }
}
