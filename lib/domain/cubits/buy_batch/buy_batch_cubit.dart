import 'package:bloc/bloc.dart';
import 'package:fitt/data/models/response/payment/buy_batch_response.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/use_cases/payment/payment_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'buy_batch_cubit.freezed.dart';
part 'buy_batch_state.dart';

class BuyBatchCubit extends Cubit<BuyBatchState> {
  BuyBatchCubit() : super(const BuyBatchState.initial());

  final paymentUseCase = PaymentUseCase();

  Future<void> buyBatch({
    required String clubUuid,
    required int batchUuid,
  }) async {
    emit(const BuyBatchState.initial());

    try {
      final response = await paymentUseCase.buyBatch(
          clubUuid: clubUuid, batchUuid: batchUuid);
      emit(BuyBatchState.loaded(response: response));
    } on NetworkExceptions catch (e) {
      emit(BuyBatchState.error(error: NetworkExceptions.getErrorMessage(e)));
    }
  }
}
