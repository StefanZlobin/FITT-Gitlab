import 'package:fitt/core/constants/routes.dart';
import 'package:fitt/presentation/router/app_route_observer.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter();

  final Routes routes = Routes();
  GoRouter get router => _goRouter;

  final AppRouteObserver _appRouteObserver = AppRouteObserver();

  late final _goRouter = GoRouter(
    observers: [
      _appRouteObserver,
    ],
    routes: <GoRoute>[
      ...routes.publicRoutes,
      ...routes.userRoutes,
      ...routes.adminRoutes,
    ],
  );
}
