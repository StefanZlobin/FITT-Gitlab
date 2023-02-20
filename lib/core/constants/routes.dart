import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/domain/entities/batch/batch.dart';
import 'package:fitt/presentation/pages/account/account_page.dart';
import 'package:fitt/presentation/pages/admin/admin_workout_page.dart';
import 'package:fitt/presentation/pages/admin/admin_workouts_page.dart';
import 'package:fitt/presentation/pages/archive_workouts/archive_workouts_page.dart';
import 'package:fitt/presentation/pages/favorite_clubs/favorite_clubs_page.dart';
import 'package:fitt/presentation/pages/feedback/feedback_page.dart';
import 'package:fitt/presentation/pages/information/information_page.dart';
import 'package:fitt/presentation/pages/map/map_page.dart';
import 'package:fitt/presentation/pages/partner_club/club_batch_page.dart';
import 'package:fitt/presentation/pages/partner_club/club_batches_page.dart';
import 'package:fitt/presentation/pages/partner_club/club_buy_workout_page.dart';
import 'package:fitt/presentation/pages/partner_club/club_information_page.dart';
import 'package:fitt/presentation/pages/partner_club/club_page.dart';
import 'package:fitt/presentation/pages/payment/payment_loading_page.dart';
import 'package:fitt/presentation/pages/payment/payment_reject_page.dart';
import 'package:fitt/presentation/pages/payment/payment_succes_page.dart';
import 'package:fitt/presentation/pages/sign_in/input_phone_number_page.dart';
import 'package:fitt/presentation/pages/sign_in/input_secure_code_page.dart';
import 'package:fitt/presentation/pages/workout/workout_page.dart';
import 'package:fitt/presentation/pages/workouts/workouts_page.dart';
import 'package:fitt/presentation/splash/splash.dart';
import 'package:fitt/presentation/webview/webview.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const size = Size.fromHeight(56);

Widget mockPage(GoRouterState state) => SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text(state.name!)),
        ),
        body: Center(
          key: GlobalKey(),
          child: const Text('Страница в разработке '),
        ),
      ),
    );

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    transitionDuration: const Duration(milliseconds: 400),
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}

