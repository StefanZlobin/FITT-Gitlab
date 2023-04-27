import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/enum/club_sorting_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/features/clubs/domain/blocs/club_sorting/club_sorting_bloc.dart';
import 'package:fitt/presentation/components/buttons/app_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClubSortingModalBottomSheet extends StatelessWidget {
  const ClubSortingModalBottomSheet({super.key});

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
          BlocBuilder<ClubSortingBloc, ClubSortingState>(
            bloc: getIt<ClubSortingBloc>(),
            buildWhen: (previous, current) => true,
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox(),
                loaded: (clubSortingItems) {
                  final sortingValue = clubSortingItems.entries
                      .where((e) => e.value)
                      .map((e) => e.key)
                      .toList()
                      .first;

                  return SizedBox(
                    height: 168,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: ClubSortingEnum.values.length,
                      itemBuilder: (context, index) {
                        return AppRadioButton<ClubSortingEnum>(
                          sortingValue:
                              ClubSortingEnum.values[index].sortingToString(
                            ClubSortingEnum.values[index],
                          ),
                          value: ClubSortingEnum.values[index],
                          groupValue: sortingValue,
                          onChanged: (value) => getIt<ClubSortingBloc>().add(
                            ClubSortingEvent.sortingChanged(
                              clubSortingEnum: value,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
                error: () => const SizedBox(),
              );
            },
          ),
        ],
      ),
    );
  }
}
