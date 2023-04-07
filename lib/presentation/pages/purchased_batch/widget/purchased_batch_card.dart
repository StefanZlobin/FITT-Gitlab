import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/core/utils/widget_alignments.dart';
import 'package:fitt/domain/cubits/purchased_batch/purchased_batch_cubit.dart';
import 'package:fitt/domain/entities/batch/user_batch.dart';
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
              //TODO: получать реальный id пакета
              onTap: () => getIt<PurchasedBatchCubit>()
                  .cancelPurchasedBatch(userBatch.uuid, userBatch),
              child: const Icon(
                Icons.delete_forever,
                color: AppColors.kBaseWhite,
                size: 28,
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
                text: '22',
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
              '13 дней'.toUpperCase(),
              style: AppTypography.kH18.apply(color: AppColors.kBaseWhite),
            ),
            const SizedBox(height: 4),
            Text(
              'до 25 марта 2023',
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
