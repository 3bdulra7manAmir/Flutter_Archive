import 'package:go_router/go_router.dart';
import 'package:test_area/Config/router/app_routes.dart';
import 'package:test_area/Features/01_Riverpod/presentation/screens/auto_dispose/auto_dispose.dart';
import 'package:test_area/Features/01_Riverpod/presentation/screens/auto_dispose/home_screen.dart';
import 'package:test_area/Features/01_Riverpod/presentation/screens/basic_providers.dart';
import 'package:test_area/Features/01_Riverpod/presentation/screens/family_provider.dart';
import 'package:test_area/Features/01_Riverpod/presentation/screens/future_provider.dart';
import 'package:test_area/Features/01_Riverpod/presentation/screens/generated_provider.dart';
import 'package:test_area/Features/01_Riverpod/presentation/screens/stream_provider.dart';

abstract class AppRouter
{
  AppRouter._();

  static final router = GoRouter(
    initialLocation: AppRoutes.kGeneratedProviderView,
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
      GoRoute(
        path: AppRoutes.kAutoDisposeHomeView,
        name: AppRoutes.kAutoDisposeHomeView,
        builder: (context, state) => const AutoDisposeHome(),
      ),
      GoRoute(
        path: AppRoutes.kAutoDisposeView,
        name: AppRoutes.kAutoDisposeView,
        builder: (context, state) => const AutoDispose(),
      ),
      GoRoute(
        path: AppRoutes.kFamilyProviderView,
        name: AppRoutes.kFamilyProviderView,
        builder: (context, state) => const FamilyProvider(),
      ),
      GoRoute(
        path: AppRoutes.kGeneratedProviderView,
        name: AppRoutes.kGeneratedProviderView,
        builder: (context, state) => const GeneratedProvider(),
      ),
    ],
  );
}
