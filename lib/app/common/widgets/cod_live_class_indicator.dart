import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/theme/cod_colors.dart';
import 'package:flutter_cod_course/app/common/theme/cod_typography.dart';
import 'package:flutter_cod_course/app/common/view_utils.dart';

class CodLiveClassIndicator extends StatelessWidget {
  const CodLiveClassIndicator({Key? key, required this.isLive})
      : super(key: key);

  final bool isLive;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.extension<CodColors>()!;
    final typos = theme.extension<CodTypography>()!;
    return Container(
      height: 10.fromHeight(context),
      width: 32.fromHeight(context),
      decoration: BoxDecoration(
        color: colors.yellow,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 2.fromHeight(context),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 2.fromHeight(context),
            backgroundColor: isLive ? colors.red : colors.grey,
          ),
          SizedBox(width: 2.fromHeight(context)),
          Text(
            isLive ? 'AO VIVO' : 'GRAVADO',
            style: typos.titleH3.copyWith(
              fontSize: 6,
              color: colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
