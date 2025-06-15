import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_area/Core/constants/app_borders.dart';
import 'package:test_area/Core/constants/app_colors.dart';
import 'package:test_area/Core/constants/app_images.dart';
import 'package:test_area/Core/constants/app_padding.dart';
import 'package:test_area/Core/utils/styles.dart';

class CustomInfoCard extends StatelessWidget
{
  const CustomInfoCard({super.key, this.cardFIcon, this.cardTitleText, this.cardSubTitle});

  final String? cardFIcon;
  final String? cardTitleText;
  final String? cardSubTitle;

  

  @override
  Widget build(BuildContext context)
  {
    return Card(
      margin: AppPadding.kSymmetric24H,
      shadowColor: AppColors.kTransparentColor,
      color: AppColors.kTransparentColor,
      child: DecoratedBox(
        decoration: BoxDecoration(gradient: AppColors.appGradient2, borderRadius: AppBorders.radiusCircular16,),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
          [
            Row(
              children:
              [
                SvgPicture.asset(cardFIcon ?? "assets/images/icons/svg/Crown.svg", fit: BoxFit.cover,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    Text(cardTitleText ?? "Title", style: AppStyles.textStyle14.copyWith(color: AppColors.white),),
                    
                    4.verticalSpace,
    
                    Text(cardSubTitle ?? "SubTitle", style: AppStyles.textStyle12.copyWith(color: AppColors.white),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
    
              ],
            ),
    
            const Spacer(),
            SvgPicture.asset(AppAssets.icons.whiteRightArrowSVG),
            16.horizontalSpace,
          ],
        ),
      ),
    
    );
  }
}