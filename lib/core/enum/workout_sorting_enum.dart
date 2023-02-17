enum WorkoutSortingEnum {
  newFirst,
  oldFirst,
  nearest;

  String sortingToString(WorkoutSortingEnum sorting) {
    switch (sorting) {
      case WorkoutSortingEnum.nearest:
        return 'Ближайшие ко мне клубы';
      case WorkoutSortingEnum.newFirst:
        return 'Сначала новые тренировки';
      case WorkoutSortingEnum.oldFirst:
        return 'Сначала старые тренировки';
    }
  }

  String convertSortingToField(WorkoutSortingEnum sorting) {
    switch (sorting) {
      case WorkoutSortingEnum.newFirst:
        return '-plan_start_time';
      case WorkoutSortingEnum.oldFirst:
        return 'plan_start_time';
      case WorkoutSortingEnum.nearest:
        return 'distance';
    }
  }
}
