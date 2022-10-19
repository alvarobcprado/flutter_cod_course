import 'package:flutter/material.dart';

class CodColors extends ThemeExtension<CodColors> {
  const CodColors._({
    required this.purple,
    required this.blue,
    required this.orange,
    required this.yellow,
    required this.beige,
    required this.grey,
    required this.red,
  });

  final Color purple;
  final Color blue;
  final Color orange;
  final Color yellow;
  final Color beige;
  final Color grey;
  final Color red;

  const CodColors.light()
      : purple = const Color(0xFF772299),
        blue = const Color(0xFF55B8C9),
        orange = const Color(0xFFE86929),
        yellow = const Color(0xFFFFAE00),
        beige = const Color(0xFFF9ECE1),
        grey = const Color(0xFF736956),
        red = const Color(0xFFFF0000);

  @override
  ThemeExtension<CodColors> copyWith({
    Color? purple,
    Color? blue,
    Color? orange,
    Color? yellow,
    Color? beige,
    Color? grey,
    Color? red,
  }) {
    return CodColors._(
      purple: purple ?? this.purple,
      blue: blue ?? this.blue,
      orange: orange ?? this.orange,
      yellow: yellow ?? this.yellow,
      beige: beige ?? this.beige,
      grey: grey ?? this.grey,
      red: red ?? this.red,
    );
  }

  @override
  ThemeExtension<CodColors> lerp(ThemeExtension<CodColors>? other, double t) {
    if (other == null || other is! CodColors) {
      return this;
    }
    return CodColors._(
      purple: Color.lerp(purple, other.purple, t)!,
      blue: Color.lerp(blue, other.blue, t)!,
      orange: Color.lerp(orange, other.orange, t)!,
      yellow: Color.lerp(yellow, other.yellow, t)!,
      beige: Color.lerp(beige, other.beige, t)!,
      grey: Color.lerp(grey, other.grey, t)!,
      red: Color.lerp(red, other.red, t)!,
    );
  }
}
