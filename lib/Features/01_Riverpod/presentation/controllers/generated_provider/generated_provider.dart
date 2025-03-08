import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

//final stringProvider = Provider<String>((ref) => "Hello");

part 'generated_provider.g.dart';

@riverpod
String stringFunction (Ref ref) => "Hello...";


class Counter extends Notifier<int>
{
  @override
  int build()
  {
    return 0;
  }

  void increment()
  {
    //state = state + 1;
    state++;
  }
  void decrement()
  {
    //state = state - 1;
    state--;
  }
}

final counterProvider = NotifierProvider<Counter, int>(() => Counter());