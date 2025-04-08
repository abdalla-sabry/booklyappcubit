import 'package:booklyappcubit/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeColorData{
  static final DarkTheme= ThemeData(
    scaffoldBackgroundColor: kPrimaryColor,
    primaryColor: Colors.white,
    brightness: Brightness.dark,
    iconTheme: IconThemeData(color: Colors.white),
    textTheme: TextTheme(
      titleLarge: TextStyle(color: Colors.white,fontSize: 20),
      bodyLarge: TextStyle(color: Colors.white,fontSize: 18),
      bodyMedium: TextStyle(color: Colors.white70,fontSize: 16),
      bodySmall: TextStyle(
        color: Colors.white,fontSize: 14
      ),

    ),

  );


}