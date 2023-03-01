import 'package:fitt/core/constants/routes.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter();

  final Routes routes = Routes();
  GoRouter get router => _goRouter;

  late final _goRouter = GoRouter(
    debugLogDiagnostics: true,
    routes: <GoRoute>[
      ...routes.publicRoutes,
      ...routes.userRoutes,
      ...routes.adminRoutes,
    ],
  );
}
