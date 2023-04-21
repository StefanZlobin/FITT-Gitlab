import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/enum/time_slice_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/domain/blocs/analytics_filtering/analytics_filtering_bloc.dart';
import 'package:fitt/domain/cubits/admin_club/admin_club_cubit.dart';
import 'package:fitt/domain/entities/admin_club/admin_club.dart';
import 'package:fitt/presentation/components/menu/widget/admin_menu_tile.dart';
import 'package:fitt/presentation/components/menu/widget/user_menu_tile.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:fitt/presentation/components/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ManagerMenuWidget extends StatelessWidget {
  const ManagerMenuWidget({
    super.key,
    required this.adminClubs,
  });

  final List<AdminClub> adminClubs;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const UserAvatar(isAdminPage: true),
        const Separator(),
        AdminMenuTile(
          title: Text(adminClubs.first.organization.label),
          subtitle: const Text('Управляющий'),
        ),
        const Separator(),
        UserMenuTile(
          title: const Text('Аналитика'),
          onPressed: () {
            getIt<AnalyticsFilteringBloc>()
                .add(const AnalyticsFilteringEvent.timeSliceChanged(
              timeSlice: TimeSliceEnum.week,
            ));
            context.push(AppRoute.analytics.routeToPath);
          },
        ),
        UserMenuTile(
          title: const Text('Посетители'),
          onPressed: () {
            getIt<AdminClubCubit>().getAdminClub(
              adminClubUuid: adminClubs.first.uuid!,
            );
            context.push(AppRoute.adminWorkoutList.routeToPath);
          },
        ),
        const Expanded(child: SizedBox()),
        UserMenuTile(
          title: Text(
            'Выйти из профиля',
            style: AppTypography.kBody14.apply(color: AppColors.kOxford40),
          ),
        ),
      ],
    );
  }
}
