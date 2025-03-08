import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_area/Core/services/network/api_service.dart';

import '../../domain/entity/quote_model/user_model.dart';


/// [API_Service]
final apiServiceProvider = Provider<ApiService>((ref) => ApiService());

/// [Future_Provider]
final userDataProvider = FutureProvider<List <UserModel> >(
  (ref) => ref.read(apiServiceProvider).getUsers()
);