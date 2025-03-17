// ignore_for_file: unused_local_variable

import 'package:hive_flutter/adapters.dart';
import 'package:test_area/Features/06_Hive/hive_database.dart';

Future<void> hiveInit() async
{
  /// init
  try
  {
    await Hive.initFlutter();
    Hive.registerAdapter(InfoAdapter());
    
    print("Hive InfoAdapter registered");
    print("Hive initialized Successfully");
  }
  catch (err)
  {
    print("Error initializing Hive: $err");
  }
}