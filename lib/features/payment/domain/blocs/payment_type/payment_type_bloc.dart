import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/payment_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_type_bloc.freezed.dart';
part 'payment_type_event.dart';
part 'payment_type_state.dart';

class PaymentTypeBloc extends Bloc<PaymentTypeEvent, PaymentTypeState> {
  PaymentTypeBloc() : super(const _PaymentTypeStateInitial()) {
    on<_PaymentTypeEventChangedPaymentType>(
      _onPaymentTypeEventChangedPaymentType,
    );
  }

  void _onPaymentTypeEventChangedPaymentType(
    _PaymentTypeEventChangedPaymentType event,
    Emitter<PaymentTypeState> emit,
  ) {
    emit(PaymentTypeState.loaded(paymentType: event.paymentType));
  }
}
