import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/widget_alignments.dart';
import 'package:fitt/core/validation/name_validator.dart';
import 'package:fitt/domain/cubits/admin_modal_bottom_sheet/admin_modal_bottom_sheet_cubit.dart';
import 'package:fitt/domain/cubits/admin_workout/admin_workout_cubit.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:fitt/presentation/components/modals/widget/header_rounded_container_line.dart';
import 'package:fitt/presentation/forms/app_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AdminWorkoutStartModalBottomSheet extends StatelessWidget {
  const AdminWorkoutStartModalBottomSheet({
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
            initial: () => _buildStartedWorkoutPullup(),
            inputLockerNumber: (lockerNumber) => _buildInputLockerNumber(
              focusNode,
              context,
              nameValidator,
              lockerNumber,
            ),
            forceFinish: (_, __, ___) => const SizedBox(),
          ),
        );
      },
    );
  }

  Widget _buildInputLockerNumber(
    FocusNode focusNode,
    BuildContext context,
    NameValidator nameValidator,
    String? lockerNumber,
  ) {
    focusNode.requestFocus();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(child: HeaderRoundedContainerLine()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            'Ввод номера',
            style: AppTypography.kH24B.apply(color: AppColors.kBaseBlack),
          ),
        ),
        const SizedBox(height: 8.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            'Вы можете ввести номер ключа/брелока, если это необходимо, либо пропустить этот шаг',
            style: AppTypography.kBody14.apply(color: AppColors.kOxford),
            textAlign: TextAlign.start,
          ),
        ),
        const SizedBox(height: 16.0),
        Form(
          child: AppTextFormField(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
            focusNode: focusNode,
            initialValue: lockerNumber,
            isHight: true,
            title: const SizedBox(),
            placeholder: 'Ввести номер',
            validator: (v) => nameValidator.getValidationErrorName(v),
            onChanged: (value) {
              getIt<AdminModalBottomSheetCubit>().setLockerNumber(lockerNumber: value);
            },
          ),
        ),
        AppElevatedButton(
          marginButton: const EdgeInsets.fromLTRB(24, 0, 24, 24),
          textButton: const Text('Готово'),
          isDisable:
              // ignore: avoid_bool_literals_in_conditional_expressions
              lockerNumber == null || lockerNumber.isEmpty ? true : false,
          onPressedAsync: () async {
            await getIt<AdminWorkoutCubit>()
                .setLockerNumber(
                  adminWorkoutUuid: adminWorkoutUuid,
                  lockerNumber: lockerNumber!,
                )
                .then(
                  (value) => context.pop(),
                );
          },
        ),
      ],
    );
  }

  Widget _buildStartedWorkoutPullup() {
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
          'Тренировка началась',
          style: AppTypography.kH24B.apply(color: AppColors.kBaseBlack),
        ),
        const SizedBox(height: 24.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 43.0),
          child: Text(
            'Вы можете ввести номер ключа/брелока, если это необходимо, либо пропустить этот шаг',
            style: AppTypography.kBody14.apply(color: AppColors.kOxford60),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 24.0),
        GestureDetector(
          onTap: () => getIt<AdminModalBottomSheetCubit>().setLockerNumber(),
          child: Container(
            height: 48,
            margin: const EdgeInsets.fromLTRB(67.5, 0, 67.5, 48),
            padding: const EdgeInsets.only(left: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColors.kOxford20),
            ),
            child: CenterLeft(
              child: Text(
                'Ввести номер',
                style: AppTypography.kBody14.apply(color: AppColors.kOxford40),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
