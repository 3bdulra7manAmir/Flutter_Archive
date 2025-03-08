import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final stateNotifierProvider = StateNotifierProvider.autoDispose<StateNotifierProviderClass, int>
((
  (ref) 
  {
    //ref.keepAlive();
    final link = ref.keepAlive();
    final timer = Timer(const Duration(seconds: 10), ()
    {
      link.close();
    });
    ref.onDispose(() => timer.cancel(),);
    return StateNotifierProviderClass(0);
  }
));

class StateNotifierProviderClass extends StateNotifier<int>
{

  StateNotifierProviderClass(super.state);

  void increment()
  {
    state = state + 1;
  }

  void decrement()
  {
    state = state - 1;
  }
}