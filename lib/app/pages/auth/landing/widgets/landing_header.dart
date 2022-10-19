import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/theme/cod_colors.dart';
import 'package:flutter_cod_course/app/common/theme/cod_typography.dart';
import 'package:flutter_cod_course/app/common/view_utils.dart';

class LandingHeader extends StatelessWidget {
  const LandingHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<CodColors>()!;
    final typo = Theme.of(context).extension<CodTypography>()!;
    return Column(
      children: [
        Text(
          'Bem vindo(a) ao Chief',
          style: typo.titleH1.copyWith(
            color: colors.beige,
          ),
        ),
        SizedBox(height: 16.toSize()),
        Text(
          'Essa é a área de membros do Chief. Caso já tenha uma conta, clique em logar, senão, clique em criar conta.',
          style: typo.body.copyWith(
            color: colors.beige,
          ),
        ),
      ],
    );
  }
}
