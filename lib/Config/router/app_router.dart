import 'package:go_router/go_router.dart';


abstract class AppRouter
{
  AppRouter._();

  

  static final router = GoRouter(
    routes:
    [
      // GoRoute(
      //   path: kMainView,
      //   builder: (context, state) => const MainView(),
      // ),

      // GoRoute(
      //   path: '/',
      //   builder: (context, state) => const MidView(),
      // ),
    ],
  );
}