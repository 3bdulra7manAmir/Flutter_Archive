import 'package:go_router/go_router.dart';
import 'package:test_area/Config/router/app_routes.dart';
import 'package:test_area/Features/space_1/presentation/screens/basic_providers.dart';
import 'package:test_area/Features/space_1/presentation/screens/future_provider.dart';
import 'package:test_area/Features/space_1/presentation/screens/stream_provider.dart';

abstract class AppRouter
{
  AppRouter._();

  static final router = GoRouter(
    initialLocation: AppRoutes.kStreamProviderView,
    routes:
    [
      GoRoute(
        path: AppRoutes.kMainView,
        name: AppRoutes.kMainView,
        builder: (context, state) => const MainView(),
      ),
      GoRoute(
        path: AppRoutes.kFutureProviderView,
        name: AppRoutes.kFutureProviderView,
        builder: (context, state) => const FutureProvider(),
      ),
      GoRoute(
        path: AppRoutes.kStreamProviderView,
        name: AppRoutes.kStreamProviderView,
        builder: (context, state) => const StreamProvider(),
      ),
    ],
  );
}
