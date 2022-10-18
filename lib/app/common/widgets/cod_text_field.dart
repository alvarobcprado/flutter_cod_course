import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/view_utils.dart';

class CodTextField extends StatelessWidget {
  const CodTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.color,
    this.obscureText = false,
    this.hintStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.textInputAction = TextInputAction.done,
    this.onChanged,
  });

  final Color color;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextStyle? hintStyle;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputAction textInputAction;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    final borderWidth = 2.0.fromHeight(context);
    return TextField(
      controller: controller,
      obscureText: obscureText,
      textInputAction: textInputAction,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle?.copyWith(color: color),
        prefixIcon: prefixIcon,
        prefixIconColor: color,
        suffixIcon: suffixIcon,
        suffixIconColor: color,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: color,
            width: borderWidth,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: color,
            width: borderWidth,
          ),
        ),
      ),
    );
  }
}
