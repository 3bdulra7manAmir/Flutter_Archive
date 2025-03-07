import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_area/Core/services/network/api_service.dart';
import 'package:test_area/Features/space_1/domain/entity/quote_model/user_model.dart';

//Deafult Primitive Provider
final mainProvider = Provider<String>((ref) => "Hello",);

//State Provider
final mainStateProvider = StateProvider<int>((ref) => 0,);

//State Notifier Provider
class MainStateNotifier extends StateNotifier<int>
{
  MainStateNotifier(super.state);

  void increment()
  {
    state = state + 1;
    //print(state);
  }

  void decrement()
  {
    state = state - 1;
    //print(state);
  }
}

final mainStateNotifierProvider = StateNotifierProvider<MainStateNotifier, int>(
  (ref) => MainStateNotifier(0)
);


// /// Future Provider PART

// //API Service Provider
// final apiProvider = Provider<ApiService>((ref) => ApiService());

// //User Model Provider // Future Provider
// final userDataProvider = FutureProvider<List <UserModel> >(
//   (ref) => ref.read(apiProvider).getUsers()
// );