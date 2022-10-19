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
      width: 40.toSize(),
      height: 32.toSize(),
      decoration: BoxDecoration(
        color: colors.yellow,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(2.toSize()),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            date,
            style: typos.titleH3.copyWith(
              color: colors.purple,
              fontSize: 16.toSP(),
              height: 1,
            ),
          ),
          Text(
            month,
            style: typos.titleH3.copyWith(
              color: colors.purple,
              fontSize: 10.toSP(),
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}
