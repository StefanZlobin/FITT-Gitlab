import 'package:fitt/core/enum/club_sorting_enum.dart';
import 'package:fitt/core/enum/workout_sorting_enum.dart';

class ResourceLocalClient {
  List<WorkoutSortingEnum> getWorkoutSortingItems() {
    final List<WorkoutSortingEnum> workoutSoringItems = [];

    for (final v in WorkoutSortingEnum.values) {
      workoutSoringItems.add(v);
    }

    return workoutSoringItems;
  }

  List<ClubSortingEnum> getClubSortingItems() {
    final List<ClubSortingEnum> clubSoringItems = [];

    for (final v in ClubSortingEnum.values) {
      clubSoringItems.add(v);
    }

    return clubSoringItems;
  }
}
