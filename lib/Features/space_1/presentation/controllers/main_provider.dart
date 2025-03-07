import 'package:flutter_riverpod/flutter_riverpod.dart';

//Deafult Primitive Provider
final mainProvider = Provider<String>(
  (ref) => "Hello",
);

//State Provider
final mainStateProvider = StateProvider<int>(
  (ref) => 0,
);

//State Notifier Provider
class MainStateNotifier extends StateNotifier<int> {
  MainStateNotifier(super.state);

  void increment() {
    state = state + 1;
    //print(state);
  }

  void decrement() {
    state = state - 1;
    //print(state);
  }
}

final mainStateNotifierProvider = StateNotifierProvider<MainStateNotifier, int>(
    (ref) => MainStateNotifier(0));
