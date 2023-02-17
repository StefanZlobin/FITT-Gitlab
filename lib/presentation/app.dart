import 'package:feedback_sentry/feedback_sentry.dart';
import 'package:fitt/core/constants/app_themes.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/blocs/user/user_bloc.dart';
import 'package:fitt/generated/l10n.dart';
import 'package:fitt/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:shake/shake.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AppRouter goRouter = AppRouter();

    return BetterFeedback(
      child: BlocBuilder<UserBloc, UserState>(
        bloc: getIt<UserBloc>(),
        builder: (context, state) {
          return Builder(builder: (context) {
            ShakeDetector.autoStart(
              onPhoneShake: () {
                Sentry.addBreadcrumb(Breadcrumb(
                  type: 'user',
                  message: 'Отправлен отзыв',
                  category: 'ui.click',
                ));
                final feedback = BetterFeedback.of(context);
                feedback.showAndUploadToSentry(
                  name: '',
                  email: '',
                );
              },
            );
            return MaterialApp.router(
              title: 'FITT',
              theme: AppThemes.lightAppTheme,
              themeMode: ThemeMode.light,
              darkTheme: AppThemes.lightAppTheme,
              routerConfig: goRouter.router,
              localizationsDelegates: const [
                AppLocalizationDelegate(),
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('ru', ''),
                Locale('en', ''),
              ],
              locale: const Locale('ru', ''),
            );
          });
        },
      ),
    );
  }
}
