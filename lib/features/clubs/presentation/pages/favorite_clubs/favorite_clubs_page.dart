import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/features/clubs/domain/blocs/partner_clubs_favorite/partner_clubs_favorite_bloc.dart';
import 'package:fitt/features/clubs/presentation/components/club_card.dart';
import 'package:fitt/features/clubs/presentation/pages/favorite_clubs/widgets/club_sorting.dart';
import 'package:fitt/features/clubs/presentation/pages/favorite_clubs/widgets/facilities_filters_in_row.dart';
import 'package:fitt/presentation/app.dart';
import 'package:fitt/presentation/components/empty_state_widget.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FavoriteClubsPage extends StatelessWidget {
  const FavoriteClubsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PartnerClubsFavoriteBloc, PartnerClubsFavoriteState>(
      bloc: getIt<PartnerClubsFavoriteBloc>(),
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
                  onPressed: () => context.pop(),
                  icon: const Icon(AppIcons.arr_big_left),
                ),
              );
            },
            error: (_) => AppBar(title: const Text('Избранные клубы')),
          ),
          body: state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loaded: (clubs, isFacilitiesUpdated) {
              if (clubs.isEmpty && !isFacilitiesUpdated) {
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
                  const FacilitiesFiltersInRow(),
                  if (clubs.isNotEmpty) const ClubSorting(),
                  if (clubs.isEmpty && isFacilitiesUpdated)
                    Padding(
                      padding: const EdgeInsets.only(top: 100, left: 16),
                      child: GestureDetector(
                        onTap: () => getIt<PartnerClubsFavoriteBloc>().add(
                          const PartnerClubsFavoriteEvent.resetFacilities(),
                        ),
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
                                style: TextStyle(color: AppColors.kPrimaryBlue),
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
                              },
                            ),
                            onFavoriteButtonPressed: () {
                              getIt<PartnerClubsFavoriteBloc>().add(
                                PartnerClubsFavoriteEvent.setFavorite(
                                  index: index,
                                  favorite: clubs[index].isFavorite!,
                                  clubUuid: clubs[index].uuid!,
                                ),
                              );
                            },
                          );
                        },
                        separatorBuilder: (_, __) => const Separator(
                          margin: EdgeInsets.symmetric(vertical: 24),
                        ),
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
    );
  }
}
