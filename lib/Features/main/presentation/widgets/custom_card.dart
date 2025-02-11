
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_area/Core/utils/styles.dart';
import 'package:test_area/Core/widgets/containers/custom_container.dart';
import 'package:test_area/Features/main/presentation/controllers/riverpod_info_provider.dart';

class CustomTestCard extends ConsumerWidget
{
  const CustomTestCard({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final infoProviderList = ref.read(infoProvider);
    return CustomContainer(
      containerHeight: 70.h,
      containerChild: Row(
        children:
        [
          Image.asset(infoProviderList[index].imagePath),
          15.horizontalSpace,
          Text(infoProviderList[index].name, style: Styles.textStyle20),
          15.horizontalSpace,
          Text(infoProviderList[index].description, style: Styles.textStyle16.copyWith(fontWeight: FontWeight.normal)),
          15.horizontalSpace,
          Text(infoProviderList[index].age.toString(), style: Styles.textStyle14.copyWith(fontWeight: FontWeight.normal)),

        ],
      ),
      
    );
  }
}