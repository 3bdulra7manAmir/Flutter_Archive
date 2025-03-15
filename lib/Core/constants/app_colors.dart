import 'package:flutter/material.dart';

class AppColors
{
  AppColors._();

  /// [AppGradient]
  static LinearGradient appGradient = const LinearGradient(colors: [Color(0xff662D91), Color(0xff905EB6),],);

  /// [ButtonGradient]
  static LinearGradient buttonGradient = const LinearGradient(colors: [Color(0xff01A99D), Color(0xff01CABC),],);

  /// [BookingGradient]
  static LinearGradient bookingGradient = LinearGradient(colors: [const Color(0xffEDE9F0).withValues(alpha: 0), const Color(0xffCFB2ED),
const Color(0xffEDE9F0).withValues(alpha: 0),],);

  /// [calenderGradient]
  static LinearGradient calenderGradient = const LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter,
    colors: [Color(0xffFFDC95), Color(0xffFFB215),],);

  /// [AppGradient]
  static LinearGradient cardGradient = LinearGradient(colors: [const Color(0xff502173).withValues(alpha: 0.52), const Color(0xff7234A0).withValues(alpha: 0.52)],);

  /// [AppGradient2]
  static LinearGradient appGradient2 = const LinearGradient(colors: [Color(0xff502173), Color(0xff7234A0)],);

  /// [#F1F3FA]
  static Color scaffold = const Color(0xffF1F3FA);

  /// [#FFFFFF]
  static Color white = const Color(0xffFFFFFF);

  /// [#000000]
  static Color black = const Color(0xff000000);
  static Color kTransparentColor =  Colors.transparent;

  /// [#FAFAFA]
  static Color grey = const Color(0xffFAFAFA);

  /// [#DBDFE9]
  static Color disabled = const Color(0xffDBDFE9);

  /// [#662D91]
  static Color primary = const Color(0xff662D91);

  /// [#9983A7]
  static Color secondary = const Color(0xff9983A7);

  /// [#FFB215]
  static Color accent = const Color(0xffFFB215);

  /// [#EDE7F8]
  static Color buttonText = const Color(0xffEDE7F8);

  /// [#777777]
  static Color secondaryText = const Color(0xff777777);
  static Color secondaryText2 = const Color(0xff9C9C9C);

  /// [#78829D]
  static Color dialogText = const Color(0xff78829D);

  /// [#3C3C3C]
  static Color primaryTextColor = const Color(0xff3C3C3C);

  /// [#362E3C]
  static Color darkTextColor = const Color(0xff362E3C);
  static Color primaryTextColor2 = const Color(0xff362E3B);


  /// [#905EB6]
  static Color lightTextColor = const Color(0xff905EB6);

  /// [#555555]
  static Color greyTextColor = const Color(0xff555555);

  /// [#FCFCFC]
  static Color fieldBackground = const Color(0xffFCFCFC);

  /// [#F0F0F0]
  static Color primaryBorder = const Color(0xffF0F0F0);

  /// [#FF3333]
  static Color errorBorder = const Color(0xffFF3333);

  /// [#00A99D]
  static Color focusedBorder = const Color(0xff00A99D);

  /// [#A9A9A9]
  static Color unselectedTabColor = const Color(0xffA9A9A9);

  /// [#646464]
  static Color tileDescriptionColor = const Color(0xff646464);

  /// [#E8E8E8]
  static Color disabledButtonColor = const Color(0xffE8E8E8);

  /// [#7B7B7B]
  static Color disabledButtonTextColor = const Color(0xff7B7B7B);

  /// [#F5F3F7]
  static Color lightPrimaryColor = const Color(0xffF5F3F7);



  /// [AchievmentsCards]
  static Color achievementCardColor1 = const Color.fromRGBO(255, 178, 21, 0.15);
  static Color achievementCardColor2 = const Color.fromRGBO(0, 169, 157, 0.12);
  static Color achievementCardColor3 = const Color.fromRGBO(102, 45, 145, 0.15);
  
  /// [NavBar_HeaderColor]
  static Color navBarHeaderColor = const Color(0xffEFF1F9);
}
