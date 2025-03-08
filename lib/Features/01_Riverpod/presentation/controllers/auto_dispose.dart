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
    return StateNotifierProviderClass();
  }
));

class StateNotifierProviderClass extends StateNotifier<int>
{
  StateNotifierProviderClass() : super(0);

  void increment()
  {
    state++;
  }
}