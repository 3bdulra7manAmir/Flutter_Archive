import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_area/Core/utils/styles.dart';
import 'package:test_area/Core/widgets/buttons/custom_button.dart';
import 'package:test_area/Features/space_2/presentation/controllers/todo_provider.dart';

class TodoView extends ConsumerWidget
{
  const TodoView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Text("ToDo...", style: Styles.textStyle24,),
              10.verticalSpace,

              Text(ref.watch(todoProviderHard).counter.toString(), style: Styles.textStyle20.copyWith(color: Colors.teal,)),
              10.verticalSpace,

              CustomButton(buttonText: 'Add +', buttonOnPressed: ()
              //{ref.read(todoProviderEasy.notifier).state++;},
              {ref.read(todoProviderHard.notifier).counterAdd();},
              buttonWidth: 80.w,),
              10.verticalSpace,

              CustomButton(buttonText: 'Subtract -', buttonOnPressed: ()
              //{ref.read(todoProviderEasy.notifier).state--;},
              {ref.read(todoProviderHard.notifier).counterSubtract(context);},
              buttonWidth: 110.w,),
              10.verticalSpace,

              CustomButton(buttonText: 'Switch Theme', buttonOnPressed: ()
              {ref.read(todoProviderSwitchHard.notifier).themeChanger();},
              buttonWidth: 130.w,),
            ],
          ),
        ),
      ),
    );
  }
}