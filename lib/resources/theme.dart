import 'package:flutter/material.dart';

import 'd_colors.dart';

final theme = ThemeData(
  primaryColor: DColors.primary,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: 'gotham',
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(color: DColors.primary),
    titleSpacing: 0,
    centerTitle: true,
    elevation: 0,
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: DColors.primary,
    primary: DColors.primary,
    secondary: DColors.primary,
    background: Colors.white,
  ),
);
