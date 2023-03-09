import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/core/utils/widget_alignments.dart';
import 'package:fitt/core/validation/email_validator.dart';
import 'package:fitt/core/validation/name_validator.dart';
import 'package:fitt/domain/blocs/user/user_bloc.dart';
import 'package:fitt/domain/cubits/feedback/feedback_cubit.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:fitt/presentation/forms/app_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> with UserMixin {
  final formKey = GlobalKey<FormState>();
  final commentController = TextEditingController();
  final emailController = TextEditingController();
  final emailValidator = EmailValidator();
  final nameValidator = NameValidator();

  @override
  Widget build(BuildContext context) {
    return BlocListener<FeedbackCubit, FeedbackState>(
      bloc: getIt<FeedbackCubit>(),
      listener: (context, state) {
        state.whenOrNull(
          loaded: () => showDialog<void>(
            useRootNavigator: false,
            context: context,
            builder: (context) {
              return _buildSuccessDialog(context);
            },
          ),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Обратиться в поддержку'),
          leading: IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(AppIcons.arr_big_left),
          ),
        ),
        body: Stack(
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  _buildCommentForm(),
                  BlocBuilder<UserBloc, UserState>(
                    bloc: getIt<UserBloc>(),
                    builder: (context, state) {
                      return state.when(
                        loading: () => _buildEmailForm(null),
                        loaded: (user) => _buildEmailForm(user?.email),
                        loadedWithNoUser: (_) => _buildEmailForm(null),
                        error: (_) => _buildEmailForm(null),
                      );
                    },
                  ),
                ],
              ),
            ),
            BlocBuilder<UserBloc, UserState>(
              bloc: getIt<UserBloc>(),
              builder: (context, state) {
                return state.when(
                  loading: () => _buildSentButton(context),
                  loaded: (user) => _buildSentButton(
                    context,
                    email: user?.email,
                  ),
                  loadedWithNoUser: (_) => _buildSentButton(context),
                  error: (_) => _buildSentButton(context),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  AppTextFormField _buildCommentForm() {
    return AppTextFormField(
      title: const SizedBox(),
      placeholder: 'Задайте вопрос поддержке',
      validator: (value) => nameValidator.getValidationErrorName(value),
      isHight: true,
      onChanged: (value) {
        setState(() {
          commentController.text = value;
        });
      },
    );
  }

  Widget _buildSentButton(
    BuildContext context, {
    String? email,
  }) {
    final e = email ?? '';
    final isDisable = commentController.text.isEmpty ||
        (emailController.text.isEmpty && e.isEmpty);
    return BottomCenter(
      child: AppElevatedButton(
        onPressedAsync: () async {
          await getIt<FeedbackCubit>().sentUserFeedback(
            comment: commentController.text,
            email: e.isNotEmpty ? e : emailController.text,
            name: '${userSnapshot?.firstName} ${userSnapshot?.lastName}',
          );
          await Future<void>.delayed(const Duration(seconds: 2));
        },
        textButton: const Text('Отправить'),
        isDisable: isDisable,
      ),
    );
  }

  Widget _buildEmailForm(String? email) {
    return AppTextFormField(
      title: Text(
        'E-mail для связи',
        style: AppTypography.kH16.apply(color: AppColors.kOxford),
      ),
      validator: (value) => emailValidator.getValidationError(value),
      placeholder: 'Введите свой e-mail',
      isEmailField: true,
      initialValue: email,
      onChanged: (value) {
        if (value.contains('@') && value.contains('.')) {
          setState(() {
            emailController.text = value;
          });
        }
      },
    );
  }

  Widget _buildSuccessDialog(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      titlePadding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      titleTextStyle: AppTypography.kH18.apply(color: AppColors.kBaseBlack),
      title: const Text('Сообщение успешно отправлено'),
      contentPadding: const EdgeInsets.fromLTRB(24, 8, 24, 0),
      contentTextStyle:
          AppTypography.kBody14.apply(color: AppColors.kBaseBlack),
      content: const Text(
        'Наш менеджер свяжется с вами в ближайшее время, по адресу почты который вы указали',
      ),
      actionsPadding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
      actions: [
        Row(
          children: [
            Expanded(
              child: AppElevatedButton(
                textButton: Text(
                  'Готово',
                  style: AppTypography.kBody14.apply(
                    color: AppColors.kBaseWhite,
                  ),
                ),
                marginButton: const EdgeInsets.all(0),
                onPressed: () {
                  context.push(AppRoute.map.routeToPath);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
