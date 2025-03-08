import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_area/Features/01_Riverpod/data/model/user_info.dart';

final singleValueFamilyProvider = Provider.family<String, String>
((ref, name) => "Hello $name");

final multipleValueFamilyProvider = Provider.family<String, UserInfo>
((ref, userinfo) => "${userinfo.uName}${userinfo.uAddress}${userinfo.uAge}");