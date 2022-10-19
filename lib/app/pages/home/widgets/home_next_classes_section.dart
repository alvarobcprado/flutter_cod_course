import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/view_utils.dart';
import 'package:flutter_cod_course/app/common/widgets/cod_class_info_card.dart';
import 'package:flutter_cod_course/app/pages/home/widgets/home_section_header.dart';

class HomeNextClassesSection extends StatelessWidget {
  const HomeNextClassesSection({
    Key? key,
  }) : super(key: key);

  static const _classes = [
    {
      'name': 'Cores',
      'teacher': 'Felipe',
    },
    {
      'name': 'Tipografia',
      'teacher': 'Ana',
    },
    {
      'name': 'Gestalt',
      'teacher': 'Pedro',
    },
    {
      'name': 'Grid',
      'teacher': 'Lucas',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeSectionHeader(
          headerTitle: 'Próximas aulas',
          showMoreTitle: 'ver mais',
          onTapShowMore: () {},
        ),
        SizedBox(height: 8.toSize()),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              _classes.length,
              (index) => Padding(
                padding: EdgeInsets.only(right: 16.toSize()),
                child: CodClassInfoCard(
                  onTap: () {},
                  classTitle: _classes[index]['name']!,
                  teacherName: _classes[index]['teacher']!,
                  classDate: DateTime(
                    2022,
                    Random().nextInt(12),
                    Random().nextInt(28),
                  ),
                  isLive: Random().nextBool(),
                  classDescription:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras pellentesque auctor tempor dui, habitasse nisl vel, semper senectus. Egestas sagittis elit mattis facilisi eget viverra quis. Arcu, diam amet aenean magna ullamcorper. Et ultrices imperdiet volutpat sagittis diam.',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
