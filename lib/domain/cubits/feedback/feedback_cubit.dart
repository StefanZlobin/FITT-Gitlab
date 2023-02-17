import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

part 'feedback_state.dart';
part 'feedback_cubit.freezed.dart';

class FeedbackCubit extends Cubit<FeedbackState> {
  FeedbackCubit() : super(const FeedbackState.initial());

  Future<void> sentUserFeedback({
    required String comment,
    required String email,
  }) async {
    emit(const FeedbackState.initial());
    try {
      final SentryId sentryId = await Sentry.captureMessage('Feedback');

      final userFeedback = SentryUserFeedback(
        eventId: sentryId,
        comments: comment,
        email: email,
        name: '',
      );
      await Sentry.captureUserFeedback(userFeedback);
      emit(const FeedbackState.loaded());
    } on Exception catch (e) {
      emit(FeedbackState.error(error: e.toString()));
    }
  }
}
