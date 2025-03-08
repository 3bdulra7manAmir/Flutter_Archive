import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_area/Config/router/app_router.dart';
import 'package:test_area/Features/01_Riverpod/presentation/controllers/auto_dispose.dart';

class AutoDispose extends ConsumerWidget
{
  const AutoDispose({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final autoDisposeProvider = ref.watch(stateNotifierProvider);
    return Scaffold(
      appBar: AppBar(

        leading: Row(
          children:
          [
            IconButton(onPressed: AppRouter.router.pop, icon: const Icon(Icons.arrow_back_rounded)),
            5.horizontalSpace,
            const Text('I\'m Auto Dispose'),
          ],
        ),
        leadingWidth: 150.w,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text(autoDisposeProvider.toString()),
            20.verticalSpace,

            ElevatedButton(
              onPressed: () => ref.read
              (stateNotifierProvider.notifier).increment(),

              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}