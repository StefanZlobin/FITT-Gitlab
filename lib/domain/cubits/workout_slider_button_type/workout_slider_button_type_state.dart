part of 'workout_slider_button_type_cubit.dart';

@freezed
class WorkoutSliderButtonTypeState with _$WorkoutSliderButtonTypeState {
  const factory WorkoutSliderButtonTypeState.initial() = _WorkoutSliderButtonTypeStateInitial;
  const factory WorkoutSliderButtonTypeState.start({
    required bool showBeforeCanStart,
  }) = _WorkoutSliderButtonTypeStateStart;
  const factory WorkoutSliderButtonTypeState.finish() = _WorkoutSliderButtonTypeStateFinish;
  const factory WorkoutSliderButtonTypeState.confirmation() = _WorkoutSliderButtonTypeStateConfirmation;
}
