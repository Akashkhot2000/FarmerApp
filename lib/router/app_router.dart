import 'package:auto_route/auto_route.dart';
import 'package:flutter_project_structure/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: Login.page),
        AutoRoute(page: SignUP.page), // Renamed for consistency
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: PostRoute.page),
      ];
}
