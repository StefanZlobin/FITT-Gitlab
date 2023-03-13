// ignore_for_file: unused_local_variable

import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/admin_workout_finish_reason_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/validation/name_validator.dart';
import 'package:fitt/domain/cubits/admin_modal_bottom_sheet/admin_modal_bottom_sheet_cubit.dart';
import 'package:fitt/domain/cubits/admin_workout/admin_workout_cubit.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:fitt/presentation/components/buttons/app_radio_button.dart';
import 'package:fitt/presentation/components/modals/widget/header_rounded_container_line.dart';
import 'package:fitt/presentation/forms/app_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AdminWorkoutFinishModalBottomSheet extends StatelessWidget {
  const AdminWorkoutFinishModalBottomSheet({
    super.key,
    required this.adminWorkoutUuid,
  });

  final String adminWorkoutUuid;

  @override
  Widget build(BuildContext context) {
    final FocusNode focusNode = FocusNode();
    final nameValidator = NameValidator();

    return BlocBuilder<AdminModalBottomSheetCubit, AdminModalBottomSheetState>(
      bloc: getIt<AdminModalBottomSheetCubit>(),
      builder: (context, state) {
        return SizedBox(
          height: 540,
          child: state.when(
            initial: () => _buildFinishedWorkoutPullup(),
            inputLockerNumber: (_) => const SizedBox(),
            forceFinish: (showCommentForm, reason, comment) =>
                _buildForceFinishWorkoutPullup(showCommentForm, reason, comment, context),
          ),
        );
      },
    );
  }

  Widget _buildForceFinishWorkoutPullup(
    bool showCommentForm,
    AdminWorkoutFinishReasonEnum? reason,
    String? comment,
    BuildContext context,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
          child: HeaderRoundedContainerLine(
            bigPadding: false,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            'Завершить тенировку',
            style: AppTypography.kH24B.apply(color: AppColors.kBaseBlack),
          ),
        ),
        const SizedBox(height: 8.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            'Укажите причину завершения теренировки',
            style: AppTypography.kBody14.apply(color: AppColors.kOxford),
            textAlign: TextAlign.start,
          ),
        ),
        const SizedBox(height: 16.0),
        AppRadioButton<AdminWorkoutFinishReasonEnum>(
          sortingValue: 'Техническая причина',
          value: AdminWorkoutFinishReasonEnum.technicalReason,
          groupValue: reason ?? AdminWorkoutFinishReasonEnum.none,
          onChanged: (v) {
            getIt<AdminModalBottomSheetCubit>().forceFinish(
              adminWorkoutFinishReasonEnum: v,
            );
          },
        ),
        AppRadioButton(
          sortingValue: 'Аварийная ситуация',
          value: AdminWorkoutFinishReasonEnum.emergencySituation,
          groupValue: reason ?? AdminWorkoutFinishReasonEnum.none,
          onChanged: (v) {
            getIt<AdminModalBottomSheetCubit>().forceFinish(
              adminWorkoutFinishReasonEnum: v,
            );
          },
        ),
        AppRadioButton(
          sortingValue: 'Посетителя нет в клубе',
          value: AdminWorkoutFinishReasonEnum.userNotInClub,
          groupValue: reason ?? AdminWorkoutFinishReasonEnum.none,
          onChanged: (v) {
            getIt<AdminModalBottomSheetCubit>().forceFinish(
              adminWorkoutFinishReasonEnum: v,
            );
          },
        ),
        AppRadioButton(
          sortingValue: 'Другое',
          value: AdminWorkoutFinishReasonEnum.other,
          groupValue: reason ?? AdminWorkoutFinishReasonEnum.none,
          onChanged: (v) {
            getIt<AdminModalBottomSheetCubit>().forceFinish(
              showCommentFrom: true,
              adminWorkoutFinishReasonEnum: v,
            );
          },
        ),
        if (showCommentForm)
          const AppTextFormField(
            padding: EdgeInsets.fromLTRB(24, 12, 24, 0),
            title: SizedBox(),
            isHight: true,
            placeholder: 'Напишите причину завершения тренировки',
          ),
        AppElevatedButton(
          marginButton: const EdgeInsets.fromLTRB(24, 24, 24, 24),
          textButton: const Text('Готово'),
          isDisable: reason == null || reason == AdminWorkoutFinishReasonEnum.none,
          onPressedAsync: () async {
            await getIt<AdminWorkoutCubit>()
                .forceFinishUserWorkout(
                  adminWorkoutUuid: adminWorkoutUuid,
                  adminWorkoutFinishReasonEnum: reason ?? AdminWorkoutFinishReasonEnum.none,
                  comment: comment,
                )
                .then((value) => context.pop());
          },
        ),
      ],
    );
  }

  Widget _buildFinishedWorkoutPullup() {
    return Column(
      children: [
        const HeaderRoundedContainerLine(),
        Container(
          width: 114,
          height: 114,
          decoration: BoxDecoration(
            color: const Color(0xFF63B412).withOpacity(0.5),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            AppIcons.tick,
            color: AppColors.kBaseWhite,
            size: 28,
          ),
        ),
        const SizedBox(height: 32.0),
        Text(
          'Тренировка завершена',
          style: AppTypography.kH24B.apply(color: AppColors.kBaseBlack),
        ),
        const SizedBox(height: 24.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 43.0),
          child: Text(
            'Теперь пользователь перешел в раздел “Завершено”',
            style: AppTypography.kBody14.apply(color: AppColors.kOxford60),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 48),
      ],
    );
  }
}
