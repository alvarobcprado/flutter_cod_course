import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CodTypography extends ThemeExtension<CodTypography> {
  const CodTypography._({
    required this.titleH1,
    required this.titleH2,
    required this.titleH3,
    required this.body,
  });

  CodTypography()
      : titleH1 = GoogleFonts.oswald(
          fontSize: 32,
          height: 1.5,
          fontWeight: FontWeight.w500,
        ),
        titleH2 = GoogleFonts.oswald(
          fontSize: 24,
          height: 1.5,
          fontWeight: FontWeight.w500,
        ),
        titleH3 = GoogleFonts.oswald(
          fontSize: 16,
          height: 1.5,
          fontWeight: FontWeight.w500,
        ),
        body = GoogleFonts.montserrat(
          fontSize: 16,
          height: 1.5,
          fontWeight: FontWeight.w500,
        );

  final TextStyle titleH1;
  final TextStyle titleH2;
  final TextStyle titleH3;
  final TextStyle body;

  @override
  ThemeExtension<CodTypography> copyWith({
    TextStyle? titleH1,
    TextStyle? titleH2,
    TextStyle? titleH3,
    TextStyle? body,
  }) {
    return CodTypography._(
      titleH1: titleH1 ?? this.titleH1,
      titleH2: titleH2 ?? this.titleH2,
      titleH3: titleH3 ?? this.titleH3,
      body: body ?? this.body,
    );
  }

  @override
  ThemeExtension<CodTypography> lerp(
    ThemeExtension<CodTypography>? other,
    double t,
  ) {
    if (other == null || other is! CodTypography) {
      return this;
    }
    return CodTypography._(
      titleH1: TextStyle.lerp(titleH1, other.titleH1, t)!,
      titleH2: TextStyle.lerp(titleH2, other.titleH2, t)!,
      titleH3: TextStyle.lerp(titleH3, other.titleH3, t)!,
      body: TextStyle.lerp(body, other.body, t)!,
    );
  }
}
