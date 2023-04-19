// ignore_for_file: unnecessary_null_comparison

import 'package:clock/clock.dart';
import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/superellipse.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/domain/cubits/club/club_cubit.dart';
import 'package:fitt/domain/entities/club/partner_club.dart';
import 'package:fitt/presentation/pages/partner_club/widgets/club_batch_card.dart';
import 'package:fitt/presentation/pages/partner_club/widgets/club_photo_slider.dart';
import 'package:fitt/presentation/pages/partner_club/widgets/one_time_workout_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:marquee/marquee.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class ClubPage extends StatelessWidget with UserMixin {
  const ClubPage({
    super.key,
    required this.clubUuid,
  });

  final String clubUuid;

  @override
  Widget build(BuildContext context) {
    getIt<ClubCubit>().getPartnerClub(clubUuid: clubUuid);

    return BlocBuilder<ClubCubit, ClubState>(
      bloc: getIt<ClubCubit>(),
      builder: (context, state) {
        return Scaffold(
          appBar: state.when(
            loading: () => null,
            loaded: (club, _, __, ___, ____, _____, ______) =>
                _buildAppBarWidget(context, club),
            error: (error) => null,
          ),
          body: state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (
              club,
              lastAvailableDateSelected,
              activity,
              dateSlots,
              timeSlots,
              durationSlots,
              batches,
            ) =>
                _buildPartnerClubPage(
              context,
              club,
              dateSlots,
              timeSlots,
              durationSlots,
            ),
            error: (error) => const Text('error'),
          ),
        );
      },
    );
  }

  AppBar _buildAppBarWidget(BuildContext context, PartnerClub club) {
    return AppBar(
      title: club.label!.length <= 20
          ? Text(club.label!.toUpperCase())
          : Container(
              height: 30,
              margin: const EdgeInsets.only(right: 20),
              child: Marquee(
                text: club.label!.toUpperCase(),
                style: AppTypography.kH16.apply(color: AppColors.kOxford),
                blankSpace: 150,
                startAfter: const Duration(seconds: 3),
                pauseAfterRound: const Duration(seconds: 5),
                showFadingOnlyWhenScrolling: false,
                fadingEdgeEndFraction: 1,
              ),
            ),
      leading: IconButton(
        onPressed: () => context.pop(),
        icon: const Icon(
          AppIcons.close_big,
          size: 16,
        ),
      ),
      actions: [
        if (userSnapshot?.isLoggedIn ?? false)
          GestureDetector(
            onTap: () {
              getIt<ClubCubit>().setFavorite(
                favorite: club.isFavorite ?? false,
                clubUuid: clubUuid,
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(
                club.isFavorite ?? false
                    ? AppIcons.favorite_rounded
                    : AppIcons.favorite_outlined_rounded,
                size: 20,
                color: club.isFavorite ?? false ? AppColors.kPrimaryBlue : null,
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildPartnerClubPage(
    BuildContext context,
    PartnerClub club,
    FilterGroup<bool, ToggledFilter<DateTime>>? dateSlots,
    FilterGroup<bool, ToggledFilter<DateTime>>? timeSlots,
    FilterGroup<bool, ToggledFilter<Duration>>? durationSlots,
  ) {
    final List<String>? clubUrlImages =
        club.photos?.map((e) => e.large).toList();

    return ListView(
      primary: true,
      physics: const AlwaysScrollableScrollPhysics(),
      children: [
        ClubPhotoSlider(clubUrlImages: clubUrlImages ?? []),
        _buildClubAddressSection(club.address!.shortAddress),
        _buildClubSheduleSection(club),
        _buildClubCardsSection(),
        _buildInformationTextButton(context),
        _buildClubFacilitiesSection(club),
      ],
    );
  }

  GestureDetector _buildInformationTextButton(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(AppRoute.clubInformation.routeToPath),
      child: Container(
        height: 48,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: ShapeDecoration(
          color: AppColors.kBaseWhite,
          shape: SuperellipseShape(
            borderRadius: superellipseRadius(12),
            side: const BorderSide(color: AppColors.kOxford20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Информация о клубе',
              style: AppTypography.kBody14.apply(color: AppColors.kBaseBlack),
            ),
            const Icon(
              AppIcons.arr_right,
              color: AppColors.kOxford60,
              size: 10,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildClubFacilitiesSection(PartnerClub club) {
    final facilities = club.facilities!;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.only(bottom: 48),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          for (final facility in facilities) ...[
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 9.5),
              decoration: ShapeDecoration(
                color: AppColors.kOxford.withOpacity(0),
                shape: SuperellipseShape(
                  borderRadius: superellipseRadius(12),
                  side: const BorderSide(color: AppColors.kOxford20),
                ),
              ),
              child: Text(
                facility.title,
                style: AppTypography.kBody14.apply(
                  color: AppColors.kOxford40,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  SizedBox _buildClubCardsSection() {
    return SizedBox(
      height: 296,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        primary: false,
        children: const [
          OneTimeWorkoutCard(),
          SizedBox(width: 8),
          ClubBatchCard(),
        ],
      ),
    );
  }

  Widget _buildClubAddressSection(String address) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Text(
          //  'м. Гражданский проспект',
          //  style: AppTypography.kBody12.apply(color: AppColors.kBaseBlack),
          //),
          //const SizedBox(height: 4),
          Text(
            address,
            style: AppTypography.kBody14.apply(color: AppColors.kBaseBlack),
          ),
        ],
      ),
    );
  }

  Widget _buildClubSheduleSection(PartnerClub club) {
    final now = clock.now();
    final currentWorkSchedule =
        club.workSchedule!.firstWhere((e) => e.date?.day == now.day);

    final DateTime? closeAt = currentWorkSchedule.endDateTime;

    final DateTime? openAt = currentWorkSchedule.startDateTime;

    final bool isOpen;
    // ignore: avoid_bool_literals_in_conditional_expressions
    isOpen = closeAt == null || openAt == null
        ? false
        : now.isBefore(closeAt) && now.isAfter(openAt);

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Text.rich(
        TextSpan(
          style: !isOpen
              ? AppTypography.kBody14.apply(color: AppColors.kPrimaryRed)
              : AppTypography.kBody14.apply(color: AppColors.kExtraGreen),
          text: !isOpen ? 'Сейчас закрыто' : 'Сейчас открыто',
          children: [
            TextSpan(
              text: '  -  ',
              style: AppTypography.kBody14.apply(color: AppColors.kBaseBlack),
            ),
            TextSpan(
              text: isOpen
                  ? 'Закроется в ${DateFormat.Hm().format(closeAt)}'
                  : 'Откроется в ${DateFormat.Hm().format(openAt ?? DateTime.now())}',
              style: AppTypography.kBody14.apply(color: AppColors.kBaseBlack),
            ),
          ],
        ),
      ),
    );
  }
}
