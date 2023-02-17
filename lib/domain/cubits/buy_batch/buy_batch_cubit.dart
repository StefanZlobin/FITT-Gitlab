import 'package:bloc/bloc.dart';
import 'package:fitt/data/models/response/payment/buy_batch_response.dart';
import 'package:fitt/domain/use_cases/payment/payment_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'buy_batch_cubit.freezed.dart';
part 'buy_batch_state.dart';

class BuyBatchCubit extends Cubit<BuyBatch> {
  BuyBatchCubit() : super(const BuyBatch.initial());

  final paymentUseCase = PaymentUseCase();

  Future<void> buyBatch({
    required String clubUuid,
    required int batchUuid,
  }) async {
    try {
      final response = await paymentUseCase.buyBatch(
          clubUuid: clubUuid, batchUuid: batchUuid);
      emit(BuyBatch.loaded(response: response));
    } on Exception catch (e) {
      emit(BuyBatch.error(error: e.toString()));
    }
  }
}
