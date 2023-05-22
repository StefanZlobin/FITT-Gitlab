import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fitt/core/enum/club_sorting_enum.dart';
import 'package:fitt/core/enum/workout_sorting_enum.dart';
import 'package:fitt/data/source/local_data_source/resource_local_client/resource_local_client.dart';
import 'package:fitt/data/source/remote_data_source/resource_api_client/resource_api_client.dart';
import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:fitt/domain/entities/price/price.dart';
import 'package:fitt/domain/repositories/resource/resource_repository.dart';
import 'package:fitt/features/clubs/domain/entities/facility/facility.dart';
import 'package:rxdart/rxdart.dart';

/// Class [ResourceRepositoryImpl] wich implements [ResourceRepository]
class ResourceRepositoryImpl implements ResourceRepository {
  ResourceRepositoryImpl(
    this.dio, {
    this.baseUrl,
  })  : _apiClient = ResourceApiClient(dio, baseUrl: baseUrl),
        _resourceLocalClient = ResourceLocalClient() {
    getWorkoutSortingItems();
    getClubSortingItems();
    getFacilities();
    getPrice();
  }

  final Dio dio;
  final String? baseUrl;
  final ResourceApiClient _apiClient;
  final ResourceLocalClient _resourceLocalClient;

  final Map<Facility, bool> _facilities = {};

  @override
  int minPrice = 0;
  @override
  int maxPrice = 0;
  @override
  ClubFilters get clubFilters => _filtersController.value;

  final BehaviorSubject<ClubFilters> _filtersController =
      BehaviorSubject.seeded(ClubFilters(favorite: false), sync: true);
  void Function(ClubFilters) get updateFilters => _filtersController.sink.add;
  @override
  Stream<ClubFilters> get filters => _filtersController;

  final BehaviorSubject<Map<WorkoutSortingEnum, bool>>
      _workoutSortingItemsController =
      BehaviorSubject.seeded(<WorkoutSortingEnum, bool>{}, sync: true);
  void Function(Map<WorkoutSortingEnum, bool>) get updateWorkoutSortingItems =>
      _workoutSortingItemsController.sink.add;
  @override
  Stream<Map<WorkoutSortingEnum, bool>> get workoutSortingItems =>
      _workoutSortingItemsController;

  final BehaviorSubject<Map<ClubSortingEnum, bool>>
      _clubSortingItemsController =
      BehaviorSubject.seeded(<ClubSortingEnum, bool>{}, sync: true);
  void Function(Map<ClubSortingEnum, bool>) get updateClubSortingItems =>
      _clubSortingItemsController.sink.add;
  @override
  Stream<Map<ClubSortingEnum, bool>> get clubSortingItems =>
      _clubSortingItemsController;

  @override
  Future<void> getFacilities() async {
    try {
      final res = await _apiClient.getFacilities();

      final facilities = {for (var f in res) f: false};
      _facilities.addAll(facilities);

      updateFilters(_filtersController.value.copyWith(facilities: _facilities));
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  @override
  void facilitiesChanged({required Facility facility}) {
    _facilities[facility] = !_facilities[facility]!;

    updateFilters(_filtersController.value.copyWith(facilities: _facilities));
  }

  @override
  Future<void> getPrice() async {
    try {
      final price = await _apiClient.getPrice();
      minPrice = price.minPrice!;
      maxPrice = price.maxPrice!;

      updateFilters(_filtersController.value.copyWith(
        minPrice: minPrice,
        maxPrice: maxPrice,
      ));
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  @override
  void priceChanged({required Price price}) {
    updateFilters(_filtersController.value.copyWith(
      minPrice: price.minPrice,
      maxPrice: price.maxPrice,
    ));
  }

  @override
  void filtersChanged({required ClubFilters filters}) {
    updateFilters(
      _filtersController.value.copyWith(
        minPrice: filters.minPrice,
        maxPrice: filters.maxPrice,
        facilities: filters.facilities,
        favorite: filters.favorite,
        onlyWithBatch: filters.onlyWithBatch,
        onlyWithSlots: filters.onlyWithSlots,
      ),
    );
  }

  @override
  void favoriteChanged({required bool isFavorite}) {
    updateFilters(_filtersController.value.copyWith(favorite: isFavorite));
  }

  @override
  Future<void> getClubSortingItems() async {
    final res = _resourceLocalClient.getClubSortingItems();
    final clubSortingItems = {for (var v in res) v: false};

    updateClubSortingItems(clubSortingItems);

    clubSortingItemsChanged(
      clubSortingEnum: clubSortingItems.entries.first.key,
    );
  }

  @override
  Future<void> getWorkoutSortingItems() async {
    final res = _resourceLocalClient.getWorkoutSortingItems();
    final workoutSortingItems = {for (var v in res) v: false};

    updateWorkoutSortingItems(workoutSortingItems);

    workoutSortingItemsChanged(
      workoutSortingEnum: workoutSortingItems.entries.first.key,
    );
  }

  @override
  void clubSortingItemsChanged({required ClubSortingEnum clubSortingEnum}) {
    _clubSortingItemsController.value.forEach((key, _) {
      _clubSortingItemsController.value[key] = false;
    });

    _clubSortingItemsController.value[clubSortingEnum] = true;

    updateClubSortingItems(_clubSortingItemsController.value);
  }

  @override
  void workoutSortingItemsChanged({
    required WorkoutSortingEnum workoutSortingEnum,
  }) {
    _workoutSortingItemsController.value.forEach((key, _) {
      _workoutSortingItemsController.value[key] = false;
    });

    _workoutSortingItemsController.value[workoutSortingEnum] = true;

    updateWorkoutSortingItems(_workoutSortingItemsController.value);
  }

  @override
  FutureOr onDispose() {
    _filtersController.close();
    _workoutSortingItemsController.close();
    _clubSortingItemsController.close();
  }
}
