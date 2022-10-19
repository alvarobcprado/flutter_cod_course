import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/theme/cod_colors.dart';
import 'package:flutter_cod_course/app/common/theme/cod_typography.dart';
import 'package:flutter_cod_course/app/common/view_utils.dart';

class CodTeacherPreviewCard extends StatelessWidget {
  const CodTeacherPreviewCard({
    super.key,
    required this.teacherName,
    required this.teacherSpecialty,
    required this.urlImage,
    required this.onTap,
  });

  final String teacherName;
  final String teacherSpecialty;
  final String urlImage;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<CodColors>()!;
    final typos = Theme.of(context).extension<CodTypography>()!;
    return Material(
      type: MaterialType.transparency,
      borderRadius: BorderRadius.circular(16),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 24.fromHeight(context),
              backgroundColor: colors.purple,
              backgroundImage: NetworkImage(urlImage),
            ),
            SizedBox(width: 8.fromHeight(context)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  teacherName,
                  style: typos.titleH3.copyWith(
                    color: colors.purple,
                    fontSize: 14,
                  ),
                ),
                Text(
                  teacherSpecialty,
                  style: typos.titleH3.copyWith(
                    color: colors.blue,
                    fontSize: 8,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
