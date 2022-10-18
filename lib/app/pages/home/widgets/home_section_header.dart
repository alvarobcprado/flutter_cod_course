import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/theme/cod_colors.dart';
import 'package:flutter_cod_course/app/common/theme/cod_typography.dart';

class HomeSectionHeader extends StatelessWidget {
  const HomeSectionHeader({
    Key? key,
    required this.onTapShowMore,
    required this.headerTitle,
    required this.showMoreTitle,
  }) : super(key: key);

  final String headerTitle;
  final String showMoreTitle;
  final VoidCallback onTapShowMore;

  @override
  Widget build(BuildContext context) {
    final typos = Theme.of(context).extension<CodTypography>()!;
    final colors = Theme.of(context).extension<CodColors>()!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headerTitle,
          style: typos.titleH3.copyWith(
            color: colors.purple,
          ),
        ),
        Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: onTapShowMore,
            child: Text.rich(
              TextSpan(
                text: showMoreTitle,
                style: typos.body.copyWith(
                  color: colors.purple,
                  fontSize: 12,
                ),
                children: [
                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                        color: colors.purple,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
