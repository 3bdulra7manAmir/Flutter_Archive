import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_area/Core/utils/styles.dart';
import 'package:test_area/Core/widgets/custom_button.dart';

class MainView extends ConsumerWidget
{
  const MainView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text("Hello", style: AppStyles.textStyle18,),
      
            20.verticalSpace,
      
            CustomButton(buttonText: 'Hit Me!', buttonWidth: 90.w, buttonOnPressed: (){})
          ],
        ),
      ),
    );
  }
}