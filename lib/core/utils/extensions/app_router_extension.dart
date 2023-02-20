import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/generated/l10n.dart';
import 'package:flutter/material.dart';

extension AppRouterExtension on AppRoute {
  String get routeToPath {
    switch (this) {
      case AppRoute.webview:
        return '/${AppRoute.webview.name}';

      case AppRoute.map:
        return '/${AppRoute.map.name}';

      case AppRoute.splash:
        return '/';

      case AppRoute.information:
        return '/${AppRoute.information.name}';

      case AppRoute.feedback:
        return '/${AppRoute.feedback.name}';

      case AppRoute.purchasedHours:
        return '/${AppRoute.purchasedHours.name}';

      case AppRoute.workout:
        return '/${AppRoute.workout.name}';

      case AppRoute.workoutList:
        return '/${AppRoute.workoutList.name}';

      case AppRoute.workoutArchiveList:
        return '/${AppRoute.workoutArchiveList.name}';

      case AppRoute.club:
        return '/${AppRoute.club.name}';

      case AppRoute.clubInformation:
        return '/${AppRoute.clubInformation.name}';

      case AppRoute.clubBuyWorkout:
        return '/${AppRoute.clubBuyWorkout.name}';

      case AppRoute.clubBatchList:
        return '/${AppRoute.clubBatchList.name}';

      case AppRoute.clubBatch:
        return '/${AppRoute.clubBatch.name}';

      case AppRoute.clubBuyBatch:
        return '/${AppRoute.clubBuyBatch.name}';

      case AppRoute.clubMap:
        return '/${AppRoute.clubMap.name}';

      case AppRoute.clubListFavourite:
        return '/${AppRoute.clubListFavourite.name}';

      case AppRoute.paymentWebview:
        return '/${AppRoute.paymentWebview.name}';

      case AppRoute.paymentLoading:
        return '/${AppRoute.paymentLoading.name}';

      case AppRoute.paymentSuccess:
        return '/${AppRoute.paymentSuccess.name}';

      case AppRoute.paymentBuyBatchSuccess:
        return '/${AppRoute.paymentBuyBatchSuccess.name}';

      case AppRoute.paymentReject:
        return '/${AppRoute.paymentReject.name}';

      case AppRoute.adminWorkoutList:
        return '/${AppRoute.adminWorkoutList.name}';

      case AppRoute.adminWorkout:
        return '/${AppRoute.adminWorkout.name}';

      case AppRoute.account:
        return '/${AppRoute.account.name}';

      case AppRoute.personalData:
        return '/${AppRoute.personalData.name}';

      case AppRoute.inputPhoneNumber:
        return '/${AppRoute.inputPhoneNumber.name}';

      case AppRoute.inputSecureCode:
        return '/${AppRoute.inputSecureCode.name}';
    }
  }

