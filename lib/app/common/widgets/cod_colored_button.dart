import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/theme/cod_typography.dart';
import 'package:flutter_cod_course/app/common/view_utils.dart';

class CodColoredButton extends StatelessWidget {
  const CodColoredButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
    required this.onPressed,
  });

  final Color backgroundColor;
  final Color textColor;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final typo = Theme.of(context).extension<CodTypography>()!;
    return SizedBox(
      width: double.infinity,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: backgroundColor.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 0,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onPressed,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 8.fromHeight(context),
              ),
              child: Center(
                child: Text(
                  text,
                  style: typo.body.copyWith(color: textColor),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
