part of 'purchased_batch_cubit.dart';

@freezed
class PurchasedBatchState with _$PurchasedBatchState {
  const factory PurchasedBatchState.initial() = _PurchasedBatchStateInitial;
  const factory PurchasedBatchState.loaded({
    required List<UserBatch> batches,
  }) = _PurchasedBatchStateLoaded;
  const factory PurchasedBatchState.error({
    required String error,
  }) = _PurchasedBatchStateError;
}
