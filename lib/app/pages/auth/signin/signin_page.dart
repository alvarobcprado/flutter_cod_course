import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/assets_utils.dart';
import 'package:flutter_cod_course/app/common/theme/cod_colors.dart';
import 'package:flutter_cod_course/app/common/theme/cod_typography.dart';
import 'package:flutter_cod_course/app/common/view_utils.dart';
import 'package:flutter_cod_course/app/common/widgets/cod_colored_box_column.dart';
import 'package:flutter_cod_course/app/pages/auth/signin/widgets/signin_buttons.dart';
import 'package:flutter_cod_course/app/pages/auth/signin/widgets/signin_form_fields.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SigninPage extends StatelessWidget {
  SigninPage({super.key});

  final _obscurePasswordNotifier = ValueNotifier<bool>(true);
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<CodColors>()!;
    final typo = Theme.of(context).extension<CodTypography>()!;
    return Scaffold(
      backgroundColor: colors.purple,
      body: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: SingleChildScrollView(
          reverse: true,
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
                    AssetsUtils.logoMono,
                    height: 200.toSize(),
                  ),
                ),
                Form(
                  key: _formKey,
                  child: CodColoredBoxColumn(
                    boxPadding: EdgeInsets.all(24.toSize()),
                    boxColor: colors.beige,
                    boxSize: Size.fromHeight(376.toSize()),
                    children: [
                      Text(
                        'Logar no Chief',
                        style: typo.titleH1.copyWith(
                          color: colors.purple,
                        ),
                      ),
                      SizedBox(height: 8.toSize()),
                      SigninFormFields(
                        emailController: _emailController,
                        passwordController: _passwordController,
                        obscurePasswordNotifier: _obscurePasswordNotifier,
                      ),
                      SigninButtons(formKey: _formKey),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
