import 'dart:ui';
import 'package:chatapp/utils/app_styles.dart';
import 'package:flutter/material.dart';

@immutable
class AppTheme {

  const AppTheme._();

  static ThemeData define() {
    double screenWidth = window.physicalSize.width;
    return ThemeData(
      fontFamily: 'SanFrancisco',
      primaryColor: Styles.primaryColor,
      scaffoldBackgroundColor: Styles.bgColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme:
      ColorScheme.fromSwatch().copyWith(secondary: Styles.primaryColor),
      inputDecorationTheme: inputDecorationTheme(),
      backgroundColor: Styles.bgColor,
      progressIndicatorTheme: ProgressIndicatorThemeData(color: Styles.primaryColor),
    );
  }
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    // borderSide: const BorderSide(color: AppColors.grey_rgba_b4b4b4),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // If  you are using latest version of flutter then lable text and hint text shown like this
    // if you r using flutter less then 1.20.* then maybe this is not working properly
    // if we are define our floatingLabelBehavior in our theme then it's not applayed
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}
