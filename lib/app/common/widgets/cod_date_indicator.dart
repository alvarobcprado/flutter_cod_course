import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/theme/cod_colors.dart';
import 'package:flutter_cod_course/app/common/theme/cod_typography.dart';
import 'package:flutter_cod_course/app/common/view_utils.dart';

class CodDateIndicator extends StatelessWidget {
  const CodDateIndicator({
    Key? key,
    required this.date,
    required this.month,
  }) : super(key: key);

  final String date;
  final String month;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.extension<CodColors>()!;
    final typos = theme.extension<CodTypography>()!;
    return Container(
      width: 40.fromHeight(context),
      height: 32.fromHeight(context),
      decoration: BoxDecoration(
        color: colors.yellow,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(4.fromHeight(context)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            date,
            style: typos.titleH3.copyWith(
              color: colors.purple,
              fontSize: 17,
              height: 1,
            ),
          ),
          Text(
            month,
            style: typos.titleH3.copyWith(
              color: colors.purple,
              fontSize: 10,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}
