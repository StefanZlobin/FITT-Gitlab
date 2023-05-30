import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/superellipse.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/features/clubs/domain/cubits/club/club_cubit.dart';
import 'package:fitt/features/clubs/domain/entities/batch/batch.dart';
import 'package:fitt/features/clubs/domain/entities/club/partner_club.dart';
import 'package:fitt/presentation/app.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class ClubBatchesPage extends StatelessWidget {
  const ClubBatchesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClubCubit, ClubState>(
      bloc: getIt<ClubCubit>(),
      builder: (context, state) {
        return Scaffold(
          appBar: state.when(
            loading: () => null,
            loaded: (club, _, __, ___, ____, _____, ______) =>
                _buildAppBarWidget(club, context),
            error: (error) => null,
          ),
          body: state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (club, __, ___, ____, _____, ______, batches) =>
                _buildBatchesCard(context, batches!),
            error: (error) => const SizedBox(),
          ),
        );
      },
    );
  }

  Widget _buildBatchesCard(BuildContext context, List<Batch> batches) {
    return ListView(
      primary: true,
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 50),
      children: [
        _buildDisclaimerWidget(),
        const SizedBox(height: 24),
        for (var batch in batches) ...[
          _buildBatchCard(context, batch),
          const SizedBox(height: 16),
        ],
        const SizedBox(height: 8),
      ],
    );
  }

  Widget _buildBatchCard(BuildContext context, Batch batch) {
    return Container(
      width: 343,
      height: 179,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppColors.kPrimaryRed,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Text(
                    '${batch.hours}',
                    style:
                        AppTypography.kH36.apply(color: AppColors.kBaseWhite),
                  ),
                  Positioned(
                    left: 2,
                    top: 37,
                    child: Text(
                      'ЧАСОВ',
                      style:
                          AppTypography.kH14.apply(color: AppColors.kBaseWhite),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDescriptionBatchOffer(
                    'На ${batch.duration?.split(' ').first} дней',
                  ),
                  const SizedBox(height: 5),
                  _buildDescriptionBatchOffer('В любое время'),
                ],
              ),
            ],
          ),
          const Separator(
            color: AppColors.kBaseWhite,
            margin: EdgeInsets.symmetric(vertical: 12),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildPrice(batch),
              _buildPayButton(context, batch),
            ],
          ),
        ],
      ),
    );
  }

  Column _buildPrice(Batch batch) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Стоимость пакета',
          style: AppTypography.kBody14.apply(
            color: AppColors.kBaseWhite.withOpacity(.6),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          '${batch.factPrice} \u20BD',
          style: AppTypography.kH24B.apply(color: AppColors.kBaseWhite),
        ),
      ],
    );
  }

  GestureDetector _buildPayButton(BuildContext context, Batch batch) {
    return GestureDetector(
      onTap: () => context.pushNamed(
        AppRoute.clubBatch.routeToPath,
        extra: batch,
      ),
      child: Container(
        width: 120,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.kBaseWhite,
        ),
        child: Center(
          child: Text(
            'Купить',
            style: AppTypography.kH14.apply(color: AppColors.kPrimaryRed),
          ),
        ),
      ),
    );
  }

  Widget _buildDescriptionBatchOffer(String description) {
    return Row(
      children: [
        const Icon(
          AppIcons.icon_pack,
          size: 12,
          color: AppColors.kBaseWhite,
        ),
        const SizedBox(width: 8),
        Text(
          description,
          style: AppTypography.kBody14.apply(color: AppColors.kBaseWhite),
        ),
      ],
    );
  }

  Widget _buildDisclaimerWidget() {
    return Container(
      width: 320,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: AppColors.kBaseWhite,
        shape: SuperellipseShape(
          borderRadius: superellipseRadiusOnly(
            12,
            topRight: true,
            bottomLeft: true,
            topLeft: true,
            bottomRight: true,
          ),
          side: const BorderSide(color: AppColors.kPrimaryBlue),
        ),
      ),
      child: RichText(
        text: TextSpan(
          text: 'Купленый пакет часов будет работать только в данном клубе',
          style: AppTypography.kH14.apply(color: AppColors.kOxford60),
        ),
      ),
    );
  }

  AppBar _buildAppBarWidget(PartnerClub club, BuildContext context) {
    return AppBar(
      title: Text(L.of(context).clubBatchesPageTitle),
      leading: IconButton(
        onPressed: () => context.pop(),
        icon: const Icon(AppIcons.close_big),
      ),
    );
  }
}
