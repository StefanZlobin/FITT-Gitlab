part of 'buy_batch_cubit.dart';

@freezed
class BuyBatchState with _$BuyBatchState {
  const factory BuyBatchState.initial() = _BuyBatchStateInitial;
  const factory BuyBatchState.loaded({
    required BuyBatchResponse response,
  }) = _BuyBatchStateLoaded;
  const factory BuyBatchState.error({
    required String error,
  }) = _BuyBatchStateError;
}
