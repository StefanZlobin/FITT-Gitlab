import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/features/clubs/domain/blocs/club_sorting/club_sorting_bloc.dart';
import 'package:fitt/presentation/components/modals/club_sorting_modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClubSorting extends StatelessWidget {
  const ClubSorting({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          useRootNavigator: true,
          backgroundColor: AppColors.kBaseWhite,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          context: context,
          builder: (context) {
            return const ClubSortingModalBottomSheet();
          },
        );
      },
      child: BlocBuilder<ClubSortingBloc, ClubSortingState>(
        bloc: getIt<ClubSortingBloc>(),
        buildWhen: (previous, current) => true,
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loaded: (clubSortingItems) {
              final activeItem = clubSortingItems.entries
                  .where((e) => e.value)
                  .map((e) => e.key)
                  .toList()
                  .first;

              return Row(
                children: [
                  const SizedBox(width: 16),
                  Text(
                    activeItem.sortingToString(activeItem),
                    style:
                        AppTypography.kH16.apply(color: AppColors.kPrimaryBlue),
                  ),
                  const SizedBox(width: 8.0),
                  const Icon(
                    AppIcons.arr_down,
                    size: 12,
                    color: AppColors.kPrimaryBlue,
                  ),
                ],
              );
            },
            error: () => const SizedBox(),
          );
        },
      ),
    );
  }
}
