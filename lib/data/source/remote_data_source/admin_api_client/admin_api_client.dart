import 'package:dio/dio.dart';
import 'package:fitt/data/models/request/admin/admin_set_locker_number_request_body.dart';
import 'package:fitt/data/models/request/admin/admin_workout_finish_reason_request_body.dart';
import 'package:fitt/data/models/request/admin/admin_workouts_filters_body.dart';
import 'package:fitt/data/models/response/admin/admin_club_slice.dart';
import 'package:fitt/data/models/response/admin/admin_workout_slice.dart';
import 'package:fitt/domain/entities/admin_club/admin_club.dart';
import 'package:fitt/features/workouts/domain/entities/admin_workout/admin_workout.dart';
import 'package:retrofit/retrofit.dart';

part 'admin_api_client.g.dart';

@RestApi()
abstract class AdminApiClient {
  factory AdminApiClient(Dio dio, {String? baseUrl}) = _AdminApiClient;

  @GET('staff/clubs/')
  Future<AdminClubSlice> getAdminClubs(
    @Query('limit') int limit,
    @Query('offset') int offset,
  );

  @GET('staff/clubs/{id}/')
  Future<AdminClub> getAdminClub(@Path('id') String uuid);

  @GET('staff/workouts')
  Future<AdminWorkoutSlice> getAdminWorkouts(
    @Query('limit') int limit,
    @Query('offset') int offset, {
    @Queries() AdminWorkoutsFiltersRequestBody? filters,
  });

  @GET('staff/workouts/{id}/')
  Future<AdminWorkout> getAdminWorkout(@Path('id') String uuid);

  @POST('staff/workouts/{id}/confirm_start/')
  Future<AdminWorkout> adminWorkoutConfirmStart(@Path('id') String uuid);

  @POST('staff/workouts/{id}/confirm_finish/')
  Future<AdminWorkout> adminWorkoutConfirmFinish(@Path('id') String uuid);

  @POST('staff/workouts/{id}/push_addiction_data/')
  Future<AdminWorkout> adminSetLockerNumber(
    @Path('id') String uuid,
    @Body() AdminSetLockerNumberRequestBody key,
  );

  @POST('staff/workouts/{id}/force_finish/')
  Future<AdminWorkout> adminForceFinish(
    @Path('id') String uuid,
    @Body() AdminWorkoutFinishReasonRequestBody finishReason,
  );
}
