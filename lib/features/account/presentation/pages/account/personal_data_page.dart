// ignore_for_file: unnecessary_statements

import 'package:clock/clock.dart';
import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/enum/user_gender_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/features/account/domain/blocs/account/account_bloc.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:fitt/presentation/components/buttons/app_radio_button.dart';
import 'package:fitt/presentation/forms/app_date_form.dart';
import 'package:fitt/presentation/forms/app_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
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
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Column(
        children: [
          Form(
            child: Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 24,
                    ),
                    child: Text(
                      'Введите свои личные данные\nДля идентификации пользователя клуб вправе потребовать удостоверение личности',
                      style: AppTypography.kBody14
                          .apply(color: AppColors.kPrimaryRed),
                    ),
                  ),
                  _buildFirstNameForm(),
                  _buildSecondNameForm(),
                  _buildBirthdayForm(context),
                  _buildEmailForm(),
                  _buildGenderForm(),
                ],
              ),
            ),
          ),
          _buildSaveButton(context),
        ],
      ),
    );
  }

  Widget _buildEmailForm() {
    return BlocBuilder<AccountBloc, AccountState>(
      bloc: getIt<AccountBloc>(),
      builder: (context, state) {
        return state.when(
          loaded: (_, __, ___, email, ____, _____, status) {
            return AppTextFormField(
              height: 75,
              padding: const EdgeInsets.only(left: 16, right: 16),
              title: const Text('E-mail'),
              initialValue: userSnapshot?.email,
              isEmailField: true,
              errorText:
                  !email.isValid && status != FormzSubmissionStatus.initial
                      ? email.error!.convertEnumToString(email.error!)
                      : null,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                getIt<AccountBloc>()
                    .add(AccountEvent.emailChanged(email: value));
              },
            );
          },
          error: (status, error) => const SizedBox(),
        );
      },
    );
  }

  Widget _buildGenderForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            'Пол',
            style: AppTypography.kH16.apply(color: AppColors.kBaseBlack),
          ),
        ),
        Row(
          children: [
            BlocBuilder<AccountBloc, AccountState>(
              bloc: getIt<AccountBloc>(),
              builder: (context, state) {
                return state.when(
                  loaded: (_, __, ___, ____, gender, _____, ______) {
                    return AppRadioButton<UserGenderEnum>(
                      padding: const EdgeInsets.only(left: 16),
                      sortingValue: 'Мужской',
                      isRadioButtonLeading: true,
                      groupValue: gender.value == UserGenderEnum.other
                          ? userSnapshot?.gender ?? UserGenderEnum.other
                          : gender.value,
                      value: UserGenderEnum.male,
                      onChanged: (value) {
                        getIt<AccountBloc>()
                            .add(AccountEvent.genderChanged(gender: value));
                      },
                    );
                  },
                  error: (status, error) => const SizedBox(),
                );
              },
            ),
            BlocBuilder<AccountBloc, AccountState>(
              bloc: getIt<AccountBloc>(),
              builder: (context, state) {
                return state.when(
                  loaded: (_, __, ___, ____, gender, _____, ______) {
                    return AppRadioButton<UserGenderEnum>(
                      padding: const EdgeInsets.only(left: 16),
                      sortingValue: 'Женский',
                      isRadioButtonLeading: true,
                      groupValue: gender.value == UserGenderEnum.other
                          ? userSnapshot?.gender ?? UserGenderEnum.other
                          : gender.value,
                      value: UserGenderEnum.female,
                      onChanged: (value) {
                        getIt<AccountBloc>()
                            .add(AccountEvent.genderChanged(gender: value));
                      },
                    );
                  },
                  error: (status, error) => const SizedBox(),
                );
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildFirstNameForm() {
    return BlocBuilder<AccountBloc, AccountState>(
      bloc: getIt<AccountBloc>(),
      builder: (context, state) {
        return state.when(
          loaded: (firstName, _, __, ___, ____, _____, status) {
            return AppTextFormField(
              title: const Text('Имя'),
              height: 75,
              initialValue: userSnapshot?.firstName,
              errorText:
                  !firstName.isValid && status != FormzSubmissionStatus.initial
                      ? firstName.error!.convertEnumToString(firstName.error!)
                      : null,
              onChanged: (value) {
                getIt<AccountBloc>()
                    .add(AccountEvent.firstNameChanged(firstName: value));
              },
            );
          },
          error: (status, error) => const SizedBox(),
        );
      },
    );
  }

  Widget _buildSecondNameForm() {
    return BlocBuilder<AccountBloc, AccountState>(
      bloc: getIt<AccountBloc>(),
      builder: (context, state) {
        return state.when(
          loaded: (_, secondName, __, ___, ____, _____, status) {
            return AppTextFormField(
              height: 75,
              padding: const EdgeInsets.only(left: 16, right: 16),
              title: const Text('Фамилия'),
              initialValue: userSnapshot?.lastName,
              errorText:
                  !secondName.isValid && status != FormzSubmissionStatus.initial
                      ? secondName.error!.convertEnumToString(secondName.error!)
                      : null,
              onChanged: (value) {
                getIt<AccountBloc>()
                    .add(AccountEvent.secondNameChanged(secondName: value));
              },
            );
          },
          error: (status, error) => const SizedBox(),
        );
      },
    );
  }

  Widget _buildBirthdayForm(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      bloc: getIt<AccountBloc>(),
      builder: (context, state) {
        return state.when(
          loaded: (_, __, birthday, ___, ____, _____, status) {
            return AppDateForm(
              padding: const EdgeInsets.only(left: 16, right: 16),
              helper: const Text('Дата рождения'),
              initialValue: userSnapshot?.birthday,
              errorText:
                  !birthday.isValid && status != FormzSubmissionStatus.initial
                      ? birthday.error!.convertEnumToString(birthday.error!)
                      : null,
              onTap: () async {
                await showDatePicker(
                  context: context,
                  initialDate: clock.yearsAgo(18),
                  firstDate: clock.yearsAgo(100),
                  lastDate: clock.yearsAgo(0),
                );
              },
              onDateSelected: (value) {
                getIt<AccountBloc>()
                    .add(AccountEvent.birthdayChanged(birthday: value));
              },
            );
          },
          error: (status, error) => const SizedBox(),
        );
      },
    );
  }

  Widget _buildSaveButton(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      bloc: getIt<AccountBloc>(),
      builder: (context, state) {
        return state.when(
          loaded: (_, __, ___, ____, _____, isValid, status) {
            return AppElevatedButton(
              marginButton: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 32,
                bottom: 24,
              ),
              textButton: const Text('Сохранить'),
              isDisable: !isValid && status != FormzSubmissionStatus.success,
              onPressed: () {
                getIt<AccountBloc>().add(const AccountEvent.accountSubmitted());
                if (afterSignin) {
                  context.push(AppRoute.map.routeToPath);
                } else {
                  context.pop();
                }
              },
            );
          },
          error: (status, error) => AppElevatedButton(
            marginButton:
                const EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 24),
            textButton: const Text('Сохранить'),
            isDisable: true,
            onPressed: () {
              null;
            },
          ),
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
                if (afterSignin) {
                  context.push(AppRoute.map.routeToPath);
                } else {
                  context.pop();
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
