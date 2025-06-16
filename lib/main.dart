import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_area/app.dart';
//import 'Features/06_Hive/hive_init.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  //await hiveInit();
  runApp(
    ProviderScope(
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) => const TestApp(),
      ),
    ),
  );
}