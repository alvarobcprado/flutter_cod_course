import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/view_utils.dart';
import 'package:flutter_cod_course/app/common/widgets/cod_teacher_preview_card.dart';
import 'package:flutter_cod_course/app/pages/home/widgets/home_section_header.dart';

class HomeTeachersSection extends StatelessWidget {
  const HomeTeachersSection({super.key});

  static const _teachers = [
    {
      'name': 'João da Silva',
      'urlImage': 'https://picsum.photos/200',
      'specialty': 'UI/UX Designer',
    },
    {
      'name': 'Luciano Henrique',
      'urlImage': 'https://picsum.photos/201',
      'specialty': 'Front-end Developer',
    },
    {
      'name': 'José Alves',
      'urlImage': 'https://picsum.photos/202',
      'specialty': 'Back-end Developer',
    },
    {
      'name': 'Ana Maria',
      'urlImage': 'https://picsum.photos/203',
      'specialty': 'Mobile Developer',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeSectionHeader(
          onTapShowMore: () {},
          headerTitle: 'Professores',
          showMoreTitle: 'ver mais',
        ),
        SizedBox(height: 8.toSize()),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              _teachers.length,
              (index) => Padding(
                padding: EdgeInsets.only(right: 24.toSize()),
                child: CodTeacherPreviewCard(
                  teacherName: _teachers[index]['name']!,
                  teacherSpecialty: _teachers[index]['specialty']!,
                  urlImage: _teachers[index]['urlImage']!,
                  onTap: () {},
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
