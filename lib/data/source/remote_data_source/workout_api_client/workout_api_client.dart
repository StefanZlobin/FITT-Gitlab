import 'package:dio/dio.dart';
import 'package:fitt/data/models/request/workout/cancel_workout_request_body.dart';
import 'package:fitt/data/models/request/workout/finish_workout_request_body.dart';
import 'package:fitt/data/models/request/workout/get_workouts_request_body.dart';
import 'package:fitt/data/models/request/workout/start_workout_request_body.dart';
import 'package:fitt/data/models/response/workout/workout_slice.dart';
import 'package:fitt/features/workouts/domain/entities/workout/workout.dart';
import 'package:retrofit/retrofit.dart';

part 'workout_api_client.g.dart';

@RestApi()
abstract class WorkoutApiClient {
  factory WorkoutApiClient(Dio dio, {String? baseUrl}) = _WorkoutApiClient;

  @GET('user/workouts/')
  Future<WorkoutSlice> getWorkouts(
    @Header('X-Position') String geolocation,
    @Queries() GetWorkoutsRequestBody request,
  );

  @GET('user/workouts/{id}/')
  Future<Workout> getWorkout(@Path('id') String uuid);

  @POST('user/workouts/{id}/cancel/')
  Future<Workout> cancelWorkout(
    @Path('id') String uuid,
    @Body() CancelWorkoutRequestBody request,
  );

  @POST('user/workouts/{id}/start/')
  Future<Workout> startWorkout(
    @Path('id') String uuid,
    @Body() StartWorkoutRequestBody request,
  );

  @POST('user/workouts/{id}/finish/')
  Future<Workout> finishWorkout(
    @Path('id') String uuid,
    @Body() FinishWorkoutRequestBody request,
  );
}
