import 'package:flutter/material.dart';

import 'color.dart';

final ThemeData appThemeData = ThemeData(
  primarySwatch: primary_color,
  primaryColor: color_title,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: const TextTheme(
    headline1: TextStyle(
      color: color_title,
      fontSize: 72.0,
      fontWeight: FontWeight.bold,
    ),
    bodyText2: TextStyle(
      color: color_subtitle,
      fontSize: 14.0,
    ),
  ),
  fontFamily: 'Roboto',
);
