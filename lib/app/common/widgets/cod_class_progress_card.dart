import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/assets_utils.dart';
import 'package:flutter_cod_course/app/common/theme/cod_colors.dart';
import 'package:flutter_cod_course/app/common/theme/cod_typography.dart';
import 'package:flutter_cod_course/app/common/view_utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CodClassProgressCard extends StatelessWidget {
  const CodClassProgressCard({
    Key? key,
    required this.onTap,
    required this.classTitle,
    required this.classSubtitle,
    required this.classProgress,
    required this.classDuration,
  }) : super(key: key);

  final VoidCallback onTap;
  final String classTitle;
  final String classSubtitle;
  final Duration classProgress;
  final Duration classDuration;

  @override
  Widget build(BuildContext context) {
    final typos = Theme.of(context).extension<CodTypography>()!;
    final colors = Theme.of(context).extension<CodColors>()!;
    final progress = classProgress.inSeconds / classDuration.inSeconds;
    final remainingTime = classDuration - classProgress;
    final isCompleted = progress >= 1;

    return Container(
      width: double.infinity,
      height: 136.toSize(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              AssetsUtils.cardBackground,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: ColoredBox(
              color: colors.purple.withOpacity(0.4),
            ),
          ),
          Positioned(
            left: 16.toSize(),
            top: 8.toSize(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  classTitle,
                  style: typos.titleH2.copyWith(
                    color: colors.beige,
                    fontSize: 16.toSP(),
                  ),
                ),
                Text(
                  classSubtitle,
                  style: typos.body.copyWith(
                    color: colors.beige,
                    fontSize: 12.toSP(),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 16.toSize(),
            right: 16.toSize(),
            bottom: 21.toSize(),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 4.toSize(),
                  backgroundColor: colors.orange,
                ),
                SizedBox(width: 8.toSize()),
                Text(
                  isCompleted ? 'Assista novamente' : 'Continue assistindo',
                  style: typos.titleH3.copyWith(
                    color: colors.beige,
                    fontSize: 12.toSP(),
                  ),
                ),
                const Spacer(),
                Text(
                  isCompleted
                      ? 'Conclu??do'
                      : '${remainingTime.inMinutes} min restantes',
                  style: typos.titleH3.copyWith(
                    color: colors.beige,
                    fontSize: 12.toSP(),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: LinearProgressIndicator(
              minHeight: 4.toSize(),
              value: progress,
              backgroundColor: colors.beige.withOpacity(0.7),
              valueColor: AlwaysStoppedAnimation<Color>(
                colors.orange,
              ),
            ),
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
