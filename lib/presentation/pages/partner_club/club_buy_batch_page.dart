import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/core/utils/widget_alignments.dart';
import 'package:fitt/domain/cubits/buy_batch/buy_batch_cubit.dart';
import 'package:fitt/domain/cubits/club/club_cubit.dart';
import 'package:fitt/domain/entities/batch/batch.dart';
import 'package:fitt/domain/entities/club/partner_club.dart';
import 'package:fitt/presentation/app.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:fitt/presentation/components/club_buy_workout_disclaimer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ClubBuyBatchPage extends StatelessWidget with UserMixin {
  const ClubBuyBatchPage({
    super.key,
    required this.batch,
  });

  final Batch batch;

  @override
  Widget build(BuildContext context) {
    return BlocListener<BuyBatchCubit, BuyBatchState>(
      bloc: getIt<BuyBatchCubit>(),
      listener: (context, state) {
        state.when(
          initial: () => null,
          loaded: (response) {
            final club = getIt<ClubCubit>().state.mapOrNull(loaded: (value) => value.club);
            context.pushNamed(
              AppRoute.webview.routeToPath,
              queryParams: <String, String>{
                'url': response.payForm,
                'pageTitle': L.of(context).clubBatchPageTitle,
              },
              extra: {
                'club': club!,
                'batch': batch,
              },
            );
          },
          error: (_) => null,
        );
      },
      child: BlocBuilder<ClubCubit, ClubState>(
        bloc: getIt<ClubCubit>(),
        builder: (context, state) {
          return Scaffold(
            appBar: state.when(
              loading: () => null,
              loaded: (_, __, ___, ____, _____, ______, _______) => _buildPageTitle(context),
              error: (_) => null,
            ),
            body: _buildBody(state, context),
          );
        },
      ),
    );
  }

  Widget _buildBody(ClubState state, BuildContext context) {
    return state.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      loaded: (club, _, __, ___, ____, _____, ______) {
        return Stack(
          children: [
            ListView(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 150),
              children: [
                _buildBatchInformation(batch, club, context),
                const Divider(
                  color: AppColors.kOxford10,
                  height: 48,
                ),
                _buildAmoutToPay(),
                const Divider(
                  color: AppColors.kOxford10,
                  height: 48,
                ),
                ClubBuyWorkoutDisclaimer(
                  club: club,
                  padding: const EdgeInsets.all(0),
                ),
              ],
            ),
            _buildPaymentButton(context),
          ],
        );
      },
      error: (error) => const SizedBox(),
    );
  }

  BottomCenter _buildPaymentButton(BuildContext context) {
    return BottomCenter(
      child: AppElevatedButton(
        onPressedAsync: () async {
          if (!userController.hasValue || userSnapshot == null) {
            context.push(AppRoute.inputPhoneNumber.routeToPath);
          } else if (!userSnapshot!.hasFullData) {
            context.pushNamed(
              AppRoute.personalData.routeToPath,
              extra: true,
            );
          }
          await getIt<BuyBatchCubit>().buyBatch(clubUuid: batch.clubUuid, batchUuid: batch.uuid);
        },
        textButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Стоимость ${batch.factPrice} \u20BD',
              style: AppTypography.kH14.apply(color: AppColors.kBaseWhite),
            ),
            Text(
              'Перейти к оплате',
              style: AppTypography.kH14.apply(color: AppColors.kBaseWhite),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAmoutToPay() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Сумма к оплате',
          style: AppTypography.kH16.apply(color: AppColors.kBaseBlack),
        ),
        const SizedBox(height: 16),
        _buildAmountToPayRow(
          'Пакет ${batch.hours} часов',
          '${batch.factPrice} \u20BD',
        ),
        const SizedBox(height: 10),
        _buildAmountToPayRow(
          'Итого за пакет',
          '${batch.factPrice} \u20BD',
        ),
      ],
    );
  }

  Widget _buildAmountToPayRow(String leading, String trailing) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leading,
          style: leading.contains('Итого за пакет')
              ? AppTypography.kH16.apply(color: AppColors.kBaseBlack)
              : AppTypography.kBody14.apply(color: AppColors.kBaseBlack),
        ),
        Text(
          trailing,
          style: leading.contains('Итого за пакет')
              ? AppTypography.kH16.apply(color: AppColors.kBaseBlack)
              : trailing.contains('-')
                  ? AppTypography.kBody14.apply(color: AppColors.kPrimaryBlue)
                  : AppTypography.kBody14.apply(color: AppColors.kBaseBlack),
        ),
      ],
    );
  }

  Widget _buildBatchInformation(
    Batch batch,
    PartnerClub club,
    BuildContext context,
  ) {
    final duration = int.parse(batch.duration?.split(' ')[0] ?? '');
    final batchExpireAt = batch.duration == null || batch.duration.toString().isEmpty
        ? 'неограничено'
        : DateTimeUtils.dateFormatWithoutYear.format(DateTime.now().add(Duration(days: duration)));
    final batchStartAt = DateTimeUtils.dateFormatWithoutYear.format(DateTime.now());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          club.label!.toUpperCase(),
          style: AppTypography.kH18.apply(color: AppColors.kBaseBlack),
        ),
        Divider(
          color: AppColors.kPrimaryBlue,
          endIndent: MediaQuery.of(context).size.width - 70,
          thickness: 2,
        ),
        RichText(
          text: TextSpan(
            text: 'Пакет действует с $batchStartAt по $batchExpireAt\n',
            style: AppTypography.kH14.apply(color: AppColors.kOxford),
            children: [
              TextSpan(
                text: 'по адресу ${club.address!.shortAddress}',
                style: AppTypography.kBody14.apply(color: AppColors.kOxford60),
              ),
            ],
          ),
        ),
      ],
    );
  }

  AppBar _buildPageTitle(BuildContext context) {
    return AppBar(
      title: Text(L.of(context).clubBatchPageTitle),
      leading: IconButton(
        onPressed: () => context.pop(),
        icon: const Icon(AppIcons.close_big),
      ),
    );
  }
}
