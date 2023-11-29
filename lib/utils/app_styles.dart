import 'package:flutter/material.dart';

Color primary = Colors.amber;

class Styles{
  static Color primaryColor = Colors.amber;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color textGrey = const Color(0xff989595);
  static Color textPrimary = Colors.amber;
  static Color textSuccess = const Color(0xff127905);
  static Color textDanger = const Color(0xff980606);
  static Color bgColor = Colors.white;
  static Color bgGrey = const Color(0xFFf4f4f4);
  static const white_rgba_ffffff = Color.fromRGBO(255, 255, 255, 1);

  static TextStyle text1 = TextStyle(
      fontFamily: 'SanFrancisco',
      fontSize: 14,
      color: textColor,
      fontWeight: FontWeight.w400
  );

  static TextStyle text2 = TextStyle(
      fontFamily: 'SanFrancisco',
      fontSize: 16,
      color: textGrey,
      fontWeight: FontWeight.w500
  );

  static TextStyle display1 = TextStyle(
      fontFamily: 'SanFrancisco',
      fontSize: 22,
      color: primaryColor,
      fontWeight: FontWeight.bold
  );

  static TextStyle heading1 = TextStyle(
      fontFamily: 'SanFrancisco',
      fontSize: 20,
      color: textColor,
      fontWeight: FontWeight.bold
  );

  static TextStyle heading2 = TextStyle(
      fontFamily: 'SanFrancisco',
      fontSize: 18,
      color: textColor,
      fontWeight: FontWeight.w600
  );

  static TextStyle heading3 = TextStyle(
      fontFamily: 'SanFrancisco',
      fontSize: 16,
      color: textColor,
      fontWeight: FontWeight.w500
  );

  static TextStyle heading4 = TextStyle(
      fontFamily: 'SanFrancisco',
      fontSize: 12,
      color: Colors.grey.shade500,
      fontWeight: FontWeight.w500
  );

  static TextStyle subheading = TextStyle(
      fontFamily: 'SanFrancisco',
      fontSize: 14,
      color: textGrey,
      fontWeight: FontWeight.w300
  );

  static TextStyle text_BOBAC9_12_Medium_Caps = TextStyle(
      color: textGrey,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      letterSpacing: 1.13
  );
}