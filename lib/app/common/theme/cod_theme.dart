import 'package:flutter/material.dart';

class CodTheme extends ThemeExtension<CodTheme> {
  const CodTheme._({
    required this.purple,
    required this.blue,
    required this.orange,
    required this.yellow,
    required this.beige,
  });

  final Color purple;
  final Color blue;
  final Color orange;
  final Color yellow;
  final Color beige;

  const CodTheme.light()
      : purple = const Color(0xFF772299),
        blue = const Color(0xFF55B8C9),
        orange = const Color(0xFFE86929),
        yellow = const Color(0xFFFFAE00),
        beige = const Color(0xFFF9ECE1);

  @override
  ThemeExtension<CodTheme> copyWith({
    Color? purple,
    Color? blue,
    Color? orange,
    Color? yellow,
    Color? beige,
  }) {
    return CodTheme._(
      purple: purple ?? this.purple,
      blue: blue ?? this.blue,
      orange: orange ?? this.orange,
      yellow: yellow ?? this.yellow,
      beige: beige ?? this.beige,
    );
  }

  @override
  ThemeExtension<CodTheme> lerp(ThemeExtension<CodTheme>? other, double t) {
    if (other == null || other is! CodTheme) {
      return this;
    }
    return CodTheme._(
      purple: Color.lerp(purple, other.purple, t)!,
      blue: Color.lerp(blue, other.blue, t)!,
      orange: Color.lerp(orange, other.orange, t)!,
      yellow: Color.lerp(yellow, other.yellow, t)!,
      beige: Color.lerp(beige, other.beige, t)!,
    );
  }
}
