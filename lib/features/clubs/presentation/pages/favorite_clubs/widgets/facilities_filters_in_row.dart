import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/features/clubs/domain/blocs/club_filtering/club_filtering_bloc.dart';
import 'package:fitt/features/clubs/domain/entities/facility/facility.dart';
import 'package:fitt/presentation/components/modals/filter_modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class FacilitiesFiltersInRow extends StatelessWidget {
  const FacilitiesFiltersInRow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClubFilteringBloc, ClubFilteringState>(
      bloc: getIt<ClubFilteringBloc>(),
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          loaded: (clubFilters, isPUpdated, isFUpdated) {
            final activeFacilities = clubFilters.facilities!.entries
                .where((e) => e.value)
                .map((e) => e.key)
                .toList();

            return Container(
              height: 48,
              margin: const EdgeInsets.only(top: 24, bottom: 36),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: clubFilters.facilities?.length ?? 0 + 2,
                separatorBuilder: (context, index) => const SizedBox(width: 8),
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return _buildOpenFiltersButton(
                      context,
                      isPUpdated,
                      activeFacilities,
                    );
                  }
                  if (index == clubFilters.facilities!.length + 1) {
                    return const SizedBox();
                  }

                  final keys = clubFilters.facilities!.keys.toList();
                  final facility = keys[index - 1];
                  final isFacilityActive =
                      clubFilters.facilities![facility] ?? false;

                  return _buildFacilityButton(facility, isFacilityActive);
                },
              ),
            );
          },
          error: (error) => Center(
            child: Text(error),
          ),
        );
      },
    );
  }

  Widget _buildFacilityButton(Facility facility, bool isFacilityActive) {
    return GestureDetector(
      onTap: () {
        getIt<ClubFilteringBloc>().add(ClubFilteringEvent.facilitiesChanged(
          facility: facility,
        ));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 48,
        decoration: ShapeDecoration(
          color: isFacilityActive ? AppColors.kPrimaryBlue : Colors.white,
          shape: SuperellipseShape(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(24),
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
              topLeft: Radius.circular(24),
            ),
            side: isFacilityActive
                ? BorderSide(color: AppColors.kOxford20.withOpacity(0))
                : const BorderSide(color: AppColors.kOxford20),
          ),
        ),
        child: Center(
          child: Text(
            facility.title,
            style: AppTypography.kBody14.apply(
              color:
                  isFacilityActive ? AppColors.kBaseWhite : AppColors.kOxford40,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOpenFiltersButton(
    BuildContext context,
    bool isPriceUpdated,
    List<Facility> activeFacilities,
  ) {
    final countActiveFacilitie = activeFacilities.length;

    return GestureDetector(
      onTap: () => showModalBottomSheet<void>(
        context: context,
        isScrollControlled: true,
        useRootNavigator: true,
        backgroundColor: AppColors.kBaseWhite.withOpacity(0),
        builder: (context) => const FilterModalBottomSheet(),
      ),
      child: Container(
        height: 48,
        width: 48,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: SuperellipseShape(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(24),
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
              topLeft: Radius.circular(24),
            ),
            side: const BorderSide(color: AppColors.kOxford20),
          ),
        ),
        child: Center(
          child: Badge(
            backgroundColor:
                countActiveFacilitie + (isPriceUpdated ? 1 : 0) == 0
                    ? AppColors.kPrimaryBlue.withOpacity(0)
                    : AppColors.kPrimaryBlue,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            label: countActiveFacilitie + (isPriceUpdated ? 1 : 0) == 0
                ? const SizedBox()
                : Text(
                    '${countActiveFacilitie + (isPriceUpdated ? 1 : 0)}',
                    style: AppTypography.kBody10
                        .apply(color: AppColors.kBaseWhite),
                  ),
            child: const Icon(
              AppIcons.filters,
              size: 18,
              color: AppColors.kOxford60,
            ),
          ),
        ),
      ),
    );
  }
}