  String get routeToName {
    switch (this) {
      case AppRoute.webview:
        return '/${AppRoute.webview.name.toUpperCase()}';

      case AppRoute.map:
        return AppRoute.map.name.toUpperCase();

      case AppRoute.splash:
        return AppRoute.splash.name.toUpperCase();

      case AppRoute.information:
        return AppRoute.information.name.toUpperCase();

      case AppRoute.feedback:
        return AppRoute.feedback.name.toUpperCase();

      case AppRoute.purchasedHours:
        return AppRoute.purchasedHours.name.toUpperCase();

      case AppRoute.workout:
        return '/${AppRoute.workout.name.toUpperCase()}';

      case AppRoute.workoutList:
        return AppRoute.workoutList.name.toUpperCase();

      case AppRoute.workoutArchiveList:
        return '/${AppRoute.workoutArchiveList.name.toUpperCase()}';

      case AppRoute.club:
        return '/${AppRoute.club.name.toUpperCase()}';

      case AppRoute.clubInformation:
        return AppRoute.clubInformation.name.toUpperCase();

      case AppRoute.clubBuyWorkout:
        return AppRoute.clubBuyWorkout.name.toUpperCase();

      case AppRoute.clubBatchList:
        return AppRoute.clubBatchList.name.toUpperCase();

      case AppRoute.clubBatch:
        return '/${AppRoute.clubBatch.name.toUpperCase()}';

      case AppRoute.clubBuyBatch:
        return AppRoute.clubBuyBatch.name.toUpperCase();

      case AppRoute.clubMap:
        return AppRoute.clubMap.name.toUpperCase();

      case AppRoute.clubListFavourite:
        return AppRoute.clubListFavourite.name.toUpperCase();

      case AppRoute.paymentWebview:
        return AppRoute.paymentWebview.name.toUpperCase();

      case AppRoute.paymentLoading:
        return AppRoute.paymentLoading.name.toUpperCase();

      case AppRoute.paymentSuccess:
        return AppRoute.paymentSuccess.name.toUpperCase();

      case AppRoute.paymentBuyBatchSuccess:
        return AppRoute.paymentBuyBatchSuccess.name.toUpperCase();

      case AppRoute.paymentReject:
        return '/${AppRoute.paymentReject.name.toUpperCase()}';

      case AppRoute.adminWorkoutList:
        return AppRoute.adminWorkoutList.name.toUpperCase();

      case AppRoute.adminWorkout:
        return '/${AppRoute.adminWorkout.name.toUpperCase()}';

      case AppRoute.account:
        return AppRoute.account.name.toUpperCase();

      case AppRoute.personalData:
        return AppRoute.personalData.name.toUpperCase();

      case AppRoute.inputPhoneNumber:
        return AppRoute.inputPhoneNumber.name.toUpperCase();

      case AppRoute.inputSecureCode:
        return AppRoute.inputSecureCode.name.toUpperCase();
    }
  }

  String? routeToTitle(BuildContext context) {
    final localization = S.of(context);
    switch (this) {
      case AppRoute.webview:
        return null;

      case AppRoute.map:
        return null;

      case AppRoute.splash:
        return null;

      case AppRoute.information:
        return localization.informationPageTitle;

      case AppRoute.feedback:
        return localization.feedbackPageTitle;

      case AppRoute.purchasedHours:
        return AppRoute.purchasedHours.name;

      case AppRoute.workout:
        return localization.workoutPageTitle;

      case AppRoute.workoutList:
        return AppRoute.workoutList.name;

      case AppRoute.workoutArchiveList:
        return AppRoute.workoutArchiveList.name;

      case AppRoute.club:
        return AppRoute.club.name;

      case AppRoute.clubInformation:
        return AppRoute.clubInformation.name;

      case AppRoute.clubBuyWorkout:
        return AppRoute.clubBuyWorkout.name;

      case AppRoute.clubBatchList:
        return AppRoute.clubBatchList.name;

      case AppRoute.clubBatch:
        return AppRoute.clubBatch.name;

      case AppRoute.clubBuyBatch:
        return AppRoute.clubBuyBatch.name.toUpperCase();

      case AppRoute.clubMap:
        return AppRoute.clubMap.name.toUpperCase();

      case AppRoute.clubListFavourite:
        return AppRoute.clubListFavourite.name.toUpperCase();

      case AppRoute.paymentWebview:
        return AppRoute.paymentWebview.name.toUpperCase();

      case AppRoute.paymentLoading:
        return AppRoute.paymentLoading.name.toUpperCase();

      case AppRoute.paymentSuccess:
        return AppRoute.paymentSuccess.name.toUpperCase();

      case AppRoute.paymentBuyBatchSuccess:
        return AppRoute.paymentBuyBatchSuccess.name.toUpperCase();

      case AppRoute.paymentReject:
        return AppRoute.paymentReject.name.toUpperCase();

      case AppRoute.adminWorkoutList:
        return AppRoute.adminWorkoutList.name.toUpperCase();

      case AppRoute.adminWorkout:
        return AppRoute.adminWorkout.name.toUpperCase();

      case AppRoute.account:
        return AppRoute.account.name.toUpperCase();

      case AppRoute.personalData:
        return AppRoute.personalData.name.toUpperCase();

      case AppRoute.inputPhoneNumber:
        return localization.inputPhoneNumber;

      case AppRoute.inputSecureCode:
        return localization.inputSecureCode;
    }
  }
}
