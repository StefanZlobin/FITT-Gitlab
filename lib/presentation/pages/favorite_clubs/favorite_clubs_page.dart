import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/enum/club_sorting_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/domain/cubits/filtering/filtering_cubit.dart';
import 'package:fitt/domain/cubits/partner_clubs_favorite/partner_clubs_favorite_cubit.dart';
import 'package:fitt/domain/cubits/resource/resource_cubit.dart';
import 'package:fitt/domain/cubits/sorting/sorting_cubit.dart';
import 'package:fitt/domain/entities/facility/facility.dart';
import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:fitt/presentation/app.dart';
import 'package:fitt/presentation/components/club_card.dart';
import 'package:fitt/presentation/components/empty_state_widget.dart';
import 'package:fitt/presentation/components/modals/filter_modal_bottom_sheet.dart';
import 'package:fitt/presentation/components/modals/sorting_modal_bottom_sheet.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class FavoriteClubsPage extends StatelessWidget {
  const FavoriteClubsPage({super.key});

  @override
  Widget build(BuildContext context) {
    getIt<SortingCubit>()
        .setClubSortingEnum(clubSortingEnum: ClubSortingEnum.nearest);

    return MultiBlocListener(
      listeners: [
        BlocListener<FilteringCubit, FilteringState>(
          bloc: getIt<FilteringCubit>(instanceName: 'favorite'),
          listener: (context, state) {
            state.whenOrNull(
              loaded: (filters, selectedFacilities, __, ___, ____,
                  activeFacilitiesList) {
                final filters = ClubFilters(
                  facilities: activeFacilitiesList,
                  favorite: true,
                );
                getIt<PartnerClubsFavoriteCubit>()
                    .getPartnerClubs(clubFilters: filters);
              },
            );
          },
        ),
        BlocListener<SortingCubit, SortingState>(
          bloc: getIt<SortingCubit>(),
          listener: (context, state) {
            state.whenOrNull(
              clubSorting: (clubSortingEnum) =>
                  getIt<PartnerClubsFavoriteCubit>()
                      .getPartnerClubs(clubSorting: clubSortingEnum),
            );
          },
        ),
        BlocListener<ResourceCubit, ResourceState>(
          bloc: getIt<ResourceCubit>(instanceName: 'favorite'),
          listener: (context, state) {
            state.whenOrNull(
                loaded: (filters) => getIt<FilteringCubit>(
                      instanceName: 'favorite',
                    ).setFilters(filters: filters));
          },
        ),
      ],
      child: BlocBuilder<PartnerClubsFavoriteCubit, PartnerClubsFavoriteState>(
        bloc: getIt<PartnerClubsFavoriteCubit>(),
        builder: (context, state) {
          return Scaffold(
            appBar: state.when(
              initial: () => AppBar(title: const Text('Избранные клубы')),
              loaded: (clubs, _) {
                return AppBar(
                  title: Text(
                    L.of(context).clubFavouriteListPageTitle(clubs.length),
                  ),
                  leading: IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: const Icon(AppIcons.arr_big_left),
                  ),
                );
              },
              error: (_) => AppBar(title: const Text('Избранные клубы')),
            ),
            body: state.when(
              initial: () => const Center(child: CircularProgressIndicator()),
              loaded: (clubs, isFilterUpdated) {
                if (clubs.isEmpty && !isFilterUpdated) {
                  return const EmptyStateWidget(
                    mainText:
                        'Вы не добавили ни одного клуба в избранное. Чтобы добавить клуб в избранное нажмите:',
                    icon: Padding(
                      padding: EdgeInsets.only(bottom: 24),
                      child: Icon(
                        AppIcons.favorite_outlined,
                        color: AppColors.kOxford40,
                        size: 32,
                      ),
                    ),
                    offerText: 'Подобрать клуб',
                  );
                }
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildFiltersRowWidget(),
                    if (clubs.isNotEmpty) _buildSortingWidget(context),
                    if (clubs.isEmpty && isFilterUpdated)
                      Padding(
                        padding: const EdgeInsets.only(top: 100, left: 16),
                        child: GestureDetector(
                          onTap: () =>
                              getIt<FilteringCubit>(instanceName: 'favorite')
                                  .resetFilters(),
                          child: RichText(
                            text: TextSpan(
                              style: AppTypography.kH14
                                  .apply(color: AppColors.kPrimaryRed),
                              children: const [
                                TextSpan(
                                  text:
                                      'Ни один клуб не подходит под условие фильтрации ',
                                ),
                                TextSpan(
                                  text: 'Сбросить фильтры',
                                  style:
                                      TextStyle(color: AppColors.kPrimaryBlue),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    else
                      Container(
                        height: MediaQuery.of(context).size.height -
                            (48 + 24 + 36 + 18 + 89 + 28 + 10 + 3),
                        margin: const EdgeInsets.only(top: 28),
                        child: ListView.separated(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          itemBuilder: (context, index) {
                            return ClubCard(
                              club: clubs[index],
                              forPurchasedBatchPage: false,
                              isFavorite: clubs[index].isFavorite!,
                              onCardPressed: () => context.pushNamed(
                                  AppRoute.club.routeToPath,
                                  params: {
                                    'clubUuid': clubs[index].uuid!,
                                  }),
                              onFavoriteButtonPressed: () {
                                getIt<PartnerClubsFavoriteCubit>().setFavorite(
                                  index: index,
                                  favorite: clubs[index].isFavorite!,
                                  clubUuid: clubs[index].uuid!,
                                );
                              },
                            );
                          },
                          separatorBuilder: (_, __) => const Separator(
                              margin: EdgeInsets.symmetric(vertical: 24)),
                          itemCount: clubs.length,
                        ),
                      ),
                  ],
                );
              },
              error: (error) => const SizedBox(),
            ),
          );
        },
      ),
    );
  }

  Widget _buildSortingWidget(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          useRootNavigator: true,
          backgroundColor: AppColors.kBaseWhite,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          context: context,
          builder: (context) {
            return const SortingModalBottomSheet();
          },
        );
      },
      child: BlocBuilder<SortingCubit, SortingState>(
        bloc: getIt<SortingCubit>(),
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            workoutSorting: (_) => const SizedBox(),
            clubSorting: (clubSortingEnum) {
              return Row(
                children: [
                  const SizedBox(width: 16),
                  Text(
                    clubSortingEnum.sortingToString(clubSortingEnum),
                    style:
                        AppTypography.kH16.apply(color: AppColors.kPrimaryBlue),
                  ),
                  const SizedBox(width: 8.0),
                  const Icon(
                    AppIcons.arr_down,
                    size: 12,
                    color: AppColors.kPrimaryBlue,
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildFiltersRowWidget() {
    return BlocBuilder<FilteringCubit, FilteringState>(
      bloc: getIt<FilteringCubit>(instanceName: 'favorite'),
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          loaded: (filters, selectedFacilities, _, __, isPriceUpdated,
              activeFacilities) {
            return Container(
              height: 48,
              margin: const EdgeInsets.only(top: 24, bottom: 36),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: selectedFacilities.length + 2,
                separatorBuilder: (context, index) => const SizedBox(width: 8),
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return _buildOpenFiltersButton(
                      context,
                      isPriceUpdated,
                      activeFacilities ?? <Facility>[],
                    );
                  }
                  if (index == selectedFacilities.length + 1) {
                    return const SizedBox();
                  }

                  final keys = selectedFacilities.keys.toList();
                  final facility = keys[index - 1];
                  final isFacilityActive =
                      selectedFacilities[facility] ?? false;

                  return _buildFacilityButton(
                    facility,
                    filters,
                    isFacilityActive,
                  );
                },
              ),
            );
          },
          error: (error) => Center(
            child: Text(error),
          ),
        );
      },
    );
  }

  Widget _buildFacilityButton(
      Facility facility, ClubFilters filters, bool isFacilityActive) {
    return GestureDetector(
      onTap: () {
        getIt<FilteringCubit>(instanceName: 'favorite').selectFacility(
          facility: facility,
          filters: filters,
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 15.5,
        ),
        decoration: ShapeDecoration(
          color: isFacilityActive ? AppColors.kPrimaryBlue : Colors.white,
          shape: SuperellipseShape(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(24),
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
              topLeft: Radius.circular(24),
            ),
            side: isFacilityActive
                ? BorderSide(color: AppColors.kOxford20.withOpacity(0))
                : const BorderSide(color: AppColors.kOxford20),
          ),
        ),
        child: Center(
          child: Text(
            facility.title,
            style: AppTypography.kBody14.apply(
              color:
                  isFacilityActive ? AppColors.kBaseWhite : AppColors.kOxford40,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOpenFiltersButton(
    BuildContext context,
    bool isPriceUpdated,
    List<Facility> activeFacilities,
  ) {
    final countActiveFacilitie = activeFacilities.length;

    return GestureDetector(
      onTap: () => showModalBottomSheet<void>(
        context: context,
        isScrollControlled: true,
        useRootNavigator: true,
        backgroundColor: AppColors.kBaseWhite.withOpacity(0),
        builder: (context) => const FilterModalBottomSheet(),
      ),
      child: Container(
        height: 48,
        width: 48,
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
        child: Center(
          child: Badge(
            backgroundColor:
                countActiveFacilitie + (isPriceUpdated ? 1 : 0) == 0
                    ? AppColors.kPrimaryBlue.withOpacity(0)
                    : AppColors.kPrimaryBlue,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            label: countActiveFacilitie + (isPriceUpdated ? 1 : 0) == 0
                ? const SizedBox()
                : Text(
                    '${countActiveFacilitie + (isPriceUpdated ? 1 : 0)}',
                    style: AppTypography.kBody10
                        .apply(color: AppColors.kBaseWhite),
                  ),
            child: const Icon(
              AppIcons.filters,
              size: 18,
              color: AppColors.kOxford60,
            ),
          ),
        ),
      ),
    );
  }
}
