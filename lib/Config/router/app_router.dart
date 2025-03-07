import 'package:go_router/go_router.dart';
import 'package:test_area/Config/router/app_routes.dart';
import 'package:test_area/Features/space_1/presentation/screens/main_view.dart';

abstract class AppRouter {
  AppRouter._();

  static final router = GoRouter(
    initialLocation: AppRoutes.kMainView,
    routes: [
      GoRoute(
        path: AppRoutes.kMainView,
        name: AppRoutes.kMainView,
        builder: (context, state) => const MainView(),
      ),
    ],
  );
}
