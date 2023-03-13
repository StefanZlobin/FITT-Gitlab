import 'package:clock/clock.dart';
import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/enum/user_gender_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/core/validation/date_validator.dart';
import 'package:fitt/core/validation/email_validator.dart';
import 'package:fitt/core/validation/name_validator.dart';
import 'package:fitt/domain/blocs/user/user_bloc.dart';
import 'package:fitt/domain/cubits/account_save_button/account_save_button_cubit.dart';
import 'package:fitt/domain/entities/user/user.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:fitt/presentation/forms/app_date_form.dart';
import 'package:fitt/presentation/forms/app_gender_form.dart';
import 'package:fitt/presentation/forms/app_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PersonalDataPage extends StatelessWidget with UserMixin {
  const PersonalDataPage({
    super.key,
    required this.canSkip,
    required this.afterSignin,
  });

  final bool canSkip;
  final bool afterSignin;

  @override
  Widget build(BuildContext context) {
    final nameValidator = NameValidator();
    final dateValidator = DateValidator();
    final emailValidator = EmailValidator();

    return Scaffold(
      appBar: _buildAppBar(context),
      body: BlocBuilder<UserBloc, UserState>(
        bloc: getIt<UserBloc>(),
        builder: (context, state) {
          return state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            loadedWithNoUser: (_) => const SizedBox(),
            error: (_) => const SizedBox(),
            loaded: (user) {
              return ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                    child: Text(
                      'Введите свои личные данные\nДля идентификации пользователя клуб вправе потребовать удостоверение личности',
                      style: AppTypography.kBody14.apply(color: AppColors.kPrimaryRed),
                    ),
                  ),
                  AppTextFormField(
                    title: const Text('Имя'),
                    placeholder: 'Введите имя',
                    validator: (v) => nameValidator.getValidationErrorName(v),
                    initialValue: userSnapshot?.firstName,
                    onChanged: (value) {
                      getIt<UserBloc>().add(UserEvent.updateUserData(user: user!.copyWith(firstName: value)));
                      getIt<AccountSaveButtonCubit>().disableButton(isDisabled: false);
                    },
                  ),
                  AppTextFormField(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    title: const Text('Фамилия'),
                    placeholder: 'Введите фамилию',
                    validator: (v) => nameValidator.getValidationErrorName(v),
                    initialValue: userSnapshot?.lastName,
                    onChanged: (value) {
                      getIt<UserBloc>().add(UserEvent.updateUserData(user: user!.copyWith(lastName: value)));
                      getIt<AccountSaveButtonCubit>().disableButton(isDisabled: false);
                    },
                  ),
                  AppDateForm(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    helper: const Text('Дата рождения'),
                    validator: (v) => dateValidator.getValidationError(v),
                    initialValue: userSnapshot?.birthday,
                    placeholder: 'Введите дату рождения',
                    onTap: () async {
                      await showDatePicker(
                        context: context,
                        initialDate: clock.yearsAgo(18),
                        firstDate: clock.yearsAgo(100),
                        lastDate: clock.yearsAgo(0),
                      );
                    },
                    onDateSelected: (value) {
                      getIt<UserBloc>().add(UserEvent.updateUserData(user: user!.copyWith(birthday: value)));
                      getIt<AccountSaveButtonCubit>().disableButton(isDisabled: false);
                    },
                  ),
                  AppTextFormField(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    title: const Text('E-mail'),
                    placeholder: 'Введите E-mail',
                    isEmailField: true,
                    initialValue: userSnapshot?.email,
                    validator: (v) => emailValidator.getValidationError(v),
                    onChanged: (value) {
                      getIt<UserBloc>().add(UserEvent.updateUserData(user: user!.copyWith(email: value)));
                      getIt<AccountSaveButtonCubit>().disableButton(isDisabled: false);
                    },
                  ),
                  const AppGenderFormField(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    helper: Text('Пол'),
                    userGender: UserGenderEnum.other,
                  ),
                  _buildSaveButton(context, user!),
                ],
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildSaveButton(BuildContext context, User user) {
    return BlocBuilder<AccountSaveButtonCubit, AccountSaveButtonState>(
      bloc: getIt<AccountSaveButtonCubit>(),
      builder: (context, state) {
        return state.when(
          initial: () {
            return const AppElevatedButton(
              marginButton: EdgeInsets.only(
                left: 16,
                right: 16,
                top: 32,
                bottom: 24,
              ),
              textButton: Text('Сохранить'),
              isDisable: true,
            );
          },
          isDisabled: (isDisabled) {
            return AppElevatedButton(
              marginButton: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 32,
                bottom: 24,
              ),
              textButton: const Text('Сохранить'),
              isDisable: isDisabled,
              onPressed: () {
                getIt<UserBloc>().add(UserEvent.updateUserData(user: user.copyWith(gender: genderGroup)));
                if (!afterSignin) {
                  context.pop();
                } else {
                  context.pop();
                  context.pop();
                  context.pop();
                }
              },
            );
          },
        );
      },
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Личные данные'),
      leading: !canSkip
          ? IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(AppIcons.arr_big_left),
            )
          : const SizedBox(),
      actions: [
        if (canSkip)
          Center(
            child: GestureDetector(
              onTap: () {
                if (!afterSignin) {
                  context.pop();
                } else {
                  context.push(AppRoute.map.routeToPath);
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Text(
                  'Пропустить',
                  style: AppTypography.kH16.apply(color: AppColors.kOxford60),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
