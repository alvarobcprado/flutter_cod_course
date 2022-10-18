import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/theme/cod_colors.dart';
import 'package:flutter_cod_course/app/common/theme/cod_typography.dart';
import 'package:flutter_cod_course/app/common/view_utils.dart';
import 'package:flutter_cod_course/app/common/widgets/colored_box_column.dart';
import 'package:flutter_cod_course/app/pages/home/widgets/home_header.dart';
import 'package:flutter_cod_course/app/pages/home/widgets/home_section_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final typos = Theme.of(context).extension<CodTypography>()!;
    final colors = Theme.of(context).extension<CodColors>()!;

    return Scaffold(
      backgroundColor: colors.purple,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeHeader(
                title: 'Olá João, seja bem-vindo!',
                subtitle: 'Turma 01',
                urlImage: 'https://picsum.photos/200',
                onTapExit: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
              ),
              ColoredBoxColumn(
                boxColor: colors.beige,
                boxSize: Size.fromHeight(491.fromHeight(context)),
                boxPadding: EdgeInsets.symmetric(
                  horizontal: 24.fromHeight(context),
                ),
                children: [
                  SizedBox(height: 24.fromHeight(context)),
                  HomeSectionHeader(
                    headerTitle: 'Matérias',
                    showMoreTitle: 'Ver mais',
                    onTapShowMore: () {},
                  ),
                  SizedBox(
                    height: 72.fromHeight(context),
                    width: 96.fromHeight(context),
                    child: Card(
                      color: colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 0,
                      child: Center(
                        child: Text(
                          'Cores',
                          style: typos.titleH3.copyWith(
                            color: colors.beige,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
