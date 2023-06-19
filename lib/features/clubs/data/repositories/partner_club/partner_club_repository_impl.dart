// ignore_for_file: only_throw_errors

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fitt/core/enum/club_sorting_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/functions/polygon.dart';
import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/services/geolocation/geolocation_service.dart';
import 'package:fitt/features/clubs/data/models/request/partner_club/get_partner_clubs_request_body.dart';
import 'package:fitt/features/clubs/data/models/request/user_batches/get_user_batches_request.dart';
import 'package:fitt/features/clubs/data/source/remote_data_source/partner_club_api_client/partner_club_api_client.dart';
import 'package:fitt/features/clubs/domain/entities/batch/batch.dart';
import 'package:fitt/features/clubs/domain/entities/batch/user_batch.dart';
import 'package:fitt/features/clubs/domain/entities/calculate_price/calculate_price.dart';
import 'package:fitt/features/clubs/domain/entities/club/partner_club.dart';
import 'package:fitt/features/clubs/domain/repositories/partner_club/partner_club_repository.dart';
import 'package:fitt/features/map/domain/entities/lat_lng/lat_lng.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class PartnerClubRepositoryImpl implements PartnerClubRepository {
  PartnerClubRepositoryImpl(this.dio, {this.baseUrl})
      : _apiClient = PartnerClubApiClient(dio, baseUrl: baseUrl);

  final Dio dio;
  final String? baseUrl;
  final PartnerClubApiClient _apiClient;

  ClubFilters clubFilters = ClubFilters(favorite: false);

  final BehaviorSubject<List<PartnerClub>> _partnerClubsController =
      BehaviorSubject.seeded(<PartnerClub>[], sync: true);
  void Function(List<PartnerClub>) get updatePartnerClubs =>
      _partnerClubsController.sink.add;
  @override
  Stream<List<PartnerClub>> get partnerClubs => _partnerClubsController;

  @override
  Future<PartnerClub> addClubToFavorites(String clubUuid) async {
    try {
      final partnerClub = await _apiClient.addClubToFavorites(clubUuid);
      return partnerClub;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<PartnerClub> removeClubFromFavorites(String clubUuid) async {
    try {
      final partnerClub = await _apiClient.removeClubFromFavorites(clubUuid);
      return partnerClub;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<List<CalculatePrice>> getCalculatedPriceWorkout({
    required String slotUuid,
  }) async {
    try {
      final calculatePrice =
          await _apiClient.getCalculatedPriceWorkout(slotUuid);
      return calculatePrice;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<PartnerClub> getPartnerClub({required String clubUuid}) async {
    try {
      final partnerClub = await _apiClient.getPartnerClub(clubUuid);
      return partnerClub;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<List<PartnerClub>> getPartnerClubs({
    required ClubFilters clubFilters,
    required ClubSortingEnum clubSorting,
    LatLng? northeast,
    LatLng? southwest,
    bool? isFavorite,
  }) async {
    late String xPosition;
    try {
      final geolocation =
          await getIt<GeolocationService>().getLastKnowPosition() ??
              await getIt<GeolocationService>().getCurrentPosition();
      xPosition = 'Point(${geolocation.latitude} ${geolocation.longitude})';
    } on Exception {
      xPosition = '';
    }

    try {
      final partnerClubs = await _apiClient.getPartnerClubs(
        xPosition,
        GetPartnerClubsRequestBody(
          facilities: clubFilters.getActiveFacilitiesIds,
          maxPrice: clubFilters.maxPrice,
          minPrice: clubFilters.minPrice,
          poligon: polygon(northeast, southwest),
          sorting: clubSorting.convertSortingToField(clubSorting),
          isFavorite: clubFilters.favorite,
          withBatch: clubFilters.onlyWithBatch,
        ),
      );
      updatePartnerClubs(partnerClubs.results);
      return partnerClubs.results;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<List<Batch>> getClubBatches({required String clubUuid}) async {
    try {
      final batches = await _apiClient.getClubBatches(clubUuid);
      return batches;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<void> cancelPurchasedBatch(
    String batchUuid,
    UserBatch userBatch,
  ) async {
    try {
      await _apiClient.cancelPurchasedBatch(
        batchUuid.toString(),
        userBatch,
      );
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<UserBatch> getUserBatch(int batchUuid) async {
    try {
      final res = await _apiClient.getUserBatch(batchUuid.toString());
      return res;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<List<UserBatch>> getUserBatches() async {
    try {
      final res = await _apiClient.getUserBatches(GetUserBatchesRequest());
      return res;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  FutureOr onDispose() {
    _partnerClubsController.close();
  }
}
