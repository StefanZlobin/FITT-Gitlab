import 'package:fitt/data/models/response/payment/buy_batch_response.dart';
import 'package:fitt/features/clubs/domain/entities/time_slot/time_slot.dart';
import 'package:fitt/features/workouts/domain/entities/workout/workout.dart';

abstract class PaymentRepository {
  Future<BuyBatchResponse> buyBatch(
      {required String clubUuid, required int batchUuid,});

  Future<Workout> buyWorkout({
    required TimeSlot slot,
    required String activityUuid,
  });

  Future<Workout> buyWorkoutByBatch({
    required TimeSlot slot,
    required String activityUuid,
  });
}
