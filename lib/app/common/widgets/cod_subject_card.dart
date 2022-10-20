import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/theme/cod_colors.dart';
import 'package:flutter_cod_course/app/common/theme/cod_typography.dart';
import 'package:flutter_cod_course/app/common/view_utils.dart';

class CodSubjectCard extends StatelessWidget {
  const CodSubjectCard({
    Key? key,
    required this.subjectIcon,
    required this.subjectTitle,
    required this.subjectClasses,
    required this.onTap,
  }) : super(key: key);

  final Widget subjectIcon;
  final String subjectTitle;
  final int subjectClasses;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final typos = Theme.of(context).extension<CodTypography>()!;
    final colors = Theme.of(context).extension<CodColors>()!;
    return Container(
      width: 96.toSize(),
      height: 72.toSize(),
      decoration: BoxDecoration(
        color: colors.purple,
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.hardEdge,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.all(4.toSize()),
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  subjectIcon,
                  Text(
                    subjectTitle,
                    style: typos.titleH3.copyWith(
                      color: colors.beige,
                    ),
                  ),
                  Text(
                    '$subjectClasses aulas',
                    style: typos.titleH3.copyWith(
                      color: colors.beige,
                      fontSize: 10.toSP(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
