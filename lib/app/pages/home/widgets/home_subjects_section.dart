import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/assets_utils.dart';
import 'package:flutter_cod_course/app/common/view_utils.dart';
import 'package:flutter_cod_course/app/common/widgets/cod_subject_card.dart';
import 'package:flutter_cod_course/app/pages/home/widgets/home_section_header.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeSubjectsSection extends StatelessWidget {
  const HomeSubjectsSection({
    Key? key,
  }) : super(key: key);
  static const _subjects = [
    {
      'name': 'Cores',
      'image': AssetsUtils.cardColors,
    },
    {
      'name': 'Tipografia',
      'image': AssetsUtils.cardTypography,
    },
    {
      'name': 'Gestalt',
      'image': AssetsUtils.cardGestalt,
    },
    {
      'name': 'Grid',
      'image': AssetsUtils.cardGrid,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeSectionHeader(
          headerTitle: 'Matérias',
          showMoreTitle: 'ver mais',
          onTapShowMore: () {},
        ),
        SizedBox(height: 8.toSize()),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              _subjects.length,
              (index) => Padding(
                padding: EdgeInsets.only(right: 8.toSize()),
                child: CodSubjectCard(
                  subjectIcon: SvgPicture.asset(
                    _subjects[index]['image']!,
                    height: 24.toSize(),
                  ),
                  onTap: () {},
                  subjectTitle: _subjects[index]['name']!,
                  subjectClasses: Random().nextInt(20),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
