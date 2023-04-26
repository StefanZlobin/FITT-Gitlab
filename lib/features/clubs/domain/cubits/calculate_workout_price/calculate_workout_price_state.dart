part of 'calculate_workout_price_cubit.dart';

@freezed
class CalculateWorkoutPriceState with _$CalculateWorkoutPriceState {
  const factory CalculateWorkoutPriceState.initial() =
      _CalculateWorkoutPriceStateInitial;
  const factory CalculateWorkoutPriceState.loaded(
          {required List<CalculatePrice> calculatedPrice,}) =
      _CalculateWorkoutPriceStateLoaded;
  const factory CalculateWorkoutPriceState.error({required String error}) =
      _CalculateWorkoutPriceStateError;
}
