import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/club_sorting_enum.dart';
import 'package:fitt/core/enum/workout_sorting_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sorting_cubit.freezed.dart';
part 'sorting_state.dart';

class SortingCubit extends Cubit<SortingState> {
  SortingCubit() : super(const SortingState.initial()) {
    setClubSortingEnum(clubSortingEnum: ClubSortingEnum.nearest);
    setWorkoutSortingEnum(workoutSortingEnum: WorkoutSortingEnum.nearest);
  }

  ClubSortingEnum? clubSortingValue;
  WorkoutSortingEnum? workoutSortingValue;

  void setClubSortingEnum({required ClubSortingEnum clubSortingEnum}) {
    clubSortingValue = clubSortingEnum;
    emit(SortingState.clubSorting(clubSortingEnum: clubSortingEnum));
  }

  void setWorkoutSortingEnum({required WorkoutSortingEnum workoutSortingEnum}) {
    workoutSortingValue = workoutSortingEnum;
    emit(SortingState.workoutSorting(workoutSortingEnum: workoutSortingEnum));
  }
}
