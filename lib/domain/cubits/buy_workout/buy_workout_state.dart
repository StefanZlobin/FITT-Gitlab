part of 'buy_workout_cubit.dart';

@freezed
class BuyWorkoutState with _$BuyWorkoutState {
  const factory BuyWorkoutState.initial() = _BuyWorkoutStateInitial;
  const factory BuyWorkoutState.loaded({required Workout workout}) = _BuyWorkoutStateLoaded;
  const factory BuyWorkoutState.error({required String error}) = _BuyWorkoutStateError;
}
