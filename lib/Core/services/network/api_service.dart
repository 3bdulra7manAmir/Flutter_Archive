import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:test_area/Features/space_1/domain/entity/quote_model/quote_model.dart';
import 'package:test_area/Features/space_1/domain/entity/quote_model/user_model.dart';

class ApiService
{
  // ApiService._internal();
  // static final ApiService _apiService = ApiService._internal();
  // factory ApiService() => _apiService;

  // ApiService get apiService => _apiService;

  String endpoint = "https://reqres.in/api/users?page=1";

  Future<List<UserModel>> getUsers() async
  {
  final response = await http.get(Uri.parse(endpoint));

  if (response.statusCode == 200)
  {
    final List<dynamic> data = jsonDecode(response.body)['data'];
    
    return data.map((e) => UserModel.fromJson(e as Map<String, dynamic>)).toList(); // Ensure e is a Map
  }
  
  else
  {
    throw Exception('Failed to get users');
  }
}

}