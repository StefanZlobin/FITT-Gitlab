import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/superellipse.dart';
import 'package:fitt/core/utils/widget_alignments.dart';
import 'package:fitt/domain/blocs/analytics_filtering/analytics_filtering_bloc.dart';
import 'package:fitt/presentation/dialogs/kpi_info_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class KPICard extends StatelessWidget {
  const KPICard({
    super.key,
    required this.cardLabel,
    required this.kpiValue,
    this.showInfo = false,
  });

  final String kpiValue;
  final String cardLabel;
  final bool showInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 167,
      height: 124,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: SuperellipseShape(
          borderRadius: superellipseRadius(24),
        ),
        shadows: [
          BoxShadow(
            color: AppColors.kOxford10.withOpacity(0.9),
            blurRadius: 24,
            offset: const Offset(0, 20),
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cardLabel,
                style: AppTypography.kH16.apply(color: AppColors.kOxford60),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                kpiValue,
                style: AppTypography.kNum48.apply(color: AppColors.kOxford),
              ),
            ],
          ),
          if (showInfo)
            GestureDetector(
              onTap: () {
                showDialog<void>(
                  context: context,
                  builder: (context) {
                    return BlocBuilder<AnalyticsFilteringBloc,
                        AnalyticsFilteringState>(
                      bloc: getIt<AnalyticsFilteringBloc>(),
                      builder: (context, state) {
                        return state.when(
                          initial: () => const SizedBox(),
                          loaded: (timeSlice, clubsUuid, _, __, ___) {
                            return KPIInfoDialog(
                              timeSlice:
                                  timeSlice.timeSliceToStringKPI(timeSlice),
                              label: cardLabel,
                            );
                          },
                          error: (error) => const SizedBox(),
                        );
                      },
                    );
                  },
                );
              },
              child: const TopRight(
                child: Icon(
                  Icons.info_rounded,
                  color: AppColors.kOxford40,
                  size: 24,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
