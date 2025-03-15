import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppPadding
{
  AppPadding._();

  static EdgeInsets kSymmetric24H = EdgeInsets.symmetric(horizontal: 24.w,);
  static EdgeInsets kSymmetric16H = EdgeInsets.symmetric(horizontal: 16.w);

  static EdgeInsets kSymmetric16V = EdgeInsets.symmetric(vertical: 16.w);
  static EdgeInsets kSymmetric24V = EdgeInsets.symmetric(vertical: 24.w);

  static EdgeInsets kAll10 = const EdgeInsets.all(10);
  static EdgeInsets kAll8 = const EdgeInsets.all(8);

  static EdgeInsets kZeroPadding = EdgeInsets.zero;
}
