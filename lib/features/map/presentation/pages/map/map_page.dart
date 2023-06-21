import 'dart:io';

import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/fitt_links.dart';
import 'package:fitt/core/enum/workout_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/widget_alignments.dart';
import 'package:fitt/domain/blocs/app_update/app_update_bloc.dart';
import 'package:fitt/domain/cubits/geolocation/geolocation_cubit.dart';
import 'package:fitt/features/clubs/domain/entities/club/partner_club.dart';
import 'package:fitt/features/map/domain/blocs/is_searching/is_searching_bloc.dart';
import 'package:fitt/features/map/domain/repositories/map/map_repository.dart';
import 'package:fitt/features/map/presentation/pages/map/widgets/club_carousel.dart';
import 'package:fitt/features/map/presentation/pages/map/widgets/map_widget.dart';
import 'package:fitt/features/map/presentation/pages/map/widgets/menu_button.dart';
import 'package:fitt/features/map/presentation/pages/map/widgets/search_field.dart';
import 'package:fitt/features/workouts/domain/blocs/closest_workout/closest_workout_bloc.dart';
import 'package:fitt/features/workouts/presentation/components/closest_workout_card.dart';
import 'package:fitt/presentation/components/menu/menu_widget.dart';
import 'package:fitt/presentation/components/wallet_balance_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:native_updater/native_updater.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppUpdateBloc, AppUpdateState>(
      bloc: getIt<AppUpdateBloc>(),
      listener: (context, state) {
        state.whenOrNull(
          loaded: (needUpdate) {
            if (needUpdate) {
              try {
                NativeUpdater.displayUpdateAlert(
                  context,
                  forceUpdate: false,
                  appStoreUrl: FittLinks.kAppStoreUrl,
                  iOSAlertTitle: 'Доступно обновление',
                  iOSDescription:
                      'Рекомендуем установить последнию версию приложения "FITT"',
                  iOSUpdateButtonLabel: 'Обновить',
                  iOSCloseButtonLabel: 'Закрыть приложение',
                  iOSIgnoreButtonLabel: 'Позже',
                );
              } on Exception catch (e, stackTrace) {
                Sentry.captureException(e, stackTrace: stackTrace);
              }
            }
          },
        );
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        drawer: const MenuWidget(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
        floatingActionButton: StreamBuilder<List<PartnerClub>>(
          stream: getIt<MapRepository>().clubs,
          builder: (context, snapshot) {
            return BlocBuilder<IsSearchingBloc, IsSearchingState>(
              bloc: getIt<IsSearchingBloc>(),
              builder: (context, state) {
                return state.when(
                  initial: (isSearcing) {
                    if (isSearcing) return const SizedBox();

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
            );
          },
        ),
        body: Stack(
          children: [
            const MapWidget(),
            const ClosestWorkoutCard(),
            BlocBuilder<ClosestWorkoutBloc, ClosestWorkoutState>(
              bloc: getIt<ClosestWorkoutBloc>(),
              builder: (context, state) {
                return state.when(
                  initial: () => _wallet(context, 0),
                  loaded: (workout) {
                    if (workout == null) {
                      return TopRight(child: _wallet(context, 0));
                    }
                    if (workout.status == WorkoutStatusEnum.requiresStart ||
                        workout.status == WorkoutStatusEnum.requiersFinish ||
                        workout.status == WorkoutStatusEnum.started ||
                        workout.canStartTime
                            .difference(DateTime.now())
                            .isNegative) {
                      return TopRight(child: _wallet(context, 115));
                    }

                    return TopRight(child: _wallet(context, 52));
                  },
                  error: (_) => TopRight(child: _wallet(context, 0)),
                );
              },
            ),
            const ClubCarousel(),
            const MenuButton(),
            const SearchField(),
          ],
        ),
      ),
    );
  }

  Widget _wallet(BuildContext context, double extraTopMargin) {
    return WalletBalanceWidget(
      margin: EdgeInsets.only(
        top: 126 + extraTopMargin,
        right: 16,
      ),
    );
  }
}
