// import 'dart:ui';
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

class CcolorConstants {
  static Color app_bar_color = hexToColor('#EC9E00');
  // static Color background_color = hexToColor('#fae18d');
  static Color background_color = hexToColor('#fae18d');
  static Color buttons_Color = hexToColor('#08B0E9');
  static Color primary_text_color = const Color.fromARGB(255, 17, 1, 1);
  static Color transparent = Colors.transparent;
  static Color white = Colors.white;
}
