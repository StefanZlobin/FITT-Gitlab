import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../core/locator/service_locator.dart';
import '../../../../core/superellipse.dart';
import '../../../../core/utils/widget_alignments.dart';
import '../../../../domain/blocs/carousel/carousel_bloc.dart';
import '../../../../domain/blocs/map/map_bloc.dart';
import '../../../../domain/cubits/partner_clubs/partner_clubs_cubit.dart';
import '../../../../domain/entities/club/partner_club.dart';
import '../../../../domain/entities/lat_lng/lat_lng.dart';
import 'club_carousel_card.dart';

class ClubCarousel extends StatefulWidget {
  const ClubCarousel({
    super.key,
  });

  @override
  State<ClubCarousel> createState() => _ClubCarouselState();
}

class _ClubCarouselState extends State<ClubCarousel> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<MapBloc, MapState>(
          bloc: getIt<MapBloc>(),
          listener: (context, state) {
            state.whenOrNull(
              loaded: (mapPoints, visibleRegion, _, filters) {
                getIt<PartnerClubsCubit>().getPartnerClubs(
                  clubFilters: filters,
                  northeast: LatLng(visibleRegion.northeast.latitude,
                      visibleRegion.northeast.longitude),
                  southwest: LatLng(visibleRegion.southwest.latitude,
                      visibleRegion.southwest.longitude),
                );
              },
            );
          },
        ),
        BlocListener<PartnerClubsCubit, PartnerClubsState>(
          bloc: getIt<PartnerClubsCubit>(),
          listener: (context, state) {
            state.whenOrNull(
              loaded: (clubs) => getIt<CarouselBloc>().add(
                CarouselEvent.clubsChanged(clubs),
              ),
            );
          },
        ),
      ],
      child: BlocBuilder<PartnerClubsCubit, PartnerClubsState>(
        bloc: getIt<PartnerClubsCubit>(),
        buildWhen: (previous, current) => current != previous,
        builder: (context, state) {
          return state.when(
            loading: () => const SizedBox(),
            loaded: (partnerClubs) => _buildPartnerClubsWidget(partnerClubs),
            error: (error) => const SizedBox(),
          );
        },
      ),
    );
  }

  Widget _buildPartnerClubsWidget(List<PartnerClub> partnerClubs) {
    if (partnerClubs.isEmpty) {
      return const _BuildEmptyWidget();
    }

    return BottomCenter(
      child: Container(
        height: 144,
        margin: const EdgeInsets.only(bottom: 32),
        child: ScrollSnapList(
          scrollController: getIt<CarouselBloc>().scrollController,
          margin: const EdgeInsets.all(0),
          padding: const EdgeInsets.all(0),
          listPadding: 8,
          curve: Curves.easeOut,
          snapOnScroll: true,
          itemCount: partnerClubs.length + 1,
          itemExtent: 256,
          itemBuilder: (context, index) {
            if (index == partnerClubs.length) {
              return SizedBox(
                width: MediaQuery.of(context).size.width - 256,
              );
            }
            return ClubCarouselCard(partnerClub: partnerClubs[index]);
          },
          onItemFocus: (index) {
            getIt<MapBloc>()
                .add(MapEvent.carouselCardFocused(partnerClubs[index].uuid!));
          },
        ),
      ),
    );
  }
}

class _BuildEmptyWidget extends StatelessWidget {
  const _BuildEmptyWidget();

  @override
  Widget build(BuildContext context) {
    return BottomCenter(
      child: Container(
        height: 144,
        margin: const EdgeInsets.only(left: 16, right: 16, bottom: 32),
        decoration: ShapeDecoration(
          color: AppColors.kOxford40.withOpacity(0.6),
          shape: SuperellipseShape(
            borderRadius: superellipseRadius(24),
          ),
        ),
        child: Center(
          child: Text(
            'Нет клубов \nв выбранной области',
            style: AppTypography.kH14.apply(color: AppColors.kBaseWhite),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
