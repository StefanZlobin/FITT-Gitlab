import 'package:dio/dio.dart';
import 'package:fitt/data/models/request/payment/buy_batch_request_body.dart';
import 'package:fitt/data/models/request/payment/buy_workout_by_batch_request_body.dart';
import 'package:fitt/data/models/request/payment/buy_workout_request_body.dart';
import 'package:fitt/data/models/response/payment/buy_batch_response.dart';
import 'package:fitt/features/workouts/domain/entities/workout/workout.dart';
import 'package:retrofit/retrofit.dart';

part 'payment_api_client.g.dart';

@RestApi()
abstract class PaymentApiClient {
  factory PaymentApiClient(Dio dio, {String? baseUrl}) = _PaymentApiClient;

  @POST('user/clubs/{id}/buy-batch/')
  Future<BuyBatchResponse> buyBatchOffers(
    @Path('id') String clubUuid,
    @Body() BuyBatchRequestBody batchId,
  );

  @POST('user/workouts/buy/')
  Future<Workout> buyWorkout(
    @Body() BuyWorkoutRequestBody request,
  );

  @POST('user/workouts/buy_with_batch/')
  Future<Workout> buyWorkoutByBatch(
    @Body() BuyWorkoutByBatchRequestBody request,
  );

  @POST('user/workouts/buy_with_corporate_account/')
  Future<Workout> buyWorkoutByCorpWallet(
    @Body() BuyWorkoutByBatchRequestBody request,
  );
}
