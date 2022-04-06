
import 'package:flutter/material.dart';
import 'package:sahim/theme/colors.dart';

class SahimTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: SahimColors.darkgrey,
    colorScheme: const ColorScheme.light(),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: SahimColors.grey,
    fontFamily: "arabic",
    
    colorScheme: const ColorScheme.dark(),
    textTheme:  const TextTheme(
      headline4: TextStyle(fontSize: 26, fontWeight: FontWeight.w600,color: SahimColors.green),
      headline5: TextStyle(fontSize: 26, fontWeight: FontWeight.w400,color: SahimColors.green),
      headline3: TextStyle(fontSize: 22, fontWeight: FontWeight.w400,color: SahimColors.green),
      headline6: TextStyle(
          fontSize: 22, fontWeight: FontWeight.w500, letterSpacing: 0.15,color: SahimColors.grey1),
      subtitle1: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.15,color: SahimColors.green),
      subtitle2: TextStyle(
          fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.1,color: SahimColors.green),
      bodyText1: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w400, letterSpacing: 0.5,color: SahimColors.green),
      bodyText2: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w400, letterSpacing: 0.25,color: SahimColors.grey1),
      button: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 1.25,color: SahimColors.white),
      caption: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w500, letterSpacing: 0.4,color: SahimColors.blue),
      overline: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 1.5,color: SahimColors.orange),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: SahimColors.grey,
      elevation: 0,
      shadowColor: SahimColors.grey,
      centerTitle: true,
    ),
    buttonTheme: ButtonThemeData(buttonColor: SahimColors.green),
    bottomNavigationBarTheme:const  BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(size: 30),
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      elevation: 12.0,
      selectedItemColor: SahimColors.green,
      unselectedItemColor: SahimColors.grey1,
      selectedLabelStyle: TextStyle(color: SahimColors.green,height: 1),
      unselectedLabelStyle:  TextStyle(height: 0.0, fontSize: 0.0),
    ),


  );
}
