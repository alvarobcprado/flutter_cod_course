import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/assets_utils.dart';
import 'package:flutter_cod_course/app/common/routes.dart';
import 'package:flutter_cod_course/app/common/theme/cod_colors.dart';
import 'package:flutter_cod_course/app/common/theme/cod_typography.dart';
import 'package:flutter_cod_course/app/common/view_utils.dart';
import 'package:flutter_cod_course/app/common/widgets/cod_text_divider.dart';
import 'package:flutter_cod_course/app/common/widgets/cod_text_field.dart';
import 'package:flutter_cod_course/app/common/widgets/colored_box_column.dart';
import 'package:flutter_cod_course/app/common/widgets/colored_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SigninPage extends StatelessWidget {
  SigninPage({super.key});

  final _obscurePasswordNotifier = ValueNotifier<bool>(true);
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
                    vertical: 32.fromHeight(context),
                  ),
                  child: SvgPicture.asset(
                    AssetsUtils.logoMono,
                    height: 200.fromHeight(context),
                  ),
                ),
                ColoredBoxColumn(
                  boxPadding: EdgeInsets.all(24.fromHeight(context)),
                  boxColor: colors.beige,
                  boxSize: Size.fromHeight(376.fromHeight(context)),
                  children: [
                    Text(
                      'Logar no Chief',
                      style: typo.titleH1.copyWith(
                        color: colors.purple,
                      ),
                    ),
                    SizedBox(height: 8.fromHeight(context)),
                    CodTextField(
                      hintText: 'email@email.com',
                      controller: _emailController,
                      color: colors.purple,
                      hintStyle: typo.body,
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: colors.purple,
                      ),
                      textInputAction: TextInputAction.next,
                    ),
                    SizedBox(height: 8.fromHeight(context)),
                    ValueListenableBuilder(
                      valueListenable: _obscurePasswordNotifier,
                      builder: (context, obscurePassword, child) {
                        return CodTextField(
                          hintText: 'password',
                          controller: _passwordController,
                          color: colors.purple,
                          hintStyle: typo.body,
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: colors.purple,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              _obscurePasswordNotifier.value =
                                  !_obscurePasswordNotifier.value;
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
                    ColoredButton(
                      backgroundColor: colors.orange,
                      textColor: colors.beige,
                      text: 'Login',
                      onPressed: () {
                        Navigator.of(context).pushNamed(CodRoutes.signin);
                      },
                    ),
                    CodTextDivider(
                      color: colors.purple,
                      text: 'ou',
                      textStyle: typo.body,
                    ),
                    ColoredButton(
                      backgroundColor: colors.purple,
                      textColor: colors.beige,
                      text: 'Cadastrar',
                      onPressed: () {
                        Navigator.of(context).pushNamed(CodRoutes.signup);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
