import 'package:clock/clock.dart';
import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/enum/user_gender_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/core/utils/functions/serialization.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/domain/blocs/account/account_bloc.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:fitt/presentation/components/buttons/app_radio_button.dart';
import 'package:fitt/presentation/forms/app_date_form.dart';
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
    getIt<AccountBloc>().add(const AccountEvent.zeroState());
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
          initial: (firstName, secondName, birthday, gender, email) {
            return AppTextFormField(
              padding: const EdgeInsets.only(left: 16, right: 16),
              title: const Text('E-mail'),
              initialValue: userSnapshot?.email,
              isEmailField: true,
              onChanged: (value) {
                getIt<AccountBloc>()
                    .add(AccountEvent.emailChanged(email: value));
              },
            );
          },
          formChanged: (_, __, ___, email, gender, status) {
            return AppTextFormField(
              padding: const EdgeInsets.only(left: 16, right: 16),
              title: const Text('E-mail'),
              initialValue: userSnapshot?.email,
              isEmailField: true,
              errorText: !status ? email?.error?.name : null,
              onChanged: (value) {
                getIt<AccountBloc>()
                    .add(AccountEvent.emailChanged(email: value));
              },
            );
          },
          error: (error) => AppTextFormField(
            padding: const EdgeInsets.only(left: 16, right: 16),
            title: const Text('E-mail'),
            initialValue: userSnapshot?.email,
            isEmailField: true,
            onChanged: (value) {
              getIt<AccountBloc>().add(AccountEvent.emailChanged(email: value));
            },
          ),
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
                  initial: (firstName, secondName, birthday, gender, email) {
                    return AppRadioButton<UserGenderEnum>(
                      padding: const EdgeInsets.only(left: 16),
                      sortingValue: 'Мужской',
                      isRadioButtonLeading: true,
                      groupValue: userSnapshot?.gender ?? UserGenderEnum.other,
                      value: UserGenderEnum.male,
                      onChanged: (value) {
                        getIt<AccountBloc>()
                            .add(AccountEvent.genderChanged(gender: value));
                      },
                    );
                  },
                  formChanged: (_, __, ___, email, gender, status) {
                    return AppRadioButton<UserGenderEnum>(
                      padding: const EdgeInsets.only(left: 16),
                      sortingValue: 'Мужской',
                      isRadioButtonLeading: true,
                      groupValue: gender!.value,
                      value: UserGenderEnum.male,
                      onChanged: (value) {
                        getIt<AccountBloc>()
                            .add(AccountEvent.genderChanged(gender: value));
                      },
                    );
                  },
                  error: (error) {
                    return AppRadioButton<UserGenderEnum>(
                      padding: const EdgeInsets.only(left: 16),
                      sortingValue: 'Мужской',
                      isRadioButtonLeading: true,
                      groupValue: userSnapshot?.gender ?? UserGenderEnum.other,
                      value: UserGenderEnum.male,
                      onChanged: (value) {
                        getIt<AccountBloc>()
                            .add(AccountEvent.genderChanged(gender: value));
                      },
                    );
                  },
                );
              },
            ),
            BlocBuilder<AccountBloc, AccountState>(
              bloc: getIt<AccountBloc>(),
              builder: (context, state) {
                return state.when(
                  initial: (firstName, secondName, birthday, gender, email) {
                    return AppRadioButton<UserGenderEnum>(
                      sortingValue: 'Женский',
                      isRadioButtonLeading: true,
                      groupValue: userSnapshot?.gender ?? UserGenderEnum.other,
                      value: UserGenderEnum.female,
                      onChanged: (value) {
                        getIt<AccountBloc>()
                            .add(AccountEvent.genderChanged(gender: value));
                      },
                    );
                  },
                  formChanged: (_, __, ___, email, gender, status) {
                    return AppRadioButton<UserGenderEnum>(
                      sortingValue: 'Женский',
                      isRadioButtonLeading: true,
                      groupValue: gender!.value,
                      value: UserGenderEnum.female,
                      onChanged: (value) {
                        getIt<AccountBloc>()
                            .add(AccountEvent.genderChanged(gender: value));
                      },
                    );
                  },
                  error: (error) {
                    return AppRadioButton<UserGenderEnum>(
                      sortingValue: 'Женский',
                      isRadioButtonLeading: true,
                      groupValue: userSnapshot?.gender ?? UserGenderEnum.other,
                      value: UserGenderEnum.female,
                      onChanged: (value) {
                        getIt<AccountBloc>()
                            .add(AccountEvent.genderChanged(gender: value));
                      },
                    );
                  },
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
          initial: (firstName, secondName, birthday, gender, email) {
            return AppTextFormField(
              padding: const EdgeInsets.only(left: 16, right: 16),
              title: const Text('Имя'),
              initialValue: userSnapshot?.firstName,
              onChanged: (value) {
                getIt<AccountBloc>()
                    .add(AccountEvent.firstNameChanged(firstName: value));
              },
            );
          },
          formChanged:
              (firstName, secondName, birthday, email, gender, status) {
            return AppTextFormField(
              title: const Text('Имя'),
              initialValue: userSnapshot?.firstName,
              errorText: !status ? firstName?.error?.name : null,
              onChanged: (value) {
                getIt<AccountBloc>()
                    .add(AccountEvent.firstNameChanged(firstName: value));
              },
            );
          },
          error: (error) => AppTextFormField(
            title: const Text('Имя'),
            initialValue: userSnapshot?.firstName,
            onChanged: (value) {
              getIt<AccountBloc>()
                  .add(AccountEvent.firstNameChanged(firstName: value));
            },
          ),
        );
      },
    );
  }

  Widget _buildSecondNameForm() {
    return BlocBuilder<AccountBloc, AccountState>(
      bloc: getIt<AccountBloc>(),
      builder: (context, state) {
        return state.when(
          initial: (firstName, secondName, birthday, email, gender) {
            return AppTextFormField(
              padding: const EdgeInsets.only(left: 16, right: 16),
              title: const Text('Фамилия'),
              initialValue: userSnapshot?.lastName,
              onChanged: (value) {
                getIt<AccountBloc>()
                    .add(AccountEvent.secondNameChanged(secondName: value));
              },
            );
          },
          formChanged: (_, secondName, __, ___, ____, status) {
            return AppTextFormField(
              padding: const EdgeInsets.only(left: 16, right: 16),
              title: const Text('Фамилия'),
              initialValue: userSnapshot?.lastName,
              errorText: !status ? secondName?.error?.name : null,
              onChanged: (value) {
                getIt<AccountBloc>()
                    .add(AccountEvent.secondNameChanged(secondName: value));
              },
            );
          },
          error: (error) => AppTextFormField(
            padding: const EdgeInsets.only(left: 16, right: 16),
            title: const Text('Фамилия'),
            initialValue: userSnapshot?.lastName,
            onChanged: (value) {
              getIt<AccountBloc>()
                  .add(AccountEvent.secondNameChanged(secondName: value));
            },
          ),
        );
      },
    );
  }

  Widget _buildBirthdayForm(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      bloc: getIt<AccountBloc>(),
      builder: (context, state) {
        return state.when(
          initial: (firstName, secondName, birthday, email, gender) {
            return AppDateForm(
              padding: const EdgeInsets.only(left: 16, right: 16),
              helper: const Text('Дата рождения'),
              initialValue: userSnapshot?.birthday,
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
                    .add(AccountEvent.emailChanged(email: value.toString()));
              },
            );
          },
          formChanged: (_, __, bitrhday, ___, gender, status) {
            return AppDateForm(
              padding: const EdgeInsets.only(left: 16, right: 16),
              helper: const Text('Дата рождения'),
              initialValue: dateFromStringNullable(bitrhday?.value),
              errorText: !status ? bitrhday?.error?.name : null,
              onTap: () async {
                await showDatePicker(
                  context: context,
                  initialDate: clock.yearsAgo(18),
                  firstDate: clock.yearsAgo(100),
                  lastDate: clock.yearsAgo(0),
                );
              },
              onDateSelected: (value) {
                getIt<AccountBloc>().add(
                  AccountEvent.birthdayChanged(birthday: value.toString()),
                );
              },
            );
          },
          error: (error) => AppDateForm(
            padding: const EdgeInsets.only(left: 16, right: 16),
            helper: const Text('Дата рождения'),
            initialValue: userSnapshot?.birthday,
            onTap: () async {
              await showDatePicker(
                context: context,
                initialDate: clock.yearsAgo(18),
                firstDate: clock.yearsAgo(100),
                lastDate: clock.yearsAgo(0),
              );
            },
            onDateSelected: (value) {
              getIt<AccountBloc>().add(
                AccountEvent.birthdayChanged(birthday: value.toString()),
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildSaveButton(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      bloc: getIt<AccountBloc>(),
      builder: (context, state) {
        return state.when(
          initial: (_, __, ___, ____, _____) {
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
          formChanged:
              (firstName, secondName, bitrhday, email, gender, status) {
            return AppElevatedButton(
              marginButton: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 32,
                bottom: 24,
              ),
              textButton: const Text('Сохранить'),
              isDisable: !status,
              onPressed: () {
                getIt<AccountBloc>().add(const AccountEvent.accountSubmitted());
                context.pop();
              },
            );
          },
          error: (error) => AppElevatedButton(
            marginButton: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 32,
              bottom: 24,
            ),
            textButton: const Text('Сохранить'),
            onPressed: () {
              getIt<AccountBloc>().add(const AccountEvent.accountSubmitted());
              context.pop();
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
