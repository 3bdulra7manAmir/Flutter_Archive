import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_area/Features/01_Riverpod/presentation/controllers/generated_provider/generated_provider.dart';

class GeneratedProvider extends ConsumerWidget
{
  const GeneratedProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final autoGeneratedStringProvider = ref.watch(stringFunctionProvider);
    final intProvider = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("RiverPod - Auto Gen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text(autoGeneratedStringProvider),

            40.verticalSpace,

            ///P2 ///State Provider
            Text("State Provider: ${intProvider.toString()}"),
            Row(mainAxisAlignment: MainAxisAlignment.center, 
            children:
            [
              IconButton(
                  onPressed: ()
                  {
                    ref.read(counterProvider.notifier).increment();
                  },
                  icon: const Icon(Icons.add_circle_outline_sharp)),
              IconButton(
                  onPressed: ()
                  {
                    ref.read(counterProvider.notifier).decrement();
                  },
                  icon: const Icon(Icons.remove_circle_outline_sharp)),
            ]),
          ],
        ),
      ),
    );
  }
}