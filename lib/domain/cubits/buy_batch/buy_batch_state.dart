part of 'buy_batch_cubit.dart';

@freezed
class BuyBatch with _$BuyBatch {
  const factory BuyBatch.initial() = _BuyBatchInitial;
  const factory BuyBatch.loaded({required BuyBatchResponse response}) =
      _BuyBatchLoaded;
  const factory BuyBatch.error({required String error}) = _BuyBatchError;
}
