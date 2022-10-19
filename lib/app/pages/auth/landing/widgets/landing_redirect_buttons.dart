import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/routes.dart';
import 'package:flutter_cod_course/app/common/theme/cod_colors.dart';
import 'package:flutter_cod_course/app/common/view_utils.dart';
import 'package:flutter_cod_course/app/common/widgets/cod_colored_button.dart';

class LandingRedirectButtons extends StatelessWidget {
  const LandingRedirectButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<CodColors>()!;

    return Column(
      children: [
        CodColoredButton(
          backgroundColor: colors.orange,
          textColor: colors.beige,
          text: 'Login',
          onPressed: () {
            Navigator.of(context).pushNamed(CodRoutes.signin);
          },
        ),
        SizedBox(height: 24.fromHeight(context)),
        CodColoredButton(
          backgroundColor: colors.beige,
          textColor: colors.purple,
          text: 'Criar conta',
          onPressed: () {
            Navigator.of(context).pushNamed(CodRoutes.signup);
          },
        ),
      ],
    );
  }
}
