import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/enum/user_role_enum.dart';
import '../../../core/locator/service_locator.dart';
import '../../../core/utils/app_icons.dart';
import '../../../core/utils/functions/app_modal_bottom_sheet.dart';
import '../../../domain/cubits/geolocation/geolocation_cubit.dart';
import '../../../domain/cubits/modal_bottom_sheet/modal_bottom_sheet_cubit.dart';
import '../../../domain/cubits/notification/notification_cubit.dart';
import '../../../domain/cubits/partner_clubs/partner_clubs_cubit.dart';
import '../../../domain/cubits/workouts/workouts_cubit.dart';
import '../../components/menu/menu_widget.dart';
import '../../components/modals/workout_finish_modal_bottom_sheet.dart';
import '../../components/modals/workout_start_modal_bottom_sheet.dart';
import '../../components/workout/closest_workout_card.dart';
import 'widgets/club_carousel.dart';
import 'widgets/map_widget.dart';
import 'widgets/menu_button.dart';
import 'widgets/search_field.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    final notificationBloc = getIt<NotificationCubit>();

    return BlocListener<NotificationCubit, NotificationState>(
      bloc: notificationBloc,
      listener: (context, state) {
        state.mapOrNull(
          changeWorkout: (message) {
            if (message.message.data['user_type'] ==
                UserTypeEnum.CUSTOMER.name) {
              if (message.message.data['status'] == 'REQUIRED_START') {
                getIt<ModalBottomSheetCubit>()
                    .setLoadingStateModalBottomSheet();
                showAppModalBottomSheet(
                    context, const WorkoutStartModalBottomSheet());
              } else if (message.message.data['status'] == 'START') {
                getIt<ModalBottomSheetCubit>().setLoadedStateModalBottomSheet();
                getIt<WorkoutsCubit>().getWorkouts();
              } else if (message.message.data['status'] == 'REQUIRED_FINISH') {
                getIt<ModalBottomSheetCubit>()
                    .setLoadingStateModalBottomSheet();
                showAppModalBottomSheet(
                    context, const WorkoutFinishModalBottomSheet());
              } else if (message.message.data['status'] == 'FINISH') {
                getIt<ModalBottomSheetCubit>().setLoadedStateModalBottomSheet();
                getIt<WorkoutsCubit>().getWorkouts();
              }
            }
          },
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
                if (clubs.isEmpty) {
                  return const SizedBox();
                }
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
