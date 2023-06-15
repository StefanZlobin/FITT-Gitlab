import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/enum/payment_type_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/features/clubs/domain/cubits/club/club_cubit.dart';
import 'package:fitt/features/clubs/domain/entities/activity/activity.dart';
import 'package:fitt/features/clubs/domain/entities/club/partner_club.dart';
import 'package:fitt/features/payment/domain/blocs/payment_type/payment_type_bloc.dart';
import 'package:fitt/features/payment/domain/blocs/payment_workout_button/payment_workout_button_bloc.dart';
import 'package:fitt/gen/assets.gen.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class WorkoutPayButton extends StatelessWidget {
  const WorkoutPayButton({
    super.key,
    required this.club,
    required this.activity,
  });

  final PartnerClub club;
  final Activity activity;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentWorkoutButtonBloc, PaymentWorkoutButtonState>(
      bloc: getIt<PaymentWorkoutButtonBloc>(),
      builder: (context, state) {
        return state.when(
          initial: (paymentAvailable, userHasFullData) {
            return _buildButtonWidget(
              context,
              paymentAvailable,
              userHasFullData,
            );
          },
          loaded: (_, __, ___) => const SizedBox(),
          error: (_) => const SizedBox(),
        );
      },
    );
  }

  Widget _buildButtonWidget(
    BuildContext context,
    bool paymentAvailable,
    UserExistEnum userHasFullData,
  ) {
    return BlocBuilder<PaymentTypeBloc, PaymentTypeState>(
      bloc: getIt<PaymentTypeBloc>(),
      builder: (context, state) {
        return state.when(
          initial: (paymentType) {
            return _buildButton(
              context,
              paymentAvailable,
              userHasFullData,
              paymentType,
            );
          },
          loaded: (paymentType) {
            return _buildButton(
              context,
              paymentAvailable,
              userHasFullData,
              paymentType,
            );
          },
          error: (_) => const SizedBox(),
        );
      },
    );
  }

  AppElevatedButton _buildButton(
    BuildContext context,
    bool paymentAvailable,
    UserExistEnum userHasFullData,
    PaymentTypeEnum paymentType,
  ) {
    return AppElevatedButton(
      isDisable: !paymentAvailable,
      errorText:
          paymentAvailable ? null : const Text('Подключаем систему оплаты'),
      onPressedAsync: () async {
        if (UserExistEnum.none == userHasFullData) {
          context.push(AppRoute.inputPhoneNumber.routeToPath);
        } else if (UserExistEnum.notFullData == userHasFullData) {
          context.pushNamed(
            AppRoute.personalData.routeToPath,
            extra: {
              'canSkip': false,
              'afterSignin': false,
            },
          );
        } else {
          getIt<PaymentWorkoutButtonBloc>()
              .add(PaymentWorkoutButtonEvent.payment(
            paymentType: paymentType,
          ));

          //club.batchHoursAvailable != 0
          //    ? await getIt<BuyWorkoutCubit>().buyWorkoutByBatch(
          //        slot: TimeSlot(
          //          id: getIt<ClubCubit>().selectedSlot!.id,
          //          startTime: getIt<ClubCubit>().selectedSlot!.startTime,
          //          duration: getIt<ClubCubit>().selectedSlot!.duration,
          //          price: getIt<ClubCubit>().selectedSlot!.price,
          //        ),
          //        activityUuid: activity.uuid,
          //      )
          
        }
      },
      textButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          if (club.batchHoursAvailable == 0)
            Text(
              'Стоимость ${getIt<ClubCubit>().selectedSlot!.price} \u20BD',
              style: AppTypography.kH14.apply(color: AppColors.kBaseWhite),
            )
          else
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Стоимость',
                  style: AppTypography.kH14.apply(color: AppColors.kBaseWhite),
                ),
                const SizedBox(width: 4),
                Text(
                  '${getIt<ClubCubit>().selectedSlot!.duration.inHours}',
                  style: AppTypography.kH24.apply(color: AppColors.kBaseWhite),
                ),
                const SizedBox(width: 4),
                Assets.images.batch.image(filterQuality: FilterQuality.high),
              ],
            ),
          Text(
            'Перейти к оплате',
            style: AppTypography.kH14.apply(color: AppColors.kBaseWhite),
          ),
        ],
      ),
    );
  }
}
