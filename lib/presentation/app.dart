import 'package:fitt/core/constants/app_themes.dart';
import 'package:fitt/generated/l10n.dart';
import 'package:fitt/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class L extends S {
  static S of(BuildContext context) {
    return S.current;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AppRouter goRouter = AppRouter();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp.router(
      title: 'FITT',
      theme: AppThemes.lightAppTheme,
      themeMode: ThemeMode.light,
      darkTheme: AppThemes.lightAppTheme,
      routerConfig: goRouter.router,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('ru', ''),
    );
  }
}
