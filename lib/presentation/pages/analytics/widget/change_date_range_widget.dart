import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/time_slice_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/datetime_range_to_string.dart';
import 'package:fitt/domain/blocs/analytics_filtering/analytics_filtering_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeDateRangeWidget extends StatelessWidget {
  const ChangeDateRangeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnalyticsFilteringBloc, AnalyticsFilteringState>(
      bloc: getIt<AnalyticsFilteringBloc>(),
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          loaded: (
            timeSlice,
            _,
            startDateRange,
            endDateRange,
            selectedDate,
          ) {
            final isCurrentDateBeforeEndDateRange = DateTime.now()
                .add(const Duration(days: 1))
                .difference(endDateRange)
                .isNegative;
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    getIt<AnalyticsFilteringBloc>().add(
                      AnalyticsFilteringEvent.dateRangeChanged(
                        timeSlice: timeSlice,
                        selectedDate: selectedDate.subtract(
                          Duration(
                            days: getIt<AnalyticsFilteringBloc>()
                                .countDaysForAddOrSubtract(
                              selectedDate,
                              timeSlice,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  child: const Icon(
                    AppIcons.arr_big_left,
                    color: AppColors.kBaseBlack,
                    size: 18,
                  ),
                ),
                Text(
                  DateTimeRangeToSting.dateTimeRangeToSting(
                    timeSlice,
                    startDateRange,
                    endDateRange,
                  ),
                  style: AppTypography.kH16.apply(color: AppColors.kBaseBlack),
                ),
                GestureDetector(
                  onTap: () {
                    if (timeSlice == TimeSliceEnum.year &&
                        DateTime.now().year == endDateRange.year) {
                      return;
                    }
                    if (!isCurrentDateBeforeEndDateRange) {
                      getIt<AnalyticsFilteringBloc>().add(
                        AnalyticsFilteringEvent.dateRangeChanged(
                          timeSlice: timeSlice,
                          selectedDate: selectedDate.add(
                            Duration(
                              days: getIt<AnalyticsFilteringBloc>()
                                  .countDaysForAddOrSubtract(
                                selectedDate,
                                timeSlice,
                              ),
                            ),
                          ),
                        ),
                      );
                    }
                  },
                  child: (timeSlice == TimeSliceEnum.year &&
                          DateTime.now().year == endDateRange.year)
                      ? const Icon(
                          AppIcons.arr_big_right,
                          color: AppColors.kOxford20,
                          size: 18,
                        )
                      : Icon(
                          AppIcons.arr_big_right,
                          color: !isCurrentDateBeforeEndDateRange
                              ? AppColors.kBaseBlack
                              : AppColors.kOxford20,
                          size: 18,
                        ),
                ),
              ],
            );
          },
          error: (_) => const SizedBox(),
        );
      },
    );
  }
}
