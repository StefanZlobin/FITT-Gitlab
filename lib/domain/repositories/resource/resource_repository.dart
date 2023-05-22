// ignore_for_file: prefer_mixin

import 'package:fitt/core/enum/club_sorting_enum.dart';
import 'package:fitt/core/enum/workout_sorting_enum.dart';
import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:fitt/domain/entities/price/price.dart';
import 'package:fitt/features/clubs/domain/entities/facility/facility.dart';
import 'package:get_it/get_it.dart';

/// Pulls resources from the backend to implement filtering
abstract class ResourceRepository with Disposable {
  /// Get list of [Facility] for filtering partner Club or Map points
  Future<void> getFacilities();
  void facilitiesChanged({required Facility facility});

  /// Get [Price] for filtering partner Club or Map points
  Future<void> getPrice();
  void priceChanged({required Price price});

  void favoriteChanged({required bool isFavorite});

  void filtersChanged({required ClubFilters filters});

  Future<void> getWorkoutSortingItems();
  void workoutSortingItemsChanged({
    required WorkoutSortingEnum workoutSortingEnum,
  });

  Future<void> getClubSortingItems();
  void clubSortingItemsChanged({
    required ClubSortingEnum clubSortingEnum,
  });

  //void updateFilters({required ClubFilters clubFilters});

  int get minPrice;
  int get maxPrice;
  ClubFilters get clubFilters;

  Stream<Map<WorkoutSortingEnum, bool>> get workoutSortingItems;
  Stream<Map<ClubSortingEnum, bool>> get clubSortingItems;
  Stream<ClubFilters> get filters;
}
