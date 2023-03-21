// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:clock/clock.dart';
import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/constants/border_avatar_radius.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/superellipse.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/core/utils/widget_alignments.dart';
import 'package:fitt/domain/blocs/account/account_bloc.dart';
import 'package:fitt/domain/blocs/user/user_bloc.dart';
import 'package:fitt/domain/entities/user/user.dart';
import 'package:fitt/domain/services/app_metrica/app_metrica_service.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:fitt/presentation/dialogs/delete_user_account_dialog.dart';
import 'package:fitt/presentation/forms/app_date_form.dart';
import 'package:fitt/presentation/forms/app_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class AccountPage extends StatelessWidget with UserMixin {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ImagePicker imagePicker = ImagePicker();
    final controller = TextEditingController();
    final phoneFormatter = MaskTextInputFormatter(
      mask: '+# (###) ###-##-##',
      filter: {'#': RegExp(r'[0-9]')},
    );

    return Scaffold(
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
            _buildFirstNameForm(controller),
            _buildSecondNameForm(controller),
            _buildBirthdayForm(context),
            _buildPhoneNumberForm(phoneFormatter),
            _buildEmailForm(),
            const Separator(
              margin: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
            ),
            _buildDeleteAccountButton(context),
            _buildSaveButton(context),
          ],
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
          error: (error) => const SizedBox(),
        );
      },
    );
  }

  AppTextFormField _buildPhoneNumberForm(
    MaskTextInputFormatter phoneFormatter,
  ) {
    return AppTextFormField(
      padding: const EdgeInsets.only(left: 16, right: 16),
      title: const Text('Номер телефона'),
      initialValue: phoneFormatter.maskText(userSnapshot?.phoneNumber ?? ''),
      readOnly: true,
    );
  }

  Widget _buildFirstNameForm(TextEditingController controller) {
    return BlocBuilder<AccountBloc, AccountState>(
      bloc: getIt<AccountBloc>(),
      builder: (context, state) {
        return state.when(
          initial: (firstName, secondName, birthday, gender, email) {
            return AppTextFormField(
              padding: const EdgeInsets.only(left: 16, right: 16),
              controller: userSnapshot?.lastName != null ? null : controller,
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
              controller: userSnapshot?.firstName != null ? null : controller,
              title: const Text('Имя'),
              initialValue: userSnapshot?.firstName,
              errorText: !status ? firstName?.error?.name : null,
              onChanged: (value) {
                getIt<AccountBloc>()
                    .add(AccountEvent.firstNameChanged(firstName: value));
              },
            );
          },
          error: (error) => const SizedBox(),
        );
      },
    );
  }

  Widget _buildSecondNameForm(TextEditingController controller) {
    return BlocBuilder<AccountBloc, AccountState>(
      bloc: getIt<AccountBloc>(),
      builder: (context, state) {
        return state.when(
          initial: (firstName, secondName, birthday, email, gender) {
            return AppTextFormField(
              padding: const EdgeInsets.only(left: 16, right: 16),
              controller: userSnapshot?.lastName != null ? null : controller,
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
              controller: userSnapshot?.lastName != null ? null : controller,
              title: const Text('Фамилия'),
              initialValue: userSnapshot?.lastName,
              errorText: !status ? secondName?.error?.name : null,
              onChanged: (value) {
                getIt<AccountBloc>()
                    .add(AccountEvent.secondNameChanged(secondName: value));
              },
            );
          },
          error: (error) => const SizedBox(),
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
              initialValue: userSnapshot?.birthday,
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
          error: (error) => const SizedBox(),
        );
      },
    );
  }

  TextButton _buildUpdateUserAvatarButton(
    ImagePicker imagePicker,
    BuildContext context,
  ) {
    return TextButton(
      onPressed: () async {
        try {
          await getIt<AppMetricaService>().reportEventToAppMetrica(
            eventName: 'Показан попап с запросом доступа к фото',
          );
          final xFile = await imagePicker.pickImage(
            source: ImageSource.gallery,
            imageQuality: 100,
          );
          await getIt<AppMetricaService>().reportEventToAppMetrica(
            eventName: 'Подтвержден попап с запросом доступа к фото',
          );
          final file = File(xFile!.path);
          final size = await file.length();
          if (size > 5242880) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Слишком большой размер изображения'),
              ),
            );
            return;
          }
          final CroppedFile? croppedFile = await ImageCropper().cropImage(
            sourcePath: xFile.path,
          );

          getIt<UserBloc>().add(
            UserEvent.updateUserAvatar(
              avatar: File(croppedFile!.path),
            ),
          );
        } on Exception {
          await getIt<AppMetricaService>().reportEventToAppMetrica(
            eventName: 'Не подтвержден попап с запросом доступа к фото',
          );
        }
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
          error: (error) => const SizedBox(),
        );
      },
    );
  }

  Widget _buildAvatarImage(User? user) {
    return CachedNetworkImage(
      imageUrl: user?.avatar ?? '',
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
      placeholder: (context, url) =>
          const CenterLeft(child: CircularProgressIndicator()),
      errorWidget: (context, url, dynamic error) {
        return CenterLeft(
          child: Container(
            width: 96,
            height: 96,
            margin: const EdgeInsets.only(top: 40, left: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(96 * borderRadiusFactor),
              color: const Color(0xFFD2D2D2),
            ),
          ),
        );
      },
    );
  }
}
