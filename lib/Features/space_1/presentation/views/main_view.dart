import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_area/Core/constants/app_borders.dart';
import 'package:test_area/Core/constants/app_colors.dart';
import 'package:test_area/Core/constants/app_padding.dart';
import 'package:test_area/Core/constants/app_strings.dart';
import 'package:test_area/Core/utils/styles.dart';
import 'package:test_area/Core/widgets/custom_button.dart';
import 'package:test_area/Core/widgets/custom_container.dart';

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
            CustomContainer(
              containerAlignment: Alignment.center,
              containerHeight: 130.h,
              containerWidth: 300.w,
              containerDecoration: BoxDecoration(
                borderRadius: AppBorders.radiusCircular25,
                color: AppColors.kAlmostGreyColor,
              ),
              containerChild: Text(AppStrings.loremIpsum, style: AppStyles.textStyle14, textAlign: TextAlign.center,),
            ),
      
            20.verticalSpace,
      
            CustomContainer(
              containerHeight: 40.h,
              containerWidth: 40.w,
              containerDecoration: BoxDecoration(
                color: AppColors.kAlmostGreyColor,
                borderRadius: AppBorders.radiusCircular25,
              ),
              containerChild: Icon(Icons.refresh_rounded, size: 27.w,),
            ),
          ],
        ),
      ),
    );
  }
}