import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/assets_utils.dart';
import 'package:flutter_cod_course/app/common/theme/cod_colors.dart';
import 'package:flutter_cod_course/app/common/view_utils.dart';
import 'package:flutter_cod_course/app/common/widgets/cod_colored_box_column.dart';
import 'package:flutter_cod_course/app/pages/auth/landing/widgets/landing_header.dart';
import 'package:flutter_cod_course/app/pages/auth/landing/widgets/landing_redirect_buttons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LandingAuthPage extends StatelessWidget {
  const LandingAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<CodColors>()!;
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
                const LandingHeader(),
                SizedBox(height: 32.fromHeight(context)),
                const LandingRedirectButtons(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
