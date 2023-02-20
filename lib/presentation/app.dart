import 'package:fitt/core/constants/app_themes.dart';
import 'package:fitt/generated/l10n.dart';
import 'package:fitt/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AppRouter goRouter = AppRouter();

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
  }
}
