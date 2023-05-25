import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/core/utils/widget_alignments.dart';
import 'package:fitt/features/clubs/domain/cubits/club/club_cubit.dart';
import 'package:fitt/features/clubs/domain/entities/club/partner_club.dart';
import 'package:fitt/presentation/components/batch_available_hours.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class ClubCarouselCard extends StatelessWidget {
  const ClubCarouselCard({
    super.key,
    required this.partnerClub,
  });

  final PartnerClub partnerClub;

  @override
  Widget build(BuildContext context) {
    final partnerClubAddress = partnerClub.address!.shortAddress
        .split(', ')
        .whereNotIndexed((index, element) => index == 0)
        .join(', ');
    return GestureDetector(
      onTap: () {
        getIt<ClubCubit>().getPartnerClub(clubUuid: partnerClub.uuid!);
        context.pushNamed(AppRoute.club.routeToPath, params: {
          'clubUuid': partnerClub.uuid!,
        });
      },
      child: Container(
        width: 256,
        height: 144,
        margin: const EdgeInsets.only(right: 8),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: SuperellipseShape(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(44),
              topLeft: Radius.circular(44),
              bottomLeft: Radius.circular(44),
              bottomRight: Radius.circular(44),
            ),
          ),
        ),
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl: partnerClub.photos?.first.medium ?? '',
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, dynamic error) {
                return Container(
                  decoration: ShapeDecoration(
                    color: AppColors.kOxford20,
                    shape: SuperellipseShape(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(44),
                        topLeft: Radius.circular(44),
                        bottomLeft: Radius.circular(44),
                        bottomRight: Radius.circular(44),
                      ),
                    ),
                  ),
                );
              },
              imageBuilder: (context, imageProvider) {
                return Container(
                  decoration: ShapeDecoration(
                    shape: SuperellipseShape(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(44),
                        topLeft: Radius.circular(44),
                        bottomLeft: Radius.circular(44),
                        bottomRight: Radius.circular(44),
                      ),
                    ),
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        partnerClub.photos!.first.medium,
                      ),
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
            Container(
              decoration: ShapeDecoration(
                shape: SuperellipseShape(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(44),
                    topLeft: Radius.circular(44),
                    bottomLeft: Radius.circular(44),
                    bottomRight: Radius.circular(44),
                  ),
                ),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    partnerClub.label!.replaceAll(' ', '\u{000A0}'),
                    maxLines: 1,
                    style:
                        AppTypography.kH18.apply(color: AppColors.kBaseWhite),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    partnerClubAddress.replaceAll(' ', '\u{000A0}'),
                    maxLines: 1,
                    style: AppTypography.kBody14
                        .apply(color: AppColors.kBaseWhite),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Positioned(
              left: 16,
              top: 16,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: ShapeDecoration(
                  shape: SuperellipseShape(
                    side: const BorderSide(color: AppColors.kBaseWhite),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(16),
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  color: AppColors.kBaseBlack.withOpacity(.5),
                ),
                child: Text(
                  'от ${partnerClub.minPrice} \u20BD',
                  style:
                      AppTypography.kBody12.apply(color: AppColors.kBaseWhite),
                ),
              ),
            ),
            Positioned(
              left: 16,
              top: 16,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: ShapeDecoration(
                  shape: SuperellipseShape(
                    side: const BorderSide(color: AppColors.kBaseWhite),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(16),
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  color: AppColors.kBaseWhite.withOpacity(.4),
                ),
                child: Text(
                  'от ${partnerClub.minPrice} \u20BD',
                  style:
                      AppTypography.kBody12.apply(color: AppColors.kBaseWhite),
                ),
              ),
            ),
            if (partnerClub.batchHoursAvailable != 0)
              Padding(
                padding: const EdgeInsets.only(top: 12, right: 12),
                child: TopRight(
                  child: BatchAvailableHours(
                    isBig: false,
                    hours: partnerClub.batchHoursAvailable?.toInt() ?? 0,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
