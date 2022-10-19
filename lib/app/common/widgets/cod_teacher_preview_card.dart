import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/theme/cod_colors.dart';
import 'package:flutter_cod_course/app/common/theme/cod_typography.dart';
import 'package:flutter_cod_course/app/common/view_utils.dart';
import 'package:flutter_cod_course/app/common/widgets/cod_network_image.dart';

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
            Container(
              width: 48.toSize(),
              height: 48.toSize(),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colors.purple,
              ),
              clipBehavior: Clip.hardEdge,
              child: CodNetworkImage(
                urlImage: urlImage,
                loadingColor: colors.orange,
              ),
            ),
            SizedBox(width: 8.toSize()),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  teacherName,
                  style: typos.titleH3.copyWith(
                    color: colors.purple,
                    fontSize: 14.toSP(),
                  ),
                ),
                Text(
                  teacherSpecialty,
                  style: typos.titleH3.copyWith(
                    color: colors.blue,
                    fontSize: 8.toSP(),
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
