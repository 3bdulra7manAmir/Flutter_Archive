// ignore_for_file: deprecated_member_use
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_area/Config/router/app_router.dart';
import 'package:test_area/Features/space_2/presentation/controllers/todo_provider.dart';

void main()
{
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => const ProviderScope(child: TestApp())
      ),
    );
}

class TestApp extends ConsumerWidget
{
  const TestApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return DevicePreview(
      enabled: false,
      builder: (context) => MaterialApp.router(
        useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        locale: DevicePreview.locale(context),
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        
        theme: ref.watch(todoProviderSwitchHard).currentTheme,
      ),
    );
  }
}