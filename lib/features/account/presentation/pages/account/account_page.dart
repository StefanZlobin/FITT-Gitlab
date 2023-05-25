// ignore_for_file: use_build_context_synchronously, unnecessary_statements

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/constants/border_avatar_radius.dart';
import 'package:fitt/core/enum/user_gender_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/superellipse.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/core/utils/widget_alignments.dart';
import 'package:fitt/domain/blocs/user_avatar/user_avatar_bloc.dart';
import 'package:fitt/domain/entities/user/user.dart';
import 'package:fitt/features/account/domain/blocs/account/account_bloc.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:fitt/presentation/components/buttons/app_radio_button.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:fitt/presentation/dialogs/delete_user_account_dialog.dart';
import 'package:fitt/presentation/forms/app_date_form.dart';
import 'package:fitt/presentation/forms/app_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class AccountPage extends StatelessWidget with UserMixin {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ImagePicker imagePicker = ImagePicker();
    // ignore: unused_local_variable
    final phoneFormatter = MaskTextInputFormatter(
      mask: '+# (###) ###-##-##',
      filter: {'#': RegExp(r'[0-9]')},
    );

    return BlocListener<AccountBloc, AccountState>(
      bloc: getIt<AccountBloc>(),
      listener: (context, state) {
        state.whenOrNull();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Личные данные'),
          leading: IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(AppIcons.arr_big_left),
          ),
        ),
        body: Form(
          child: ListView(
            children: [
              _buildAvatarImage(userSnapshot),
              _buildUpdateUserAvatarButton(imagePicker, context),
              _buildFirstNameForm(),
              _buildSecondNameForm(),
              _buildBirthdayForm(context),
              _buildPhoneNumberForm(phoneFormatter),
              _buildEmailForm(),
              _buildGenderForm(),
              const Separator(
                margin: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
              ),
              _buildDeleteAccountButton(context),
              _buildSaveButton(context),
            ],
          ),
        ),
      ),
    );
  }

  TextButton _buildDeleteAccountButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        showDialog<void>(
          useRootNavigator: false,
          context: context,
          builder: (context) {
            return const DeleteUserAccountDialog();
          },
        );
      },
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16),
      ),
      child: CenterLeft(
        child: Text(
          'Удалить мой аккаунт',
          style: AppTypography.kH14.apply(color: AppColors.kOxford40),
        ),
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
                          ? userSnapshot!.gender!
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
                          ? userSnapshot!.gender!
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

  Widget _buildPhoneNumberForm(MaskTextInputFormatter phoneFormatter) {
    return AppTextFormField(
      height: 75,
      padding: const EdgeInsets.only(left: 16, right: 16),
      title: const Text('Номер телефона'),
      initialValue: phoneFormatter.maskText(userSnapshot?.phoneNumber ?? ''),
      readOnly: true,
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

  TextButton _buildUpdateUserAvatarButton(
    ImagePicker imagePicker,
    BuildContext context,
  ) {
    return TextButton(
      onPressed: () {
        getIt<AccountBloc>()
            .add(AccountEvent.photoChanged(imagePicker: imagePicker));
      },
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16),
      ),
      child: CenterLeft(
        child: Text(
          'Заменить изображение',
          style: AppTypography.kH14.apply(color: AppColors.kPrimaryBlue),
        ),
      ),
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
              isDisable: !isValid || status == FormzSubmissionStatus.success,
              onPressed: () {
                getIt<AccountBloc>().add(const AccountEvent.accountSubmitted());
                context.pop();
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

  Widget _buildAvatarImage(User? user) {
    return BlocBuilder<UserAvatarBloc, UserAvatarState>(
      bloc: getIt<UserAvatarBloc>(),
      builder: (context, state) {
        return state.when(
          error: (error) => const SizedBox(),
          initial: () => const SizedBox(),
          loaded: (user) {
            return CachedNetworkImage(
              imageUrl: user.avatar ?? '',
              imageBuilder: (context, imageProvider) {
                return CenterLeft(
                  child: Container(
                    width: 96,
                    height: 96,
                    margin: const EdgeInsets.fromLTRB(16, 40, 16, 16),
                    decoration: ShapeDecoration(
                      shape: SuperellipseShape(
                        borderRadius: superellipseRadius(40),
                      ),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                );
              },
              placeholder: (context, url) => CenterLeft(
                child: Container(
                  width: 96,
                  height: 96,
                  padding: const EdgeInsets.all(32),
                  margin: const EdgeInsets.fromLTRB(16, 40, 16, 16),
                  child: const CircularProgressIndicator(),
                ),
              ),
              errorWidget: (context, url, dynamic error) {
                return CenterLeft(
                  child: Container(
                    width: 96,
                    height: 96,
                    margin: const EdgeInsets.only(top: 40, left: 16),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(96 * borderRadiusFactor),
                      color: const Color(0xFFD2D2D2),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
