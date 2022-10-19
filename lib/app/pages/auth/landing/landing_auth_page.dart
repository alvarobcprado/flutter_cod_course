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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 32.toSize(),
                ),
                child: SvgPicture.asset(
                  AssetsUtils.logo,
                  height: 200.toSize(),
                ),
              ),
              CodColoredBoxColumn(
                boxColor: colors.purple,
                boxPadding: EdgeInsets.all(24.toSize()),
                boxSize: Size.fromHeight(376.toSize()),
                children: [
                  const LandingHeader(),
                  SizedBox(height: 32.toSize()),
                  const LandingRedirectButtons(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
