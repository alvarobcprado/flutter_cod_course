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
      height: 136.fromHeight(context),
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
            left: 16.fromHeight(context),
            top: 8.fromHeight(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  classTitle,
                  style: typos.titleH2.copyWith(
                    color: colors.beige,
                    fontSize: 16,
                  ),
                ),
                Text(
                  classSubtitle,
                  style: typos.body.copyWith(
                    color: colors.beige,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 16.fromHeight(context),
            right: 16.fromHeight(context),
            bottom: 21.fromHeight(context),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 4.fromHeight(context),
                  backgroundColor: colors.orange,
                ),
                SizedBox(width: 8.fromHeight(context)),
                Text(
                  isCompleted ? 'Assista novamente' : 'Continue assistindo',
                  style: typos.titleH3.copyWith(
                    color: colors.beige,
                    fontSize: 12,
                  ),
                ),
                const Spacer(),
                Text(
                  isCompleted
                      ? 'Concluído'
                      : '${remainingTime.inMinutes} min restantes',
                  style: typos.titleH3.copyWith(
                    color: colors.beige,
                    fontSize: 12,
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
              minHeight: 4.fromHeight(context),
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
