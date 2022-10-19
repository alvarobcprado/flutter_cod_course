import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/routes.dart';
import 'package:flutter_cod_course/app/common/theme/cod_colors.dart';
import 'package:flutter_cod_course/app/common/theme/cod_typography.dart';
import 'package:flutter_cod_course/app/common/view_utils.dart';
import 'package:flutter_cod_course/app/common/widgets/cod_colored_button.dart';
import 'package:flutter_cod_course/app/common/widgets/cod_text_divider.dart';

class SigninButtons extends StatelessWidget {
  const SigninButtons({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<CodColors>()!;
    final typo = Theme.of(context).extension<CodTypography>()!;
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            onPressed: () {},
            child: Text(
              'Esqueceu a senha?',
              style: typo.body.copyWith(
                color: colors.orange,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
                decorationThickness: 2.fromHeight(context),
              ),
            ),
          ),
        ),
        SizedBox(height: 16.fromHeight(context)),
        CodColoredButton(
          backgroundColor: colors.orange,
          textColor: colors.beige,
          text: 'Login',
          onPressed: () {
            if (formKey.currentState!.validate()) {
              Navigator.of(context).pushNamed(CodRoutes.home);
            }
          },
        ),
        CodTextDivider(
          color: colors.purple,
          text: 'ou',
          textStyle: typo.body,
        ),
        CodColoredButton(
          backgroundColor: colors.purple,
          textColor: colors.beige,
          text: 'Cadastrar',
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
              CodRoutes.signup,
              (route) => route.isFirst,
            );
          },
        ),
      ],
    );
  }
}
