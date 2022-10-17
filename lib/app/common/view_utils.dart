import 'package:flutter/material.dart';

extension SizesExtension on num {
  static const double _baseWidth = 360;
  static const double _baseHeight = 640;

  double fromWidth(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width - mediaQuery.padding.horizontal;
    return screenWidth * (this / _baseWidth);
  }

  double fromHeight(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height - mediaQuery.padding.vertical;

    return screenHeight * (this / _baseHeight);
  }
}
