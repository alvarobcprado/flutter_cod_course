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
