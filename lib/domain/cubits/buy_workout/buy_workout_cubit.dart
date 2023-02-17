import 'package:bloc/bloc.dart';
import 'package:fitt/domain/entities/time_slot/time_slot.dart';
import 'package:fitt/domain/entities/workout/workout.dart';
import 'package:fitt/domain/use_cases/payment/payment_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'buy_workout_cubit.freezed.dart';
part 'buy_workout_state.dart';

class BuyWorkoutCubit extends Cubit<BuyWorkoutState> {
  BuyWorkoutCubit() : super(const BuyWorkoutState.initial());

  final paymentUseCase = PaymentUseCase();

  Future<void> buyWorkout({
    required TimeSlot slot,
    required String activityUuid,
  }) async {
    try {
      final workout = await paymentUseCase.buyWorkout(
          slot: slot, activityUuid: activityUuid);
      emit(BuyWorkoutState.loaded(workout: workout));
    } on Exception catch (e) {
      emit(BuyWorkoutState.error(error: e.toString()));
    }
  }

  Future<void> buyWorkoutByBatch({
    required TimeSlot slot,
    required String activityUuid,
  }) async {
    try {
      final workout = await paymentUseCase.buyWorkoutByBatch(
          slot: slot, activityUuid: activityUuid);
      emit(BuyWorkoutState.loaded(workout: workout));
    } on Exception catch (e) {
      emit(BuyWorkoutState.error(error: e.toString()));
    }
  }
}
