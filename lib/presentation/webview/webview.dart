import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/enum/payment_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/domain/cubits/notification/notification_cubit.dart';
import 'package:fitt/domain/cubits/workout/workout_cubit.dart';
import 'package:fitt/domain/cubits/workouts/workouts_cubit.dart';
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
  });

  final String url;
  final String pageTitle;
  final String? workoutUuid;

  @override
  State<Webview> createState() => _WebviewState();
}

class _WebviewState extends State<Webview> {
  final notificationBloc = getIt<NotificationCubit>();

  late final WebViewController _controller;

  @override
  void initState() {
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {
            if (url.contains('https://web.rbsuat.com/acs/auth/finish.do')) {
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
      child: BlocListener<NotificationCubit, NotificationState>(
        bloc: notificationBloc,
        listener: (context, state) {
          state.whenOrNull(
            paymentBatchNotification: (message) {
              if (message.data['payment_status'] ==
                  PaymentStatusEnum.success.name.toUpperCase()) {
                context.push(AppRoute.map.routeToPath);
              } else {
                context.pushNamed(
                  AppRoute.paymentReject.routeToPath,
                  extra: true,
                );
              }
            },
            paymentWorkoutNotification: (message) {
              if (message.data['payment_status'] ==
                  PaymentStatusEnum.success.name.toUpperCase()) {
                getIt<WorkoutsCubit>().getWorkouts();
                getIt<WorkoutCubit>()
                    .getWorkout(workoutUuid: widget.workoutUuid ?? '');
                context.push(AppRoute.paymentSuccess.routeToPath);
              } else {
                context.pushNamed(
                  AppRoute.paymentReject.routeToPath,
                  extra: false,
                );
              }
            },
          );
        },
        child: Scaffold(
          appBar: PageTitle(
            leading: IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(Icons.arrow_back),
            ),
            title: Text(widget.pageTitle),
          ),
          body: WebViewWidget(controller: _controller),
        ),
      ),
    );
  }
}
