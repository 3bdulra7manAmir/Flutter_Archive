import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:test_area/Config/router/app_routes.dart';
import 'package:test_area/Features/01_Riverpod/presentation/screens/auto_dispose/auto_dispose.dart';
import 'package:test_area/Features/01_Riverpod/presentation/screens/basic_providers.dart';
import 'package:test_area/Features/01_Riverpod/presentation/screens/bnb/bnb_view.dart';
import 'package:test_area/Features/01_Riverpod/presentation/screens/future_provider.dart';
import 'package:test_area/Features/01_Riverpod/presentation/screens/stream_provider.dart';
import 'package:test_area/Features/03_BMB_Provider/bnb_view.dart';
import 'package:test_area/Features/04_BMB_GoRouter/app_navigator.dart';
import 'package:test_area/Features/06_Hive/hive_view.dart';
import 'package:test_area/Features/07_UI_Test/test.dart';
import 'package:test_area/Features/08_Responsive/screens/responsive.dart';
//import 'package:test_area/Features/09_Pip/presentation/screen/pip_android_view.dart';

import '../../Features/09_Pip/presentation/screen/pip_both_view.dart';

abstract class AppRouter
{
  AppRouter._();

  static final RouteObserver<ModalRoute<void>> routeObserver = RouteObserver<ModalRoute<void>>();
  static final router = GoRouter(
    initialLocation: AppRoutes.kPipAll,
    observers: [routeObserver],
    routes:
    [
      GoRoute(
        path: AppRoutes.kPipAll,
        name: AppRoutes.kPipAll,
        builder: (context, state) => const PipAllView(),
      ),
      // GoRoute(
      //   path: AppRoutes.kPip,
      //   name: AppRoutes.kPip,
      //   builder: (context, state) => const PipView(),
      // ),
      GoRoute(
        path: AppRoutes.kResponsiveView,
        name: AppRoutes.kResponsiveView,
        builder: (context, state) => const ResponsiveView(),
      ),
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
      // GoRoute(
      //   path: AppRoutes.kAutoDisposeHomeView,
      //   name: AppRoutes.kAutoDisposeHomeView,
      //   builder: (context, state) => const AutoDisposeHome(),
      // ),
      GoRoute(
        path: AppRoutes.kAutoDisposeView,
        name: AppRoutes.kAutoDisposeView,
        builder: (context, state) => const AutoDispose(),
      ),
      // GoRoute(
      //   path: AppRoutes.kFamilyProviderView,
      //   name: AppRoutes.kFamilyProviderView,
      //   builder: (context, state) => const FamilyProvider(),
      // ),
      // GoRoute(
      //   path: AppRoutes.kGeneratedProviderView,
      //   name: AppRoutes.kGeneratedProviderView,
      //   builder: (context, state) => const GeneratedProvider(),
      // ),
      GoRoute(
        path: AppRoutes.kBnBView,
        name: AppRoutes.kBnBView,
        builder: (context, state) => const BnBView(),
      ),

      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => BottomNavExample(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            initialLocation: AppRoutes.kHomeView,
            routes: [
              GoRoute(
                name: AppRoutes.kHomeView,
                path: AppRoutes.kHomeView,
                builder: (context, state) => const HomePage(),
              ),
            ],
          ),
          StatefulShellBranch(
            initialLocation: AppRoutes.kSearchView,
            routes: [
              GoRoute(
                name: AppRoutes.kSearchView,
                path: AppRoutes.kSearchView,
                builder: (context, state) => const SearchPage(),
              ),
            ],
          ),

          StatefulShellBranch(
            initialLocation: AppRoutes.kProfileView,
            routes:
            [
              GoRoute(
                name: AppRoutes.kProfileView,
                path: AppRoutes.kProfileView,
                builder: (context, state) => const ProfilePage(),
              ),
            ],
          ),
        ],
      ),

      GoRoute(
        name: AppRoutes.kHiveView,
        path: AppRoutes.kHiveView,
        builder: (context, state) => const HiveView(),
      ),

      GoRoute(
        name: AppRoutes.ktestView,
        path: AppRoutes.ktestView,
        builder: (context, state) => const LoginScreens(),
      ),
    ],
  );
}
