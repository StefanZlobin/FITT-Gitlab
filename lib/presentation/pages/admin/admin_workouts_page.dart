import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/domain/cubits/admin_club/admin_club_cubit.dart';
import 'package:fitt/domain/entities/admin_club/admin_club.dart';
import 'package:fitt/presentation/components/menu/admin_menu_wrapper.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:fitt/presentation/pages/admin/tabs/admin_finished_workouts.dart';
import 'package:fitt/presentation/pages/admin/tabs/admin_planned_workouts.dart';
import 'package:fitt/presentation/pages/admin/tabs/admin_started_workouts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AdminWorkoutsPage extends StatelessWidget {
  const AdminWorkoutsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminClubCubit, AdminClubState>(
      bloc: getIt<AdminClubCubit>(),
      builder: (context, state) {
        return Scaffold(
          drawer: const AdminMenuWrapper(),
          appBar: state.when(
            initial: () => AppBar(),
            loaded: (adminClub) {
              return AppBar(
                title: Text(adminClub.label),
                leading: Builder(builder: (c) {
                  return IconButton(
                    onPressed: () => Scaffold.of(c).openDrawer(),
                    icon: const Icon(AppIcons.menu_burger),
                  );
                }),
              );
            },
            error: (error) {
              return AppBar(
                title: const Text(''),
                leading: IconButton(
                  onPressed: () => context.pop(),
                  icon: const Icon(
                    AppIcons.menu_burger,
                    size: 18,
                  ),
                ),
              );
            },
          ),
          body: state.when(
            initial: () => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (error) => const SizedBox(),
            loaded: (adminClub) {
              return DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    _buildAdminWorkoutsCountWidget(context, adminClub),
                    _buildTabBar(),
                    const SizedBox(height: 24),
                    Expanded(
                      child: TabBarView(
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          AdminPlannedWorkouts(adminClub: adminClub),
                          AdminStartedWorkouts(adminClub: adminClub),
                          AdminFinishedWorkouts(adminClub: adminClub),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      tabs: const [
        Text('ПРИДУТ'),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text('ТРЕНИРОВКА'),
        ),
        Text('ЗАВЕРШЕНО'),
      ],
      padding: const EdgeInsets.symmetric(horizontal: 16),
      labelColor: AppColors.kOxford,
      labelStyle: AppTypography.kH18.apply(color: AppColors.kOxford),
      unselectedLabelColor: AppColors.kOxford40,
      indicatorColor: AppColors.kPrimaryBlue,
      isScrollable: true,
      indicatorSize: TabBarIndicatorSize.label,
      labelPadding: const EdgeInsets.only(bottom: 12),
      overlayColor: MaterialStateColor.resolveWith(
        (states) => AppColors.kPrimaryBlue.withOpacity(0),
      ),
    );
  }

  Widget _buildAdminWorkoutsCountWidget(
    BuildContext context,
    AdminClub adminClub,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      margin: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 40),
      height: 72,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppColors.kBaseWhite,
        boxShadow: [
          BoxShadow(
            color: AppColors.kOxford20.withOpacity(0.8),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Text(
            adminClub.analyzeInfo?.successVisits.toString() ?? '--',
            style: AppTypography.kNum48.apply(color: AppColors.kOxford60),
          ),
          const Separator(
            height: 40,
            width: 2,
            color: AppColors.kPrimaryBlue,
            margin: EdgeInsets.symmetric(horizontal: 24),
          ),
          RichText(
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              text: 'Посетителей\n',
              style: AppTypography.kH16.apply(color: AppColors.kOxford60),
              children: const [
                TextSpan(
                  text: 'за все время',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
