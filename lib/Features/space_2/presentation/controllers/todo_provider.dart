import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_area/Features/space_2/data/models/todo_model.dart';

final todoProviderEasy = StateProvider<int>((ref) {return 0;},);
final todoProviderHard = ChangeNotifierProvider<RiverpodModel>((ref) {return RiverpodModel(counter: 0);} );