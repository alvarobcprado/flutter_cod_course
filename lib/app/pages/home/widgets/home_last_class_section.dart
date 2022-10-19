import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/view_utils.dart';
import 'package:flutter_cod_course/app/common/widgets/cod_class_progress_card.dart';
import 'package:flutter_cod_course/app/pages/home/widgets/home_section_header.dart';

class HomeLastClassSection extends StatelessWidget {
  const HomeLastClassSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final classDuration = Random().nextInt(60);
    final classProgress = Random().nextInt(classDuration);
    return Column(
      children: [
        HomeSectionHeader(
          headerTitle: 'Última aula',
          showMoreTitle: 'ver mais',
          onTapShowMore: () {},
        ),
        SizedBox(height: 8.toSize()),
        CodClassProgressCard(
          classTitle: 'Cores',
          classSubtitle: 'O que é RGB?',
          classDuration: Duration(minutes: classDuration),
          classProgress: Duration(minutes: classProgress),
          onTap: () {},
        ),
      ],
    );
  }
}
