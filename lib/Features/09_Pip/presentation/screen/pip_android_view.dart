// import 'dart:math';
// import 'package:floating/floating.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:test_area/Core/constants/app_images.dart';
// import 'package:test_area/Core/utils/styles.dart';

// class PipView extends StatefulWidget
// {
//   const PipView({super.key});

//   @override
//   State<PipView> createState() => _PipViewState();
// }

// class _PipViewState extends State<PipView>
// {
//   @override
//   Widget build(BuildContext context)
//   {
//     final floating = Floating();
//     Future<void> enablePip(BuildContext context,{bool autoEnable = false,}) async
//     {
//       const rational = Rational.landscape();
//       final screenSize = MediaQuery.of(context).size * MediaQuery.of(context).devicePixelRatio;
//       final height = screenSize.width ~/ rational.aspectRatio;

//       final arguments = autoEnable ? OnLeavePiP(
//         sourceRectHint: Rectangle<int>(0, (screenSize.height ~/ 2) - (height ~/ 2), 
//         screenSize.width.toInt(), height,),)

//         : ImmediatePiP(sourceRectHint: Rectangle<int>(0, (screenSize.height ~/ 2) - (height ~/ 2), 
//         screenSize.width.toInt(), height,),);

//       final status = await floating.enable(arguments);
//       debugPrint('PiP enabled? $status');
//     }
//     return PiPSwitcher(
//       childWhenDisabled: 
//       Scaffold(
//         appBar: AppBar(title: Text("Welcome, Shadow", style: AppStyles.textStyle10,),),
//         body: Center(child: Image.asset(AppAssets.images.saidOmarPNG, height: 100.h, width: 100.w,)),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//         floatingActionButton: FutureBuilder<bool>(
//           initialData: false,
//           future: floating.isPipAvailable,
//           builder: (context, snapshot) => snapshot.data ?? false
//           ? Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children:
//             [
//               FloatingActionButton.extended(
//                 onPressed: () => enablePip(context),
//                 label: const Text('Enable PiP'),
//                 icon: const Icon(Icons.picture_in_picture),
//               ),
//               const SizedBox(height: 12),
//               FloatingActionButton.extended(
//                 onPressed: () => enablePip(context, autoEnable: true),
//                 label: const Text('Enable PiP on app minimize'),
//                 icon: const Icon(Icons.auto_awesome),
//               ),
//             ],
//           )
//           : const Card(child: Text('PiP unavailable'),),
//         ),
//       ),
//       childWhenEnabled: Scaffold(
//         body: Center(child: Image.asset(AppAssets.images.saidOmarPNG))
//       ),
//     );
//   }
// }