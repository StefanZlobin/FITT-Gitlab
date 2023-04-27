import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/enum/payment_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/domain/blocs/payment/payment_bloc.dart';
import 'package:fitt/features/clubs/domain/entities/batch/batch.dart';
import 'package:fitt/features/clubs/domain/entities/club/partner_club.dart';
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
  late final WebViewController _controller;

  @override
  void initState() {
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(AppColors.kBaseWhite)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (String url) {
            if (url == 'https://fitandtech.app/') {
              context.push(AppRoute.paymentLoading.routeToPath);
            }
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocListener<PaymentBloc, PaymentState>(
        bloc: getIt<PaymentBloc>(),
        listener: (context, state) {
          state.whenOrNull(
            paymentBatch: (paymentStatus) {
              switch (paymentStatus) {
                case PaymentStatusEnum.success:
                  context.pushNamed(
                    AppRoute.paymentBuyBatchSuccess.routeToPath,
                    extra: {
                      'club': widget.club!,
                      'batch': widget.batch!,
                    },
                  );
                  return getIt<PaymentBloc>().add(
                    const PaymentEvent.dropState(),
                  );
                case PaymentStatusEnum.reject:
                  context.pushNamed(
                    AppRoute.paymentReject.routeToPath,
                    extra: true,
                  );
                  return getIt<PaymentBloc>().add(
                    const PaymentEvent.dropState(),
                  );
              }
            },
            paymentWorkout: (paymentStatus) {
              switch (paymentStatus) {
                case PaymentStatusEnum.success:
                  context.push(AppRoute.paymentSuccess.routeToPath);
                  return getIt<PaymentBloc>().add(
                    const PaymentEvent.dropState(),
                  );
                case PaymentStatusEnum.reject:
                  context.pushNamed(
                    AppRoute.paymentReject.routeToPath,
                    extra: false,
                  );
                  return getIt<PaymentBloc>().add(
                    const PaymentEvent.dropState(),
                  );
              }
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
