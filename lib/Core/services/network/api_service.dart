import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:test_area/Features/01_Riverpod/domain/entity/quote_model/user_model.dart';

class ApiService
{
  final String _endpoint = "https://reqres.in/api/users?page=1";

  Future<List<UserModel>> getUsers() async
  {
    final response = await http.get(Uri.parse(_endpoint));

    if (response.statusCode == 200)
    {
      final Map<String, dynamic> jsonBody = jsonDecode(response.body) as Map<String, dynamic>;
      final List<dynamic> rawData = jsonBody['data'] as List<dynamic>;
      final List<UserModel> users = rawData
          .map((item) => UserModel.fromJson(item as Map<String, dynamic>))
          .toList();

      return users;
    }
    else
    {
      throw Exception('فشل في تحميل المستخدمين - Status Code: ${response.statusCode}');
    }
  }
}
