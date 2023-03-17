import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/core/utils/widget_alignments.dart';
import 'package:fitt/domain/cubits/club/club_cubit.dart';
import 'package:fitt/gen/assets.gen.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:fitt/presentation/pages/partner_club/widgets/button_for_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ClubBatchCard extends StatelessWidget {
  const ClubBatchCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClubCubit, ClubState>(
      bloc: getIt<ClubCubit>(),
      builder: (context, state) {
        return Container(
          width: 240,
          height: 296,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: AppColors.kPrimaryRed,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildIcon(),
              _buildTitle(),
              const SizedBox(height: 4),
              _buildSubtitle(),
              const SizedBox(height: 16),
              _buildBatchList(),
              const Expanded(child: SizedBox()),
              _buildMoveToPageButton(context, state),
              const SizedBox(height: 1),
            ],
          ),
        );
      },
    );
  }

  Widget _buildMoveToPageButton(BuildContext context, ClubState state) {
    return getIt<ClubCubit>().state.when(
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
      loaded: (_, __, ___, ____, _____, ______, batches) {
        if (batches == null) {
          return SizedBox(
            height: 48,
            child: Center(
              child: Text(
                'Пакеты тренировок отсутствуют',
                style: AppTypography.kBody14.apply(color: AppColors.kBaseWhite),
                textAlign: TextAlign.center,
              ),
            ),
          );
        } else if (batches.isEmpty) {
          return SizedBox(
            height: 48,
            child: Center(
              child: Text(
                'Пакеты тренировок отсутствуют',
                style: AppTypography.kBody14.apply(color: AppColors.kBaseWhite),
                textAlign: TextAlign.center,
              ),
            ),
          );
        } else {
          return ButtonForCard(
            isBig: true,
            showIconOnButton: false,
            onPressed: () => context.push(AppRoute.clubBatchList.routeToPath),
            workoutSlot: 'Все предложения',
          );
        }
      },
      error: (_) {
        return ButtonForCard(
          isBig: true,
          showIconOnButton: false,
          onPressed: () => context.push(AppRoute.clubBatchList.routeToPath),
          workoutSlot: 'Все предложения',
        );
      },
    );
  }

  Widget _buildBatchList() {
    return getIt<ClubCubit>().state.when(
          loading: () => const SizedBox(),
          error: (error) => const SizedBox(),
          loaded: (_, __, ___, ____, _____, ______, batches) {
            if (batches == null) {
              return Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.lock,
                      color: AppColors.kBaseWhite,
                      size: 26,
                    ),
                  ],
                ),
              );
            } else if (batches.isEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.lock,
                      color: AppColors.kBaseWhite,
                      size: 26,
                    ),
                  ],
                ),
              );
            } else {
              return SizedBox(
                height: 71,
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return _buildBatchOffer(
                      batches[index].hours ?? 0,
                      batches[index].factPrice,
                    );
                  },
                  separatorBuilder: (_, index) {
                    return const Separator(
                      color: AppColors.kBaseWhite,
                      margin: EdgeInsets.symmetric(vertical: 10),
                    );
                  },
                  itemCount: batches.take(2).length,
                ),
              );
            }
          },
        );
  }

  Widget _buildBatchOffer(int hours, int price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$hours час.',
          style: AppTypography.kH14.apply(color: AppColors.kBaseWhite),
        ),
        Text(
          '$price \u20BD',
          style: AppTypography.kH14.apply(color: AppColors.kBaseWhite),
        ),
      ],
    );
  }

  Text _buildSubtitle() {
    return Text(
      'Выгодные предложения',
      style: AppTypography.kBody14.apply(color: AppColors.kBaseWhite),
      textAlign: TextAlign.start,
    );
  }

  Text _buildTitle() {
    return Text(
      'Пакеты\nчасов'.toUpperCase(),
      style: AppTypography.kH18.apply(color: AppColors.kBaseWhite),
    );
  }

  Widget _buildIcon() {
    return CenterRight(
      child: Assets.images.batch.image(
        color: AppColors.kBaseWhite,
        width: 24,
        height: 24,
      ),
    );
  }
}
