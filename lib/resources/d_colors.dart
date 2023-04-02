import 'package:flutter/material.dart';

class DColors {
  DColors._();
  static const grey0 = Color(0xFFF9F9F9);
  static const grey1 = Color(0xFFDADEE3);
  static const grey2 = Color(0xFFBDBDBD);
  static const grey3 = Color(0xFF797979);
  static const grey4 = Color(0xFFF8F8F8);
  static const barrier = Color(0x609E9E9E);
  static const dark = Color(0xFF303030);
  static const primary = Color(0xFF424242);
  static const mapRouteBackground = Color(0xFF1D56C9);
  static const mapRoute = Color(0xFF159DFE);
  static const secondary = red;
  static const red = Color(0xFFDF2F45);
  static const redBackground = Color(0xFFFCE8DB);
  static const yellow = Color(0xFFFECE00);
  static const green = Color(0xFF2DBB54);
  static const performance = [
    grey2,
    Color(0xFFCC2937),
    Color(0xFFF77700),
    Color(0xFFFFCE00),
    Color(0xFF34D100),
    Color(0xFF009114),
  ];
  static const heatmap = [
    grey2,
    Color(0xFFF7B700),
  ];
}

@immutable
class Color2 {
  final Color first;
  final Color second;
  static const grey1 = Color2(first: DColors.grey1);
  static const primary = Color2(first: DColors.primary);
  static const redWhite = Color2(first: DColors.red, second: Colors.white);

  const Color2({Color? first, Color? second})
      : first = first ?? Colors.transparent,
        second = second ?? Colors.transparent;

  Color2 withItem1(Color first) => Color2(first: first, second: second);
}
