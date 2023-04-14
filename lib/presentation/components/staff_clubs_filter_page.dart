import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/domain/blocs/staff_clubs_filters/staff_clubs_filters_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class StaffClubsFilterPage extends StatelessWidget {
  const StaffClubsFilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Фильтр по клубам'),
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(AppIcons.arr_big_left),
        ),
      ),
      body: BlocBuilder<StaffClubsFiltersBloc, StaffClubsFiltersState>(
        bloc: getIt<StaffClubsFiltersBloc>(),
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loaded: (adminClubs, _) {
              return ListView.separated(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 32,
                ),
                itemBuilder: (context, index) {
                  final club = adminClubs.keys.toList()[index];
                  final isActive = adminClubs[club] ?? false;

                  return GestureDetector(
                    onTap: () {
                      getIt<StaffClubsFiltersBloc>().add(
                        StaffClubsFiltersEvent.selectClub(adminClub: club),
                      );
                    },
                    child: Row(
                      children: [
                        Container(
                          height: 32,
                          width: 32,
                          decoration: ShapeDecoration(
                            color: isActive
                                ? AppColors.kPrimaryBlue
                                : Colors.white,
                            shape: SuperellipseShape(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                                topLeft: Radius.circular(12),
                              ),
                              side: BorderSide(
                                color: isActive
                                    ? AppColors.kPrimaryBlue
                                    : AppColors.kOxford20,
                              ),
                            ),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.check,
                              size: 14,
                              color: AppColors.kBaseWhite,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          club.label,
                          style: AppTypography.kH16.apply(
                            color: AppColors.kBaseBlack,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (_, __) => const SizedBox(height: 30),
                itemCount: adminClubs.length,
              );
            },
            error: (_) => const SizedBox(),
          );
        },
      ),
    );
  }
}
