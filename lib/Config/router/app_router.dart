// ignore_for_file: unused_import

import 'package:go_router/go_router.dart';
import 'package:test_area/Features/main/presentation/screens/in_op_view.dart';
import 'package:test_area/Features/main/presentation/screens/main_view.dart';

abstract class AppRouter
{

  static const kMainView = '/MineView';
  static const kInOpView = '/InOpView';

  static final router = GoRouter(
    routes:
    [
      GoRoute(
        path: kMainView,
        builder: (context, state) => const MainView(),
      ),

      GoRoute(
        path: kInOpView,
        builder: (context, state) => const InOpView(),
      ),

      // MOVER //
      GoRoute(
        path: '/',
        builder: (context, state) => const MainView(),
      ),
      // MOVER //
    ],
  );
}