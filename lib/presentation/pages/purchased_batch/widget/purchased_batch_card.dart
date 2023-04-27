import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/core/utils/functions/serialization.dart';
import 'package:fitt/core/utils/widget_alignments.dart';
import 'package:fitt/features/clubs/domain/entities/batch/user_batch.dart';
import 'package:fitt/features/workouts/presentation/modals/cancel_batch_modal_bottom_sheet.dart';
import 'package:fitt/gen/assets.gen.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PurchasedBatchCard extends StatelessWidget {
  const PurchasedBatchCard({
    super.key,
    required this.userBatch,
  });

  final UserBatch userBatch;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppColors.kPrimaryRed,
      ),
      child: Stack(
        children: [
          Column(
            children: [
              _buildBatchDurationInfo(),
              Separator(
                margin: const EdgeInsets.symmetric(vertical: 17),
                color: AppColors.kBaseWhite.withOpacity(.6),
              ),
              _buildClubWithBatchInfo(userBatch, context),
            ],
          ),
          TopRight(
            child: GestureDetector(
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
                    return CancelBatchModalBottomSheet(userBatch: userBatch);
                  },
                );
              },
              child: Assets.images.dots.image(
                color: AppColors.kBaseWhite,
                width: 28,
                height: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBatchDurationInfo() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            text: 'Осталось часов\n',
            style: AppTypography.kBody14.apply(color: AppColors.kBaseWhite),
            children: [
              TextSpan(
                text: '${userBatch.availableHours.floor()}',
                style: AppTypography.kH86.apply(color: AppColors.kBaseWhite),
              ),
            ],
          ),
        ),
        Separator(
          width: 1,
          height: 69,
          color: AppColors.kBaseWhite.withOpacity(.6),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Срок действия пакета',
              style: AppTypography.kBody14.apply(color: AppColors.kBaseWhite),
            ),
            const SizedBox(height: 4),
            Text(
              '${int.parse(userBatch.duration.split(' ')[0])} дней'
                  .toUpperCase(),
              style: AppTypography.kH18.apply(color: AppColors.kBaseWhite),
            ),
            const SizedBox(height: 4),
            Text(
              'до ${DateTimeUtils.dateFormatDetailed.format(dateFromString(userBatch.expireAt))}',
              style: AppTypography.kBody14
                  .apply(color: AppColors.kBaseWhite.withOpacity(.6)),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildClubWithBatchInfo(UserBatch userBatch, BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      minVerticalPadding: 0,
      visualDensity: const VisualDensity(vertical: -4),
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.kBaseWhite, width: 2),
          color: AppColors.kOxford60,
          image: const DecorationImage(
            image: NetworkImage(''),
            filterQuality: FilterQuality.high,
            opacity: .5,
          ),
        ),
      ),
      title: Text(
        userBatch.club.clubLabel.toUpperCase(),
        style: AppTypography.kH18.apply(color: AppColors.kBaseWhite),
      ),
      subtitle: Text(
        userBatch.club.address.shortAddress,
        style: AppTypography.kBody14.apply(
          color: AppColors.kBaseWhite.withOpacity(.7),
        ),
        overflow: TextOverflow.ellipsis,
      ),
      trailing: const Icon(
        AppIcons.arr_big_right,
        color: AppColors.kBaseWhite,
        size: 18,
      ),
      onTap: () => context.pushNamed(
        AppRoute.club.routeToPath,
        params: {
          'clubUuid': userBatch.club.clubUuid,
        },
      ),
    );
  }
}
