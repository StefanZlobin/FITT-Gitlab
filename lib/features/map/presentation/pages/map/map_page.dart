import 'dart:io';

import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/domain/blocs/notifications/notifications_bloc.dart';
import 'package:fitt/domain/cubits/geolocation/geolocation_cubit.dart';
import 'package:fitt/domain/cubits/workouts/workouts_cubit.dart';
import 'package:fitt/features/clubs/domain/cubits/partner_clubs/partner_clubs_cubit.dart';
import 'package:fitt/features/map/presentation/pages/map/widgets/club_carousel.dart';
import 'package:fitt/features/map/presentation/pages/map/widgets/map_widget.dart';
import 'package:fitt/features/map/presentation/pages/map/widgets/menu_button.dart';
import 'package:fitt/features/map/presentation/pages/map/widgets/search_field.dart';
import 'package:fitt/features/workouts/presentation/components/closest_workout_card.dart';
import 'package:fitt/presentation/components/menu/menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<NotificationsBloc, NotificationsState>(
      bloc: getIt<NotificationsBloc>(),
      listener: (context, state) {
        state.whenOrNull(
          workoutStatusPlanned: () => getIt<WorkoutsCubit>().getWorkouts(),
          workoutStatusStarted: () => getIt<WorkoutsCubit>().getWorkouts(),
          workoutStatusFinished: () => getIt<WorkoutsCubit>().getWorkouts(),
          workoutStatusMissed: () => getIt<WorkoutsCubit>().getWorkouts(),
          workoutStatusFF: () => getIt<WorkoutsCubit>().getWorkouts(),
        );
      },
      child: Scaffold(
        drawer: const MenuWidget(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
        floatingActionButton: BlocBuilder<PartnerClubsCubit, PartnerClubsState>(
          bloc: getIt<PartnerClubsCubit>(),
          builder: (context, state) {
            return state.when(
              loading: () => const SizedBox(),
              error: (error) => const SizedBox(),
              loaded: (clubs) {
                return Container(
                  margin: EdgeInsets.only(
                    bottom: 144 + 16 + (Platform.isAndroid ? 32 : 0),
                  ),
                  height: 48,
                  width: 48,
                  child: FloatingActionButton(
                    onPressed: () async {
                      await getIt<GeolocationCubit>().getCurrentPosition();
                    },
                    shape: SuperellipseShape(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(32),
                        topLeft: Radius.circular(32),
                        bottomLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32),
                      ),
                    ),
                    backgroundColor: AppColors.kBaseWhite,
                    child: BlocBuilder<GeolocationCubit, GeolocationState>(
                      bloc: getIt<GeolocationCubit>(),
                      builder: (context, state) {
                        return state.when(
                          initial: () => const Icon(
                            AppIcons.geo_user,
                            color: AppColors.kPrimaryBlue,
                            size: 18,
                          ),
                          loading: () => const CircularProgressIndicator(),
                          locationDetected: (_) => const Icon(
                            AppIcons.geo_user,
                            color: AppColors.kPrimaryBlue,
                            size: 18,
                          ),
                          locationDetectingError: (_) => const Icon(
                            AppIcons.geo_user,
                            color: AppColors.kPrimaryBlue,
                            size: 18,
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            );
          },
        ),
        body: Stack(
          children: const [
            MapWidget(),
            ClosestWorkoutCard(),
            ClubCarousel(),
            MenuButton(),
            SearchField(),
          ],
        ),
      ),
    );
  }
}
