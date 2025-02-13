import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_area/Core/constants/app_padding.dart';
import 'package:test_area/Features/space_1/presentation/widgets/custom_listbuilder.dart';
import 'package:test_area/Features/space_3/presentation/widgets/custom_gridview.dart';
import 'package:test_area/Features/space_3/presentation/widgets/custom_grid_return.dart';

class AreaView extends StatelessWidget
{
  AreaView({super.key});

  final List<String> items = ['A', 'B', 'C', 'D', 'E', 'F'];

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children:
          [
            Expanded(
              child: CustomGridViewBuilder(
                gridPadding: const EdgeInsets.all(30),
                gridItemCount: items.length,
                gridCrossAxisCount: 3,
                gridCrossAxisSpacing: 2,
                gridChildAspectRatio: 1.2,
                grideItemBuilder: (context, index) =>
                  GridViewReturnedWidget(text: items[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

