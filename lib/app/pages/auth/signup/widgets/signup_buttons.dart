import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/routes.dart';
import 'package:flutter_cod_course/app/common/theme/cod_colors.dart';
import 'package:flutter_cod_course/app/common/theme/cod_typography.dart';
import 'package:flutter_cod_course/app/common/widgets/cod_colored_button.dart';
import 'package:flutter_cod_course/app/common/widgets/cod_text_divider.dart';

class SignupButtons extends StatelessWidget {
  const SignupButtons({
    Key? key,
    required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<CodColors>()!;
    final typo = Theme.of(context).extension<CodTypography>()!;
    return Column(
      children: [
        CodColoredButton(
          backgroundColor: colors.orange,
          textColor: colors.beige,
          text: 'Cadastrar',
          onPressed: () {
            if (_formKey.currentState!.validate()) {
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
          text: 'Login',
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
              CodRoutes.signin,
              (route) => route.isFirst,
            );
          },
        ),
      ],
    );
  }
}
