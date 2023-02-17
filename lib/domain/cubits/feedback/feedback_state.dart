part of 'feedback_cubit.dart';

@freezed
class FeedbackState with _$FeedbackState {
  const factory FeedbackState.initial() = _FeedbackStateInitial;
  const factory FeedbackState.loaded() = _FeedbackStateLoaded;
  const factory FeedbackState.error({
    required String error,
  }) = _FeedbackStateError;
}
