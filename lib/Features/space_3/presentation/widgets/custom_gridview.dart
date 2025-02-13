import 'package:flutter/material.dart';

class CustomGridViewBuilder extends StatelessWidget
{
  const CustomGridViewBuilder({super.key,
  this.gridScrollDir,
  this.gridPadding,
  required this.gridItemCount,
  required this.gridCrossAxisCount,
  this.gridCrossAxisSpacing,
  this.gridMainAxisExtent,
  required this.gridChildAspectRatio,
  required this.grideItemBuilder,
  });


  final Axis? gridScrollDir;
  final EdgeInsets? gridPadding;
  final int? gridItemCount;
  final int gridCrossAxisCount;
  final double? gridCrossAxisSpacing;
  final double? gridMainAxisExtent;
  final double gridChildAspectRatio;
  final Widget Function(BuildContext, int) grideItemBuilder;

  @override
  Widget build(BuildContext context)
  {
    return GridView.builder(
      scrollDirection: gridScrollDir ?? Axis.vertical,
      shrinkWrap: true,
      padding: gridPadding,
      itemCount: gridItemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: gridCrossAxisCount,
        crossAxisSpacing: gridCrossAxisSpacing ?? 0,
        mainAxisExtent: gridMainAxisExtent,
        childAspectRatio: gridChildAspectRatio,
      ),
      itemBuilder: (context, index) => grideItemBuilder(context, index)
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:test_area/Core/constants/app_padding.dart';
// import 'package:test_area/Features/space_1/presentation/widgets/custom_listbuilder.dart';
// import 'package:test_area/Features/space_3/presentation/widgets/custom_gridview.dart';
// import 'package:test_area/Features/space_3/presentation/widgets/custom_grid_return.dart';

// class AreaView extends StatelessWidget
// {
//   AreaView({super.key});

//   final List<String> items = ['A', 'B', 'C', 'D', 'E', 'F'];

//   @override
//   Widget build(BuildContext context)
//   {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children:
//           [
//             Expanded(
//               child: CustomGridViewBuilder(
//                 gridPadding: const EdgeInsets.all(30),
//                 gridItemCount: items.length,
//                 gridCrossAxisCount: 3,
//                 gridCrossAxisSpacing: 2,
//                 gridChildAspectRatio: 1.2,
//                 grideItemBuilder: (context, index) =>
//                   GridViewReturnedWidget(text: items[index]),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

