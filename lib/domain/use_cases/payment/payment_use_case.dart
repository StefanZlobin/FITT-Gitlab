import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/data/models/response/payment/buy_batch_response.dart';
import 'package:fitt/domain/entities/time_slot/time_slot.dart';
import 'package:fitt/domain/repositories/payment/payment_repository.dart';
import 'package:fitt/features/workouts/domain/entities/workout/workout.dart';

class PaymentUseCase {
  final paymentRepository = getIt<PaymentRepository>();

  Future<BuyBatchResponse> buyBatch({
    required String clubUuid,
    required int batchUuid,
  }) async {
    final response = await paymentRepository.buyBatch(
      clubUuid: clubUuid,
      batchUuid: batchUuid,
    );
    return response;
  }

  Future<Workout> buyWorkout({
    required TimeSlot slot,
    required String activityUuid,
  }) async {
    final workout = await paymentRepository.buyWorkout(
      slot: slot,
      activityUuid: activityUuid,
    );
    return workout;
  }

  Future<Workout> buyWorkoutByBatch({
    required TimeSlot slot,
    required String activityUuid,
  }) async {
    final workout = await paymentRepository.buyWorkoutByBatch(
      slot: slot,
      activityUuid: activityUuid,
    );
    return workout;
  }
}
