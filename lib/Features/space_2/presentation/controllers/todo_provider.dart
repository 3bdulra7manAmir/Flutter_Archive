import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_area/Features/space_2/data/models/todo_counter.dart';
import 'package:test_area/Features/space_2/data/models/todo_theme.dart';

final todoProviderEasy = StateProvider<int>((ref) {return 0;},);
final todoProviderHard = ChangeNotifierProvider<RiverpodCounterModel>((ref) {return RiverpodCounterModel(counter: 0);} );


final todoProviderSwitchEasy = StateProvider<RiverpodThemeModel>((ref) {return RiverpodThemeModel();} );
final todoProviderSwitchHard = ChangeNotifierProvider<RiverpodThemeModel>((ref) {return RiverpodThemeModel();} );