import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/superellipse.dart';
import 'package:fitt/domain/cubits/filtering/filtering_cubit.dart';
import 'package:fitt/domain/cubits/resource/resource_cubit.dart';
import 'package:fitt/domain/entities/facility/facility.dart';
import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:fitt/presentation/components/app_range_slider.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

import '../../../core/utils/widget_alignments.dart';

class FilterModalBottomSheet extends StatelessWidget {
  const FilterModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .8 + 25 + 16,
      decoration: ShapeDecoration(
        color: AppColors.kBaseWhite,
        shape: SuperellipseShape(
          borderRadius: superellipseRadiusOnly(
            24,
            topLeft: true,
            topRight: true,
            bottomLeft: true,
            bottomRight: true,
          ),
        ),
      ),
      child: Column(
        children: [
          _buildRoundedContainer(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * .8 - 32 - 88,
            child: BlocListener<ResourceCubit, ResourceState>(
              bloc: getIt<ResourceCubit>(),
              listener: (context, state) {
                state.whenOrNull(
                  loaded: (filters) =>
                      getIt<FilteringCubit>().setFilters(filters: filters),
                );
              },
              child: BlocBuilder<FilteringCubit, FilteringState>(
                bloc: getIt<FilteringCubit>(),
                builder: (context, state) {
                  return state.when(
                    initial: () =>
                        const Center(child: CircularProgressIndicator()),
                    loaded: (
                      filters,
                      selectedFacilities,
                      minPrice,
                      maxPrice,
                      _,
                      __,
                    ) {
                      return ListView(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        children: [
                          _buildHeader(),
                          const SizedBox(height: 32),
                          _buildFacilitiesFilter(filters, selectedFacilities),
                          const Separator(
                            margin: EdgeInsets.symmetric(vertical: 32),
                          ),
                          _buildRangeSlider(filters, minPrice!, maxPrice!),
                        ],
                      );
                    },
                    error: (error) => const SizedBox(),
                  );
                },
              ),
            ),
          ),
          BottomCenter(
            child: BlocBuilder<FilteringCubit, FilteringState>(
              bloc: getIt<FilteringCubit>(),
              builder: (context, state) {
                return state.when(
                  initial: () => const SizedBox(),
                  error: (error) => const SizedBox(),
                  loaded: (
                    filters,
                    selectedFacilities,
                    _,
                    __,
                    isPriceUpdate,
                    activeFacilitiesList,
                  ) {
                    final countActiveFacilities =
                        activeFacilitiesList?.length ?? 0;
                    final countActiveFilters =
                        countActiveFacilities + (isPriceUpdate ? 1 : 0);
                    if (countActiveFilters == 0) {
                      return _buildShowClubsButton(context, isDisable: true);
                    }
                    return _buildShowClubsButton(context, isDisable: false);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildShowClubsButton(
    BuildContext context, {
    required bool isDisable,
  }) {
    return AppElevatedButton(
      textButton: const Text('Показать клубы'),
      isDisable: isDisable,
      marginButton:
          const EdgeInsets.only(left: 16, right: 16, bottom: 32, top: 16),
      onPressed: () => context.pop(),
    );
  }

  Row _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Фильтры',
          style: AppTypography.kH24B.apply(color: AppColors.kBaseBlack),
        ),
        TextButton(
          onPressed: () => getIt<FilteringCubit>().resetFilters(),
          child: Text(
            'Сбросить',
            style: AppTypography.kH14.apply(color: AppColors.kPrimaryBlue),
          ),
        ),
      ],
    );
  }

  Widget _buildFacilitiesFilter(
    ClubFilters filters,
    Map<Facility, bool> selectedFacilities,
  ) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (var facility in selectedFacilities.entries) ...[
          GestureDetector(
            onTap: () {
              getIt<FilteringCubit>().selectFacility(
                facility: facility.key,
                filters: filters,
              );
            },
            child: Container(
              height: 40,
              padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 11.5),
              decoration: ShapeDecoration(
                color: facility.value ? AppColors.kPrimaryBlue : Colors.white,
                shape: SuperellipseShape(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(24),
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                    topLeft: Radius.circular(24),
                  ),
                  side: facility.value
                      ? BorderSide.none
                      : const BorderSide(color: AppColors.kOxford20),
                ),
              ),
              child: Text(
                facility.key.title,
                style: AppTypography.kBody14.apply(
                  color: facility.value
                      ? AppColors.kBaseWhite
                      : AppColors.kOxford40,
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildRangeSlider(
    ClubFilters filters,
    int minPrice,
    int maxPrice,
  ) {
    final currentValues = RangeValues(
      filters.minPrice == null
          ? minPrice.toDouble()
          : filters.minPrice!.toDouble(),
      filters.maxPrice == null
          ? maxPrice.toDouble()
          : filters.maxPrice!.toDouble(),
    );
    return RangeFilterWidget(
      initialValues: currentValues,
      bounds: RangeValues(minPrice.toDouble(), maxPrice.toDouble()),
      popularityStats: const [
        10,
        20,
        30,
        50,
        60,
        70,
        80,
        60,
        30,
        10,
        70,
        100,
        90,
        40,
        50,
        30,
        10,
        80,
        90,
        40,
        20,
        30,
        20,
        15,
        15,
        10,
        10,
      ],
      onChanged: (value) {
        getIt<FilteringCubit>().updatePrice(price: value);
      },
    );
  }

  Widget _buildRoundedContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(
        MediaQuery.of(context).size.width * 0.38,
        16,
        MediaQuery.of(context).size.width * 0.38,
        36,
      ),
      height: 5,
      decoration: ShapeDecoration(
        color: AppColors.kOxford20,
        shape: SuperellipseShape(
          borderRadius: superellipseRadiusOnly(
            5,
            topRight: true,
            topLeft: true,
            bottomLeft: true,
            bottomRight: true,
          ),
        ),
      ),
    );
  }
}
