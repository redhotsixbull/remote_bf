import 'package:flutter/material.dart';

class BFColor {
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color yellow = Color(0xFFD6AC7C);

  static const Color gray200 = Color(0xFF282D31);
  static const Color gray300 = Color(0xFF32373B);
  static const Color gray500 = Color(0xFF737E87);

  static const MaterialColor primaryColor = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(0xFFFAFAFA),
      100: Color(0xFFF5F5F5),
      200: Color(0xFFECECEC),
      300: Color(0xFFD4D4D4),
      400: Color(0xFFA8A8A8),
      500: Color(_primaryValue),
      600: Color(0xFF888888),
      700: Color(0xFF707070),
      800: Color(0xFF555555),
      900: Color(0xFF333333),
    },
  );

  static const int _primaryValue = 0xFF1D2022;

  // Gray color 계열 채워 넣어 주세요
  static const MaterialColor gray = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(0xFFFAFBFB),
      100: Color(0xFFF2F5F6),
      200: Color(0xFFE3EAEB),
      300: Color(0xFFC5D3D6),
      400: Color(0xFF9BAFAF),
      500: Color(0xFF737E87),
      600: Color(0xFF4E6A73),
      700: Color(0xFF455E66),
      800: Color(0xFF3A5258),
      900: Color(0xFF2D4146),
    },
  );
}
