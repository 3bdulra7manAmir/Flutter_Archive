import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:test_area/Core/constants/app_colors.dart';
import 'package:test_area/Core/widgets/buttons/custom_button.dart';
import 'package:test_area/Features/space_1/presentation/controllers/main_view_con/notifier_provider.dart';
import 'package:test_area/Features/space_1/presentation/controllers/main_view_con/info_provider.dart';
import 'package:test_area/Features/space_1/presentation/widgets/custom_card.dart';
import 'package:test_area/Features/space_1/presentation/widgets/custom_listbuilder.dart';

class InOpView extends ConsumerWidget
{
  const InOpView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final infoProviderCartList = ref.watch(infoNotifierProvider);
    final infoProviderListInMain = ref.watch(infoProvider);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children:
          [
            CustomListBuilderSeparator(
              EdgeInsets.symmetric(horizontal: 15.w),
              (context, index) => const Divider(thickness: 2, color: AppColors.kSecondGradientColor,),
              (context, index) => Column(
                children:
                [
                  CustomTestCard(index: index),
                  
                  if (infoProviderCartList.any((item) => item.id == infoProviderListInMain[index].id))
                    CustomButton(buttonText: 'Remove', buttonOnPressed: ()
                    {
                      ref.read(infoNotifierProvider.notifier).removeInfo(infoProviderListInMain[index]);
                    }, buttonWidth: 90.w,),
                    
                  if (!infoProviderCartList.any((item) => item.id == infoProviderListInMain[index].id))
                    CustomButton(buttonText: 'Add', buttonOnPressed: ()
                    {
                      ref.read(infoNotifierProvider.notifier).addInfo(infoProviderListInMain[index]);
                    }),
                ],
              ),
              infoProviderCartList.length,
            ),
            
            50.verticalSpace,
            Divider(color: Colors.black, indent: 70.w, endIndent: 70.w,),
            CustomButton(buttonText: 'NavBack', buttonOnPressed: (){GoRouter.of(context).pop();}, buttonWidth: 120.w,)
          ],
        ),
      ),
    );
  }
}