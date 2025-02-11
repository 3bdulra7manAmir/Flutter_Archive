import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_area/Core/constants/app_colors.dart';
import 'package:test_area/Features/main/presentation/controllers/riverpod_info_provider.dart';
import 'package:test_area/Features/main/presentation/widgets/custom_card.dart';

class MainView extends ConsumerWidget
{
  const MainView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final infoProviderList = ref.watch(infoProvider);
    return SafeArea(
      child: Scaffold(
        body: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          shrinkWrap: true,
          itemBuilder: (context, index) => CustomTestCard(index: index),
          separatorBuilder: (context, index) => const Divider(thickness: 2, color: AppColors.kSecondGradientColor,),
          itemCount: infoProviderList.length,
        ),
      ),
    );
  }
}

