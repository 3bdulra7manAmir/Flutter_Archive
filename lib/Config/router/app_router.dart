import 'package:go_router/go_router.dart';
import 'package:test_area/Features/space_1/presentation/screens/in_op_view.dart';
import 'package:test_area/Features/space_1/presentation/screens/main_view.dart';
import 'package:test_area/Features/space_2/presentation/screens/todo_view.dart';
import 'package:test_area/Features/space_2/presentation/widgets/text.dart';
import 'package:test_area/Features/space_3/presentation/screens/space3_view.dart';

abstract class AppRouter
{

  static const kMainView = '/MineView';
  static const kInOpView = '/InOpView';
  static const kToDoView = '/ToDoView';

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

      GoRoute(
        path: kInOpView,
        builder: (context, state) => const TodoView(),
      ),

      GoRoute(
        path: kInOpView,
        builder: (context, state) => AreaView(),
      ),

      // MOVER //
      GoRoute(
        path: '/',
        builder: (context, state) => AreaView(),
      ),
      // MOVER //
    ],
  );
}