class Routes {
  final publicRoutes = <GoRoute>[
    GoRoute(
      path: AppRoute.map.routeToPath,
      name: AppRoute.map.routeToName,
      pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
        context: context,
        state: state,
        child: const MapPage(),
      ),
      builder: (context, state) => const MapPage(),
    ),
    GoRoute(
      path: AppRoute.splash.routeToPath,
      name: AppRoute.splash.routeToName,
      builder: (context, state) => const Splash(),
    ),
    GoRoute(
      path: '${AppRoute.club.routeToPath}/:clubUuid',
      name: AppRoute.club.routeToName,
      builder: (context, state) => ClubPage(
        clubUuid: state.params['clubUuid']!,
      ),
    ),
    GoRoute(
      path: AppRoute.inputPhoneNumber.routeToPath,
      name: AppRoute.inputPhoneNumber.routeToName,
      builder: (context, state) => const InputPhoneNumberPage(),
    ),
    GoRoute(
      path: AppRoute.inputSecureCode.routeToPath,
      name: AppRoute.inputSecureCode.routeToName,
      builder: (context, state) => const InputSecureCodePage(),
    ),
    // Webview
    GoRoute(
      path: AppRoute.webview.routeToPath,
      name: AppRoute.webview.routeToName,
      builder: (context, state) => Webview(
        url: state.queryParams['url']!,
        pageTitle: state.queryParams['pageTitle']!,
        workoutUuid: state.queryParams['workoutUuid'],
      ),
    ),
  ];

  final userRoutes = <GoRoute>[
    GoRoute(
      path: AppRoute.account.routeToPath,
      name: AppRoute.account.routeToName,
      builder: (context, state) => const AccountPage(),
    ),
    GoRoute(
      path: AppRoute.personalData.routeToPath,
      name: AppRoute.personalData.routeToName,
      builder: (context, state) => mockPage(state),
    ),
    GoRoute(
      path: AppRoute.workout.routeToPath,
      name: AppRoute.workout.routeToName,
      builder: (context, state) => WorkoutPage(
        isArchivePage: state.extra! as bool,
      ),
    ),
    GoRoute(
      path: AppRoute.workoutList.routeToPath,
      name: AppRoute.workoutList.routeToName,
      builder: (context, state) => const WorkoutsPage(),
    ),
    GoRoute(
      path: AppRoute.workoutArchiveList.routeToPath,
      name: AppRoute.workoutArchiveList.routeToName,
      builder: (context, state) => ArchiveWorkoutsPage(
        fromWorkoutPage: state.extra! as bool,
      ),
    ),
    GoRoute(
      path: AppRoute.clubInformation.routeToPath,
      name: AppRoute.clubInformation.routeToName,
      builder: (context, state) => const ClubInformationPage(),
    ),
    GoRoute(
      path: AppRoute.clubBatchList.routeToPath,
      name: AppRoute.clubBatchList.routeToName,
      builder: (context, state) => const ClubBatchesPage(),
    ),
    GoRoute(
      path: AppRoute.clubBatch.routeToPath,
      name: AppRoute.clubBatch.routeToName,
      builder: (context, state) {
        final batch = state.extra! as Batch;
        return ClubBatchPage(
          batch: batch,
        );
      },
    ),
    GoRoute(
      path: AppRoute.clubBuyWorkout.routeToPath,
      name: AppRoute.clubBuyWorkout.routeToName,
      builder: (context, state) => const ClubBuyWorkoutPage(),
    ),
    GoRoute(
      path: AppRoute.paymentWebview.routeToPath,
      name: AppRoute.paymentWebview.routeToName,
      builder: (context, state) => mockPage(state),
    ),
    GoRoute(
      path: AppRoute.paymentLoading.routeToPath,
      name: AppRoute.paymentLoading.routeToName,
      builder: (context, state) => const PaymentLoadingPage(),
    ),
    GoRoute(
      path: AppRoute.paymentReject.routeToPath,
      name: AppRoute.paymentReject.routeToName,
      builder: (context, state) => PaymentRejectPage(
        isBatch: state.extra! as bool,
      ),
    ),
    GoRoute(
      path: AppRoute.paymentBuyBatchSuccess.routeToPath,
      name: AppRoute.paymentBuyBatchSuccess.routeToName,
      builder: (context, state) => mockPage(state),
    ),
    GoRoute(
      path: AppRoute.paymentSuccess.routeToPath,
      name: AppRoute.paymentSuccess.routeToName,
      builder: (context, state) => const PaymentSuccessPage(),
    ),
    GoRoute(
      path: AppRoute.clubListFavourite.routeToPath,
      name: AppRoute.clubListFavourite.routeToName,
      builder: (context, state) => const FavoriteClubsPage(),
    ),
    GoRoute(
      path: AppRoute.information.routeToPath,
      name: AppRoute.information.routeToName,
      builder: (context, state) => const InformrationPage(),
    ),
    GoRoute(
      path: AppRoute.feedback.routeToPath,
      name: AppRoute.feedback.routeToName,
      builder: (context, state) => const FeedbackPage(),
    ),
  ];

  final adminRoutes = <GoRoute>[
    GoRoute(
      path: AppRoute.adminWorkoutList.routeToPath,
      name: AppRoute.adminWorkoutList.routeToName,
      builder: (context, state) => const AdminWorkoutsPage(),
    ),
    GoRoute(
      path: AppRoute.adminWorkout.routeToPath,
      name: AppRoute.adminWorkout.routeToName,
      builder: (context, state) => AdminWorkoutPage(
        showHeader: state.extra! as bool,
      ),
    ),
  ];
}
