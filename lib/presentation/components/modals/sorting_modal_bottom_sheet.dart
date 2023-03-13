import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/enum/club_sorting_enum.dart';
import 'package:fitt/core/enum/workout_sorting_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/cubits/sorting/sorting_cubit.dart';
import 'package:fitt/presentation/components/buttons/app_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SortingModalBottomSheet extends StatelessWidget {
  const SortingModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SortingCubit, SortingState>(
      bloc: getIt<SortingCubit>(),
      listener: (context, state) {
        state.whenOrNull(
          workoutSorting: (_) async {
            await Future<void>.delayed(const Duration(milliseconds: 300)).then((value) => context.pop());
          },
          clubSorting: (_) async {
            await Future<void>.delayed(const Duration(milliseconds: 300)).then((value) => context.pop());
          },
        );
      },
      child: SizedBox(
        height: 232,
        child: Column(
          children: [
            Container(
              width: 56,
              height: 5,
              margin: const EdgeInsets.only(top: 16, bottom: 19),
              decoration: BoxDecoration(
                color: AppColors.kOxford20,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            BlocBuilder<SortingCubit, SortingState>(
              bloc: getIt<SortingCubit>(),
              builder: (context, state) {
                return state.when(
                  initial: () => const SizedBox(),
                  workoutSorting: (sortingValue) {
                    return SizedBox(
                      height: 168,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: WorkoutSortingEnum.values.length,
                        itemBuilder: (context, index) {
                          return AppRadioButton<WorkoutSortingEnum>(
                            sortingValue:
                                WorkoutSortingEnum.values[index].sortingToString(WorkoutSortingEnum.values[index]),
                            value: WorkoutSortingEnum.values[index],
                            groupValue: sortingValue,
                            onChanged: (value) =>
                                getIt<SortingCubit>().setWorkoutSortingEnum(workoutSortingEnum: value),
                          );
                        },
                      ),
                    );
                  },
                  clubSorting: (sortingValue) {
                    return SizedBox(
                      height: 168,
                      child: ListView.builder(
                        itemCount: ClubSortingEnum.values.length,
                        itemBuilder: (context, index) {
                          return AppRadioButton<ClubSortingEnum>(
                            sortingValue: ClubSortingEnum.values[index].sortingToString(ClubSortingEnum.values[index]),
                            value: ClubSortingEnum.values[index],
                            groupValue: sortingValue,
                            onChanged: (value) => getIt<SortingCubit>().setClubSortingEnum(clubSortingEnum: value),
                          );
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
