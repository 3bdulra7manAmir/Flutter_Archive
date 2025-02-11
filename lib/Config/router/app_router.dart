// ignore_for_file: unused_import

import 'package:go_router/go_router.dart';
import 'package:test_area/Features/main/presentation/screens/main_view.dart';

abstract class AppRouter
{

  static const kMineView = '/MineView';

  static final router = GoRouter(
    routes:
    [
      // MOVER //
      GoRoute(
        path: '/',
        builder: (context, state) => const MainView(),
      ),
      // MOVER //
    ],
  );
}