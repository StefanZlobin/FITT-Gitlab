// ignore_for_file: only_throw_errors

import 'package:dio/dio.dart';
import 'package:fitt/data/models/request/payment/buy_batch_request_body.dart';
import 'package:fitt/data/models/request/payment/buy_workout_by_batch_request_body.dart';
import 'package:fitt/data/models/request/payment/buy_workout_request_body.dart';
import 'package:fitt/data/models/response/payment/buy_batch_response.dart';
import 'package:fitt/data/source/remote_data_source/payment_api_client/payment_api_client.dart';
import 'package:fitt/domain/entities/time_slot/time_slot.dart';
import 'package:fitt/domain/entities/workout/workout.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/repositories/payment/payment_repository.dart';

class PaymentRepositoryImpl implements PaymentRepository {
  PaymentRepositoryImpl(this.dio, {this.baseUrl}) : _apiClient = PaymentApiClient(dio, baseUrl: baseUrl);

  final Dio dio;
  final String? baseUrl;
  final PaymentApiClient _apiClient;

  @override
  Future<BuyBatchResponse> buyBatch({
    required String clubUuid,
    required int batchUuid,
  }) async {
    try {
      final response = await _apiClient.buyBatchOffers(
        clubUuid,
        BuyBatchRequestBody(batchUuid),
      );
      return response;
    } on DioError catch (e) {
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<Workout> buyWorkout({
    required TimeSlot slot,
    required String activityUuid,
  }) async {
    try {
      final response = await _apiClient.buyWorkout(BuyWorkoutRequestBody(
        activity: activityUuid,
        startTime: slot.startTime.toString(),
        endTime: slot.startTime.add(slot.duration).toString(),
        price: slot.price,
      ));
      return response;
    } on DioError catch (e) {
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<Workout> buyWorkoutByBatch({
    required TimeSlot slot,
    required String activityUuid,
  }) async {
    try {
      final response = await _apiClient.buyWorkoutByBatch(BuyWorkoutByBatchRequestBody(
        activity: activityUuid,
        startTime: slot.startTime.toString(),
        endTime: slot.startTime.add(slot.duration).toString(),
      ));
      return response;
    } on DioError catch (e) {
      throw NetworkExceptions.getDioException(e);
    }
  }
}
