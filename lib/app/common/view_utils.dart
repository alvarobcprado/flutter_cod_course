import 'dart:math';

import 'package:flutter/material.dart';

extension SizesExtension on num {
  static const double _baseSize = 640;

  static final _mediaQuery = MediaQueryData.fromWindow(
    WidgetsBinding.instance.window,
  );

  double _getScreenWidth() {
    final viewPadding = _mediaQuery.padding.horizontal;
    final screenWidth = _mediaQuery.size.width;
    return screenWidth - viewPadding;
  }

  double _getScreenHeight() {
    final viewPadding = _mediaQuery.padding.vertical;
    final screenHeight = _mediaQuery.size.height;
    return screenHeight - viewPadding;
  }

  double toSize() {
    final size = max(_getScreenHeight(), _getScreenWidth());
    return size * (this / _baseSize);
  }
}

extension DatesExtension on DateTime {
  String get formatted => '$day/$month/$year';

  String get shortMonthName => Month.values[month - 1].shortName;

  String get longMonthName => Month.values[month - 1].longName;
}

enum Month {
  january('Janeiro', 'Jan'),
  february('Fevereiro', 'Fev'),
  march('Março', 'Mar'),
  april('Abril', 'Abr'),
  may('Maio', 'Mai'),
  june('Junho', 'Jun'),
  july('Julho', 'Jul'),
  august('Agosto', 'Ago'),
  september('Setembro', 'Set'),
  october('Outubro', 'Out'),
  november('Novembro', 'Nov'),
  december('Dezembro', 'Dez');

  const Month(this.longName, this.shortName);
  final String longName;
  final String shortName;
}
