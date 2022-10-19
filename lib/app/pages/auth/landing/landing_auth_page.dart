import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/assets_utils.dart';
import 'package:flutter_cod_course/app/common/routes.dart';
import 'package:flutter_cod_course/app/common/theme/cod_colors.dart';
import 'package:flutter_cod_course/app/common/theme/cod_typography.dart';
import 'package:flutter_cod_course/app/common/view_utils.dart';
import 'package:flutter_cod_course/app/common/widgets/cod_colored_box_column.dart';
import 'package:flutter_cod_course/app/common/widgets/cod_colored_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LandingAuthPage extends StatelessWidget {
  const LandingAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<CodColors>()!;
    final typo = Theme.of(context).extension<CodTypography>()!;
    return Scaffold(
      backgroundColor: colors.beige,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 32.fromHeight(context),
              ),
              child: SvgPicture.asset(
                AssetsUtils.logo,
                height: 200.fromHeight(context),
              ),
            ),
            CodColoredBoxColumn(
              boxColor: colors.purple,
              boxPadding: EdgeInsets.all(24.fromHeight(context)),
              boxSize: Size.fromHeight(376.fromHeight(context)),
              children: [
                Text(
                  'Bem vindo(a) ao Chief',
                  style: typo.titleH1.copyWith(
                    color: colors.beige,
                  ),
                ),
                SizedBox(height: 16.fromHeight(context)),
                Text(
                  'Essa é a área de membros do Chief. Caso já tenha uma conta, clique em logar, senão, clique em criar conta.',
                  style: typo.body.copyWith(
                    color: colors.beige,
                  ),
                ),
                SizedBox(height: 32.fromHeight(context)),
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
            ),
          ],
        ),
      ),
    );
  }
}
