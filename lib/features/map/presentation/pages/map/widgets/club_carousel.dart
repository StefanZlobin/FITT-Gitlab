import 'package:fitt/features/clubs/domain/entities/club/partner_club.dart';
import 'package:fitt/features/map/domain/blocs/carousel/carousel_bloc.dart';
import 'package:fitt/features/map/domain/blocs/map/map_bloc.dart';
import 'package:fitt/features/map/domain/repositories/map/map_repository.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/constants/app_typography.dart';
import '../../../../../../core/locator/service_locator.dart';
import '../../../../../../core/superellipse.dart';
import '../../../../../../core/utils/widget_alignments.dart';
import 'club_carousel_card.dart';

class ClubCarousel extends StatelessWidget {
  const ClubCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<PartnerClub>>(
      stream: getIt<MapRepository>().clubs,
      builder: (context, snapshot) {
        final clubs = snapshot.data ?? [];

        if (clubs.isEmpty) return const _BuildEmptyWidget();

        return _buildPartnerClubsWidget(clubs);
      },
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
          initialIndex: 0,
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
                width: MediaQuery.of(context).size.width -
                    MediaQuery.of(context).size.width +
                    50,
              );
            }
            return ClubCarouselCard(partnerClub: partnerClubs[index]);
          },
          onItemFocus: (index) {
            if (partnerClubs.length == index) return;
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
