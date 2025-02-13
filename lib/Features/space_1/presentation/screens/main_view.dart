import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:test_area/Config/router/app_router.dart';
import 'package:test_area/Core/constants/app_colors.dart';
import 'package:test_area/Core/widgets/buttons/custom_button.dart';
import 'package:test_area/Features/space_1/presentation/controllers/main_view_con/notifier_provider.dart';
import 'package:test_area/Features/space_1/presentation/controllers/main_view_con/info_provider.dart';
import 'package:test_area/Features/space_1/presentation/widgets/custom_card.dart';
import 'package:test_area/Features/space_1/presentation/widgets/custom_listbuilder.dart';

class MainView extends ConsumerWidget
{
  const MainView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
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
                  CustomButton(buttonText: 'Add', buttonOnPressed: ()
                  {
                    ref.read(infoNotifierProvider.notifier).addInfo(infoProviderListInMain[index]);
                  }),
                ],
              ),
              infoProviderListInMain.length,
            ),

            50.verticalSpace,
            Divider(color: Colors.black, indent: 70.w, endIndent: 70.w,),
            CustomButton(buttonText: 'Nav', buttonOnPressed: (){GoRouter.of(context).push(AppRouter.kInOpView);})
          ],
        ),
      ),
    );
  }
}