import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/view_utils.dart';

class CodTextDivider extends StatelessWidget {
  const CodTextDivider({
    super.key,
    this.padding,
    required this.color,
    this.thickness = 1,
    required this.text,
    this.textStyle,
  });

  final EdgeInsetsGeometry? padding;
  final Color color;
  final double thickness;
  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ??
          EdgeInsets.symmetric(
            vertical: 8.fromHeight(context),
          ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Divider(
              color: color,
              thickness: thickness,
            ),
          ),
          SizedBox(width: 8.fromWidth(context)),
          Text(
            text,
            style: textStyle?.copyWith(
              color: color,
            ),
          ),
          SizedBox(width: 8.fromWidth(context)),
          Expanded(
            child: Divider(
              color: color,
              thickness: thickness,
            ),
          ),
        ],
      ),
    );
  }
}
