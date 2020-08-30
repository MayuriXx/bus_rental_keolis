import 'package:flutter/material.dart';

class KeolisColors {
  static const MaterialColor theme = const MaterialColor(
    0xFFF4F4F4,
    const <int, Color>{
      50: const Color(0xFFFFFFFF),
      100: const Color(0xFFF4F4F4),
      200: const Color(0xFF786E65),
      300: const Color(0xFF015F7D),
    },
  );
}

class KeolisTheme{
  static final themeData = ThemeData(
    primarySwatch: KeolisColors.theme,
  );
}