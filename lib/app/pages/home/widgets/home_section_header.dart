import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/theme/cod_colors.dart';
import 'package:flutter_cod_course/app/common/theme/cod_typography.dart';

class HomeSectionHeader extends StatelessWidget {
  const HomeSectionHeader({
    Key? key,
    required this.onTapShowMore,
    required this.headerTitle,
    required this.showMoreTitle,
  })  : subtitle = null,
        super(key: key);

  const HomeSectionHeader.withSubtitle({
    Key? key,
    required this.onTapShowMore,
    required this.headerTitle,
    required this.showMoreTitle,
    required this.subtitle,
  }) : super(key: key);

  final String headerTitle;
  final String showMoreTitle;
  final String? subtitle;
  final VoidCallback onTapShowMore;

  @override
  Widget build(BuildContext context) {
    final typos = Theme.of(context).extension<CodTypography>()!;
    final colors = Theme.of(context).extension<CodColors>()!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
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
        ),
        if (subtitle != null)
          Text(
            subtitle!,
            style: typos.titleH3.copyWith(
              color: colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
      ],
    );
  }
}
