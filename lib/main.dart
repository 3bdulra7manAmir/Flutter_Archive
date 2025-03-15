import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_area/Config/router/app_router.dart';
import 'package:test_area/Features/01_Riverpod/presentation/controllers/basic_providers.dart';
import 'package:test_area/Features/06_Hive/hive_init.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await hiveInit();

  runApp(
    ProviderScope(
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) => DevicePreview(
          builder: (context) => const TestApp(),
          enabled: true,
        ),
      ),
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

        theme: ref.watch(themeStateNotifierProvider),
      ),
    );
  }
}
