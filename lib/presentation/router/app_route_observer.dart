import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/services/app_metrica/app_metrica_service.dart';
import 'package:flutter/material.dart';

class AppRouteObserver extends RouteObserver<PageRoute<dynamic>> {
  void _sendScreenView(PageRoute<dynamic> route) {
    final screenName = route.settings.name;
    getIt<AppMetricaService>().reportEventToAppMetrica(
      eventName: 'Пользователь перешел на страницу $screenName',
    );
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    if (route is PageRoute) {
      _sendScreenView(route);
    }
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute is PageRoute) {
      _sendScreenView(newRoute);
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    if (previousRoute is PageRoute && route is PageRoute) {
      _sendScreenView(previousRoute);
    }
  }
}
