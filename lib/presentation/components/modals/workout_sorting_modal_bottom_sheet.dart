import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/enum/workout_sorting_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/features/workouts/domain/blocs/workout_sorting/workout_sorting_bloc.dart';
import 'package:fitt/presentation/components/buttons/app_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WorkoutSortingModalBottomSheet extends StatelessWidget {
  const WorkoutSortingModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          BlocBuilder<WorkoutSortingBloc, WorkoutSortingState>(
            bloc: getIt<WorkoutSortingBloc>(),
            buildWhen: (previous, current) => true,
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox(),
                loaded: (workoutSortingItems) {
                  final sortingValue = workoutSortingItems.entries
                      .where((e) => e.value)
                      .map((e) => e.key)
                      .toList()
                      .first;

                  return SizedBox(
                    height: 168,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: WorkoutSortingEnum.values.length,
                      itemBuilder: (context, index) {
                        return AppRadioButton<WorkoutSortingEnum>(
                          sortingValue:
                              WorkoutSortingEnum.values[index].sortingToString(
                            WorkoutSortingEnum.values[index],
                          ),
                          value: WorkoutSortingEnum.values[index],
                          groupValue: sortingValue,
                          onChanged: (value) => getIt<WorkoutSortingBloc>().add(
                            WorkoutSortingEvent.sortingChanged(
                              sortingItem: value,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
                error: (error) => const SizedBox(),
              );
            },
          ),
        ],
      ),
    );
  }
}
