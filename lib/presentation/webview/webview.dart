import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/domain/blocs/notifications/notifications_bloc.dart';
import 'package:fitt/domain/cubits/workout/workout_cubit.dart';
import 'package:fitt/domain/cubits/workouts/workouts_cubit.dart';
import 'package:fitt/domain/entities/batch/batch.dart';
import 'package:fitt/domain/entities/club/partner_club.dart';
import 'package:fitt/presentation/components/page_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Webview extends StatefulWidget {
  const Webview({
    super.key,
    required this.url,
    required this.pageTitle,
    this.workoutUuid,
    this.club,
    this.batch,
  });

  final String url;
  final String pageTitle;
  final String? workoutUuid;
  final PartnerClub? club;
  final Batch? batch;

  @override
  State<Webview> createState() => _WebviewState();
}

class _WebviewState extends State<Webview> {
  final notificationsBloc = getIt<NotificationsBloc>();

  late final WebViewController _controller;

  @override
  void initState() {
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(AppColors.kBaseWhite)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) { 
            print(url);
          },
          onPageFinished: (String url) {
            if (url == 'https://fitandtech.app/') {
              context.push(AppRoute.paymentLoading.routeToPath);
            }
          },
          onWebResourceError: (WebResourceError error) {},
          //onNavigationRequest: (NavigationRequest request) {},
        ),
      )
      ..loadRequest(Uri.parse(widget.url));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocListener<NotificationsBloc, NotificationsState>(
        bloc: notificationsBloc,
        listener: (context, state) {
          state.whenOrNull(
            paymentBatchSuccess: () => context.pushNamed(
              AppRoute.paymentBuyBatchSuccess.routeToPath,
              extra: {
                'club': widget.club,
                'batch': widget.batch,
              },
            ),
            paymentBatchReject: () => context.pushNamed(
              AppRoute.paymentReject.routeToPath,
              extra: true,
            ),
            paymentWorkoutSuccess: () {
              getIt<WorkoutsCubit>().getWorkouts();
              getIt<WorkoutCubit>()
                  .getWorkout(workoutUuid: widget.workoutUuid ?? '');
              context.push(AppRoute.paymentSuccess.routeToPath);
            },
            paymentWorkoutReject: () {
              context.pushNamed(
                AppRoute.paymentReject.routeToPath,
                extra: false,
              );
              notificationsBloc.setInitialState();
            },
          );
        },
        child: Scaffold(
          appBar: PageTitle(
            leading: IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(AppIcons.arr_big_left),
            ),
            title: Text(widget.pageTitle),
          ),
          body: WebViewWidget(controller: _controller),
        ),
      ),
    );
  }
}
