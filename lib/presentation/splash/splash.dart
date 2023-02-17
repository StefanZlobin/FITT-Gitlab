import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen.withScreenRouteFunction(
      splash: Assets.images.logo.image(),
      backgroundColor: AppColors.kPrimaryBlue,
      duration: 3000,
      curve: Curves.easeInOut,
      pageTransitionType: PageTransitionType.fade,
      splashTransition: SplashTransition.fadeTransition,
      screenRouteFunction: () async {
        context.push(AppRoute.map.routeToPath);
        return '';
      },
    );
  }
}
