import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'Config/router/app_router.dart';
import 'Features/01_Riverpod/presentation/controllers/basic_providers.dart';

class TestApp extends ConsumerWidget
{
  const TestApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return DevicePreview(
      enabled: false,
      builder: (context) => MaterialApp.router(
        //useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        locale: DevicePreview.locale(context),
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ref.watch(themeStateNotifierProvider),
      ),
    );
  }
}