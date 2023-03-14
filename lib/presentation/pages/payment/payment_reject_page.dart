import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/domain/cubits/club/club_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PaymentRejectPage extends StatelessWidget {
  const PaymentRejectPage({
    super.key,
    required this.isBatch,
  });

  final bool isBatch;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ClubCubit, ClubState>(
        bloc: getIt<ClubCubit>(),
        builder: (context, state) {
          return state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (club, _, __, ___, ____, _____, ______) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 32),
                    Text(
                      'Оплата отклонена',
                      style: AppTypography.kH24.apply(color: AppColors.kBaseBlack),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      '${DateTimeUtils.dateFormatWithoutYear.format(DateTime.now())}, ${club.label}, ${club.address!.shortAddress}',
                      maxLines: 2,
                      softWrap: true,
                      style: AppTypography.kBody14.apply(color: AppColors.kOxford60),
                    ),
                    Divider(
                      color: AppColors.kPrimaryBlue,
                      endIndent: MediaQuery.of(context).size.width - 70,
                      thickness: 2,
                      height: 32,
                    ),
                    Text(
                      'Ваш платеж был отклонен платежной системой. Попробуйте повторить платеж через некоторое время.',
                      style: AppTypography.kH14.apply(color: AppColors.kBaseBlack),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 56,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () {
                          context.pop();
                          context.pop();
                        },
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) {
                          return AppColors.kBaseBlack;
                        })),
                        child: Text(
                          'Повторить оплату',
                          style: AppTypography.kH14.apply(color: AppColors.kBaseWhite),
                        ),
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    SizedBox(
                      height: 56,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () {
                          if (isBatch) {
                            context.pop();
                            context.pop();
                            context.pop();
                          } else {
                            context.pop();
                            context.pop();
                          }
                        },
                        child: Text(
                          isBatch ? 'Вернуться к выбору пакета' : 'Вернуться к выбору времени тренировки',
                          style: AppTypography.kH14.apply(color: AppColors.kBaseWhite),
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              );
            },
            error: (error) => const SizedBox(),
          );
        },
      ),
    );
  }
}
