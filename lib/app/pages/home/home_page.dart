import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/theme/cod_colors.dart';
import 'package:flutter_cod_course/app/common/view_utils.dart';
import 'package:flutter_cod_course/app/common/widgets/cod_colored_box_column.dart';
import 'package:flutter_cod_course/app/pages/home/widgets/home_header.dart';
import 'package:flutter_cod_course/app/pages/home/widgets/home_last_class_section.dart';
import 'package:flutter_cod_course/app/pages/home/widgets/home_next_classes_section.dart';
import 'package:flutter_cod_course/app/pages/home/widgets/home_subjects_section.dart';
import 'package:flutter_cod_course/app/pages/home/widgets/home_teachers_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<CodColors>()!;

    return Scaffold(
      backgroundColor: colors.purple,
      body: SafeArea(
        child: Column(
          children: [
            HomeHeader(
              title: 'Olá, bem-vindo Fulano!',
              subtitle: 'Turma 01',
              urlImage: 'https://picsum.photos/200',
              onTapExit: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
            ),
            Expanded(
              child: CodColoredBoxColumn(
                boxColor: colors.beige,
                boxSize: Size.fromHeight(491.toSize()),
                boxPadding: EdgeInsets.all(24.toSize()),
                children: [
                  const HomeSubjectsSection(),
                  SizedBox(height: 24.toSize()),
                  const HomeLastClassSection(),
                  SizedBox(height: 24.toSize()),
                  const HomeNextClassesSection(),
                  SizedBox(height: 24.toSize()),
                  const HomeTeachersSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
