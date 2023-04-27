// ignore_for_file: cast_nullable_to_non_nullable

import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/helpers/shake_feedback_wrapper.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/features/account/presentation/pages/account/account_page.dart';
import 'package:fitt/features/account/presentation/pages/account/personal_data_page.dart';
import 'package:fitt/features/auth/presentation/pages/input_phone_number_page.dart';
import 'package:fitt/features/auth/presentation/pages/input_secure_code_page.dart';
import 'package:fitt/features/clubs/domain/entities/batch/batch.dart';
import 'package:fitt/features/clubs/domain/entities/club/partner_club.dart';
import 'package:fitt/features/clubs/presentation/pages/favorite_clubs/favorite_clubs_page.dart';
import 'package:fitt/features/clubs/presentation/pages/partner_club/club_batches_page.dart';
import 'package:fitt/features/clubs/presentation/pages/partner_club/club_buy_batch_page.dart';
import 'package:fitt/features/clubs/presentation/pages/partner_club/club_buy_workout_page.dart';
import 'package:fitt/features/clubs/presentation/pages/partner_club/club_information_page.dart';
import 'package:fitt/features/clubs/presentation/pages/partner_club/club_page.dart';
import 'package:fitt/features/clubs/presentation/pages/purchased_batch/purchased_batch_page.dart';
import 'package:fitt/features/map/presentation/pages/map/map_page.dart';
import 'package:fitt/features/workouts/presentation/pages/admin_workout/admin_workout_page.dart';
import 'package:fitt/features/workouts/presentation/pages/admin_workouts/admin_workouts_page.dart';
import 'package:fitt/features/workouts/presentation/pages/workout/workout_page.dart';
import 'package:fitt/features/workouts/presentation/pages/workouts/workouts_page.dart';
import 'package:fitt/features/workouts/presentation/pages/workouts_archive/archive_workouts_page.dart';
import 'package:fitt/presentation/components/staff_clubs_filter_page.dart';
import 'package:fitt/presentation/pages/analytics/analytics_page.dart';
import 'package:fitt/presentation/pages/feedback/feedback_page.dart';
import 'package:fitt/presentation/pages/information/information_page.dart';
import 'package:fitt/presentation/pages/payment/payment_batch_succes_page.dart';
import 'package:fitt/presentation/pages/payment/payment_loading_page.dart';
import 'package:fitt/presentation/pages/payment/payment_reject_page.dart';
import 'package:fitt/presentation/pages/payment/payment_succes_page.dart';
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
        child: const ShakeFeedbackWrapper(child: MapPage()),
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
      builder: (context, state) => ShakeFeedbackWrapper(
        child: ClubPage(
          clubUuid: state.params['clubUuid']!,
        ),
      ),
    ),
    GoRoute(
      path: AppRoute.inputPhoneNumber.routeToPath,
      name: AppRoute.inputPhoneNumber.routeToName,
      builder: (context, state) =>
          const ShakeFeedbackWrapper(child: InputPhoneNumberPage()),
    ),
    GoRoute(
      path: AppRoute.inputSecureCode.routeToPath,
      name: AppRoute.inputSecureCode.routeToName,
      builder: (context, state) => ShakeFeedbackWrapper(
        child: InputSecureCodePage(
          phoneNumber: state.extra! as String,
        ),
      ),
    ),
    // Webview
    GoRoute(
      path: AppRoute.webview.routeToPath,
      name: AppRoute.webview.routeToName,
      builder: (context, state) {
        final param = state.extra as Map<String, Object>?;
        return ShakeFeedbackWrapper(
          child: Webview(
            url: state.queryParams['url']!,
            pageTitle: state.queryParams['pageTitle']!,
            workoutUuid: state.queryParams['workoutUuid'],
            club: param?['club'] == null ? null : param!['club'] as PartnerClub,
            batch: param?['batch'] == null ? null : param!['batch'] as Batch,
          ),
        );
      },
    ),
  ];

  final userRoutes = <GoRoute>[
    GoRoute(
      path: AppRoute.account.routeToPath,
      name: AppRoute.account.routeToName,
      builder: (context, state) =>
          const ShakeFeedbackWrapper(child: AccountPage()),
    ),
    GoRoute(
      path: AppRoute.personalData.routeToPath,
      name: AppRoute.personalData.routeToName,
      builder: (context, state) {
        final param = state.extra! as Map<String, Object>;
        return ShakeFeedbackWrapper(
          child: PersonalDataPage(
            canSkip: param['canSkip']! as bool,
            afterSignin: param['afterSignin']! as bool,
          ),
        );
      },
    ),
    GoRoute(
      path: AppRoute.workout.routeToPath,
      name: AppRoute.workout.routeToName,
      builder: (context, state) => ShakeFeedbackWrapper(
        child: WorkoutPage(
          isArchivePage: state.extra! as bool,
        ),
      ),
    ),
    GoRoute(
      path: AppRoute.workoutList.routeToPath,
      name: AppRoute.workoutList.routeToName,
      builder: (context, state) =>
          const ShakeFeedbackWrapper(child: WorkoutsPage()),
    ),
    GoRoute(
      path: AppRoute.workoutArchiveList.routeToPath,
      name: AppRoute.workoutArchiveList.routeToName,
      builder: (context, state) => ShakeFeedbackWrapper(
        child: ArchiveWorkoutsPage(
          fromWorkoutPage: state.extra! as bool,
        ),
      ),
    ),
    GoRoute(
      path: AppRoute.clubInformation.routeToPath,
      name: AppRoute.clubInformation.routeToName,
      builder: (context, state) =>
          const ShakeFeedbackWrapper(child: ClubInformationPage()),
    ),
    GoRoute(
      path: AppRoute.clubBatchList.routeToPath,
      name: AppRoute.clubBatchList.routeToName,
      builder: (context, state) =>
          const ShakeFeedbackWrapper(child: ClubBatchesPage()),
    ),
    GoRoute(
      path: AppRoute.clubBatch.routeToPath,
      name: AppRoute.clubBatch.routeToName,
      builder: (context, state) => ShakeFeedbackWrapper(
        child: ClubBuyBatchPage(
          batch: state.extra! as Batch,
        ),
      ),
    ),
    GoRoute(
      path: AppRoute.clubBuyWorkout.routeToPath,
      name: AppRoute.clubBuyWorkout.routeToName,
      builder: (context, state) =>
          const ShakeFeedbackWrapper(child: ClubBuyWorkoutPage()),
    ),
    GoRoute(
      path: AppRoute.paymentWebview.routeToPath,
      name: AppRoute.paymentWebview.routeToName,
      builder: (context, state) => ShakeFeedbackWrapper(child: mockPage(state)),
    ),
    GoRoute(
      path: AppRoute.paymentLoading.routeToPath,
      name: AppRoute.paymentLoading.routeToName,
      builder: (context, state) =>
          const ShakeFeedbackWrapper(child: PaymentLoadingPage()),
    ),
    GoRoute(
      path: AppRoute.paymentReject.routeToPath,
      name: AppRoute.paymentReject.routeToName,
      builder: (context, state) => ShakeFeedbackWrapper(
        child: PaymentRejectPage(
          isBatch: state.extra! as bool,
        ),
      ),
    ),
    GoRoute(
      path: AppRoute.paymentBuyBatchSuccess.routeToPath,
      name: AppRoute.paymentBuyBatchSuccess.routeToName,
      builder: (context, state) {
        final param = state.extra! as Map<String, Object>;
        return ShakeFeedbackWrapper(
          child: PaymentBatchSuccessPage(
            club: param['club']! as PartnerClub,
            batch: param['batch']! as Batch,
          ),
        );
      },
    ),
    GoRoute(
      path: AppRoute.paymentSuccess.routeToPath,
      name: AppRoute.paymentSuccess.routeToName,
      builder: (context, state) =>
          const ShakeFeedbackWrapper(child: PaymentSuccessPage()),
    ),
    GoRoute(
      path: AppRoute.clubListFavourite.routeToPath,
      name: AppRoute.clubListFavourite.routeToName,
      builder: (context, state) =>
          const ShakeFeedbackWrapper(child: FavoriteClubsPage()),
    ),
    GoRoute(
      path: AppRoute.information.routeToPath,
      name: AppRoute.information.routeToName,
      builder: (context, state) =>
          const ShakeFeedbackWrapper(child: InformrationPage()),
    ),
    GoRoute(
      path: AppRoute.feedback.routeToPath,
      name: AppRoute.feedback.routeToName,
      builder: (context, state) =>
          const ShakeFeedbackWrapper(child: FeedbackPage()),
    ),
    GoRoute(
      path: AppRoute.purchasedBatch.routeToPath,
      name: AppRoute.purchasedBatch.routeToName,
      builder: (context, state) =>
          const ShakeFeedbackWrapper(child: PurchasedBatchPage()),
    ),
  ];

  final adminRoutes = <GoRoute>[
    GoRoute(
      path: AppRoute.adminWorkoutList.routeToPath,
      name: AppRoute.adminWorkoutList.routeToName,
      builder: (context, state) =>
          const ShakeFeedbackWrapper(child: AdminWorkoutsPage()),
    ),
    GoRoute(
      path: AppRoute.adminWorkout.routeToPath,
      name: AppRoute.adminWorkout.routeToName,
      builder: (context, state) => ShakeFeedbackWrapper(
        child: AdminWorkoutPage(
          showHeader: state.extra! as bool,
        ),
      ),
    ),
    GoRoute(
      path: AppRoute.analytics.routeToPath,
      name: AppRoute.analytics.routeToName,
      builder: (context, state) =>
          const ShakeFeedbackWrapper(child: AnalyticsPage()),
    ),
    GoRoute(
      path: AppRoute.staffClubsFilter.routeToPath,
      name: AppRoute.staffClubsFilter.routeToName,
      builder: (context, state) => ShakeFeedbackWrapper(
        child: StaffClubsFilterPage(
          isFromAdminWorkoutsPage: state.extra! as bool,
        ),
      ),
    ),
  ];
}
