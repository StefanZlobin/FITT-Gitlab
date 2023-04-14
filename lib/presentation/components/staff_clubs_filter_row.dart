import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/superellipse.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/core/utils/widget_alignments.dart';
import 'package:fitt/domain/blocs/staff_clubs_filters/staff_clubs_filters_bloc.dart';
import 'package:fitt/domain/entities/admin_club/admin_club.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class StaffClubsFilterRow extends StatelessWidget {
  const StaffClubsFilterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.fromLTRB(16, 20, 0, 16),
      child: BlocBuilder<StaffClubsFiltersBloc, StaffClubsFiltersState>(
        bloc: getIt<StaffClubsFiltersBloc>(),
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loaded: (adminClubs, selectedClubs) {
              return ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: adminClubs.length + 2,
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 8);
                },
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return _buildOpenFiltersButton(context, selectedClubs);
                  }
                  if (index == adminClubs.length + 1) {
                    return const SizedBox();
                  }
                  final club = adminClubs.keys.toList()[index - 1];
                  final isActive = adminClubs[club] ?? false;
                  return GestureDetector(
                    onTap: () {
                      getIt<StaffClubsFiltersBloc>().add(
                        StaffClubsFiltersEvent.selectClub(adminClub: club),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 9.5,
                      ),
                      decoration: ShapeDecoration(
                        color: isActive
                            ? AppColors.kPrimaryBlue
                            : AppColors.kOxford.withOpacity(0),
                        shape: SuperellipseShape(
                          borderRadius: superellipseRadius(12),
                          side: BorderSide(
                            color: isActive
                                ? AppColors.kPrimaryBlue
                                : AppColors.kOxford20,
                          ),
                        ),
                      ),
                      child: Text(
                        club.label,
                        style: AppTypography.kBody14.apply(
                          color: isActive
                              ? AppColors.kBaseWhite
                              : AppColors.kOxford60,
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            error: (_) => const SizedBox(),
          );
        },
      ),
    );
  }

  Widget _buildOpenFiltersButton(
    BuildContext context,
    List<AdminClub> selectedClubs,
  ) {
    return GestureDetector(
      onTap: () => context.push(AppRoute.staffClubsFilter.routeToPath),
      child: Stack(
        alignment: Alignment.topRight,
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 40,
            width: 40,
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
            child: const Center(
              child: Icon(
                AppIcons.filters,
                size: 16,
                color: AppColors.kOxford60,
              ),
            ),
          ),
          if (selectedClubs.isNotEmpty)
            TopRight(
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(360),
                  color: AppColors.kPrimaryBlue,
                ),
                child: Center(
                  child: Text(
                    selectedClubs.length.toString(),
                    style: AppTypography.kBody10
                        .apply(color: AppColors.kBaseWhite),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
