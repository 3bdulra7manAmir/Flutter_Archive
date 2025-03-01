
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_area/Core/constants/app_borders.dart';
import 'package:test_area/Core/constants/app_colors.dart';
import 'package:test_area/Core/utils/styles.dart';
import 'package:test_area/Core/widgets/custom_container.dart';

class CustomButton extends StatelessWidget
{
  const CustomButton({super.key, this.buttonWidth, this.buttonHeight, required this.buttonText, required this.buttonOnPressed,});

  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final void Function() buttonOnPressed;
  
  @override
  Widget build(BuildContext context)
  {
    return CustomContainer(
      containerWidth: buttonWidth ?? 75.w,
      containerHeight: buttonHeight ?? 30.h,
      containerDecoration: BoxDecoration(
        gradient: const LinearGradient(colors: [AppColors.kFirstGradientColor, AppColors.kSecondGradientColor]),
        borderRadius: AppBorders.radiusCircular80,
      ),
      containerChild: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: AppColors.kPurpleButtonColor, shadowColor: AppColors.kPurpleButtonColor,),
        onPressed: buttonOnPressed,
        child: Center(child: Text(buttonText, style: AppStyles.textStyle12.copyWith(color: Colors.white,),)),
      ),
    );
  }
}