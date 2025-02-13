import 'package:flutter/material.dart';

class RiverpodThemeModel extends ChangeNotifier
{
  ThemeData currentTheme = ThemeData.light();
  
  void themeChanger()
  {
    if (currentTheme == ThemeData.light())
    {
      currentTheme = ThemeData.dark();
      print("currentTheme: ThemeData.dark()");
    }
    else
    {
      currentTheme = ThemeData.light();
      print("currentTheme: ThemeData.light()");
    }
    notifyListeners();
  }

}