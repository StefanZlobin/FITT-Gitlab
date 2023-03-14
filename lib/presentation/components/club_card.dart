import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/superellipse.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/domain/entities/club/partner_club.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:flutter/material.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class ClubCard extends StatelessWidget {
  const ClubCard({
    super.key,
    required this.club,
    required this.forPurchasedBatchPage,
    required this.onFavoriteButtonPressed,
    required this.onCardPressed,
    required this.isFavorite,
  });

  final PartnerClub club;
  final bool forPurchasedBatchPage;
  final VoidCallback onFavoriteButtonPressed;
  final VoidCallback onCardPressed;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: onCardPressed,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildClubImage(),
              const SizedBox(width: 16),
              _buildClubInformation(context),
            ],
          ),
        ),
        Positioned(
          right: 0,
          child: _buildFavoriteButton(),
        ),
      ],
    );
  }

  Widget _buildClubInformation(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width - 16 - 96 - 32 - 40,
          margin: const EdgeInsets.only(top: 5),
          child: _buildClubLabel(),
        ),
        const Separator(
          height: 2,
          width: 40,
          color: AppColors.kPrimaryBlue,
          margin: EdgeInsets.symmetric(vertical: 12),
        ),
        _buildClubAddress(context),
        const SizedBox(height: 4),
        _buildClubMinPrice(),
      ],
    );
  }

  Text _buildClubMinPrice() {
    return Text(
      'Тренировки от ${club.minPrice} \u20BD',
      style: AppTypography.kBody14.apply(color: AppColors.kOxford60),
      overflow: TextOverflow.ellipsis,
    );
  }

  SizedBox _buildClubAddress(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 16 - 96 - 32,
      child: Text(
        club.address!.shortAddress,
        style: AppTypography.kBody14.apply(color: AppColors.kOxford60),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _buildFavoriteButton() {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onFavoriteButtonPressed,
      child: Container(
        padding: const EdgeInsets.only(left: 20, bottom: 20, top: 5),
        child: Icon(
          !isFavorite ? AppIcons.favorite_outlined_rounded : AppIcons.favorite_rounded,
          size: 20,
          color: !isFavorite ? AppColors.kOxford60 : AppColors.kPrimaryBlue,
        ),
      ),
    );
  }

  SizedBox _buildClubLabel() {
    return SizedBox(
      width: 190,
      child: Text(
        club.label!.toUpperCase(),
        style: AppTypography.kH18.apply(color: AppColors.kBaseBlack),
        maxLines: 2,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  CachedNetworkImage _buildClubImage() {
    return CachedNetworkImage(
      fit: BoxFit.cover,
      imageUrl: club.photos?.first.medium ?? '',
      imageBuilder: (context, imageProvider) {
        return Container(
          width: 96,
          height: 96,
          decoration: ShapeDecoration(
            shape: SuperellipseShape(
              borderRadius: superellipseRadius(24),
            ),
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, dynamic error) {
        return Container(
          width: 96,
          height: 96,
          decoration: ShapeDecoration(
            shape: SuperellipseShape(borderRadius: superellipseRadius(24)),
            color: AppColors.kOxford20,
          ),
        );
      },
    );
  }
}
