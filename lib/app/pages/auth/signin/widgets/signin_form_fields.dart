import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/theme/cod_colors.dart';
import 'package:flutter_cod_course/app/common/theme/cod_typography.dart';
import 'package:flutter_cod_course/app/common/validators/email_validator.dart';
import 'package:flutter_cod_course/app/common/validators/required_validator.dart';
import 'package:flutter_cod_course/app/common/view_utils.dart';
import 'package:flutter_cod_course/app/common/widgets/cod_text_field.dart';

class SigninFormFields extends StatelessWidget
    with EmailValidator, RequiredValidator {
  SigninFormFields({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.obscurePasswordNotifier,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final ValueNotifier<bool> obscurePasswordNotifier;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<CodColors>()!;
    final typo = Theme.of(context).extension<CodTypography>()!;
    return Column(
      children: [
        CodFormTextField(
          hintText: 'email@email.com',
          controller: emailController,
          color: colors.purple,
          hintStyle: typo.body,
          validator: validateEmail,
          prefixIcon: Icon(
            Icons.email_outlined,
            color: colors.purple,
          ),
          textInputAction: TextInputAction.next,
        ),
        SizedBox(height: 8.fromHeight(context)),
        ValueListenableBuilder(
          valueListenable: obscurePasswordNotifier,
          builder: (context, obscurePassword, child) {
            return CodFormTextField(
              hintText: 'password',
              controller: passwordController,
              color: colors.purple,
              hintStyle: typo.body,
              validator: validateText,
              prefixIcon: Icon(
                Icons.lock_outline,
                color: colors.purple,
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  obscurePasswordNotifier.value =
                      !obscurePasswordNotifier.value;
                },
                icon: Icon(
                  obscurePassword
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                ),
                color: colors.purple,
              ),
              obscureText: obscurePassword,
            );
          },
        ),
      ],
    );
  }
}
