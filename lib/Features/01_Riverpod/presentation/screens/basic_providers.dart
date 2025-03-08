import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_area/Features/01_Riverpod/presentation/controllers/basic_providers.dart';

class MainView extends ConsumerWidget
{
  const MainView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    ref.listen(mainStateProvider, (pervious, next)
    {
      if (next < 0)
      {
        //ref.invalidate(mainStateProvider);
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Less Than ZERO, $next")));
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text("RiverPod"),
        actions:
        [
          IconButton(
              onPressed: ()
              {
                //ref.invalidate(mainStateProvider);
                //ref.refresh(mainStateProvider);
                //ref.read(mainStateProvider.notifier).update((state) => 0);
              },
              icon: const Icon(Icons.refresh)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            ///Default ///P1 Provider
            Text("${ref.watch(mainProvider).toString()} Default Provider"),

            10.verticalSpace,

            ///ConsumerWIDGET ///P1 Provider
            Consumer(
              builder: (context, ref, child) => Text(
                  "${ref.watch(mainProvider)} ConsumerWidget Default Provider"),
            ),

            40.verticalSpace,

            ///P2 ///State Provider
            Text("State Provider: ${ref.watch(mainStateProvider)}"),
            Row(mainAxisAlignment: MainAxisAlignment.center, 
            children:
            [
              IconButton(
                  onPressed: ()
                  {
                    ref.read(mainStateProvider.notifier).state++;
                    //ref.read(mainStateProvider.notifier).update((state) => state + 1);
                  },
                  icon: const Icon(Icons.add_circle_outline_sharp)),
              IconButton(
                  onPressed: ()
                  {
                    ref.read(mainStateProvider.notifier).state--;
                  },
                  icon: const Icon(Icons.remove_circle_outline_sharp)),
            ]),

            40.verticalSpace,

            ///P3 ///State Notifier Provider
            Text("State Notifier Provider: ${ref.watch(mainStateNotifierProvider)}"),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                IconButton(
                    onPressed: ()
                    {
                      ref.read(mainStateNotifierProvider.notifier).increment();
                    },
                    icon: const Icon(Icons.add_circle_outline_sharp)),
                IconButton(
                    onPressed: ()
                    {
                      ref.read(mainStateNotifierProvider.notifier).decrement();
                    },
                    icon: const Icon(Icons.remove_circle_outline_sharp)),
              ],
            ),

            40.verticalSpace,

            ///P4 ///Future Provider
            Text("Future Provider: ${ref.watch(mainStateNotifierProvider)}"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                IconButton(
                    onPressed: ()
                    {
                      ref.read(mainStateNotifierProvider.notifier).increment();
                    },
                    icon: const Icon(Icons.add_circle_outline_sharp)),
                IconButton(
                    onPressed: ()
                    {
                      ref.read(mainStateNotifierProvider.notifier).decrement();
                    },
                    icon: const Icon(Icons.remove_circle_outline_sharp)),
              ],
            ),

            40.verticalSpace,
            TextButton(onPressed: ()
            {
              ref.read(themeStateNotifierProvider.notifier).toggleTheme();
              },
            child: const Text("Switch"))
          ],
        ),
      ),
    );
  }
}
