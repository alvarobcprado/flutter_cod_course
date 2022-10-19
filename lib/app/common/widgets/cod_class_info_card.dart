import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/theme/cod_colors.dart';
import 'package:flutter_cod_course/app/common/theme/cod_typography.dart';
import 'package:flutter_cod_course/app/common/view_utils.dart';
import 'package:flutter_cod_course/app/common/widgets/cod_date_indicator.dart';
import 'package:flutter_cod_course/app/common/widgets/cod_live_class_indicator.dart';

class CodClassInfoCard extends StatelessWidget {
  const CodClassInfoCard({
    Key? key,
    required this.classTitle,
    required this.isLive,
    required this.teacherName,
    required this.classDate,
    required this.classDescription,
    required this.onTap,
  }) : super(key: key);

  final String classTitle;
  final bool isLive;
  final String teacherName;
  final DateTime classDate;
  final String classDescription;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final typos = Theme.of(context).extension<CodTypography>()!;
    final colors = Theme.of(context).extension<CodColors>()!;
    return Container(
      width: 144.fromHeight(context),
      height: 112.fromHeight(context),
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
            padding: EdgeInsets.all(8.fromHeight(context)),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CodLiveClassIndicator(isLive: isLive),
                          Text(
                            classTitle,
                            style: typos.titleH3.copyWith(
                              color: colors.beige,
                              fontSize: 14,
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              style: typos.body.copyWith(
                                color: colors.beige,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                              children: [
                                WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      right: 4.fromHeight(context),
                                    ),
                                    child: Icon(
                                      Icons.school_outlined,
                                      color: colors.yellow,
                                      size: 12,
                                    ),
                                  ),
                                ),
                                TextSpan(
                                  text: teacherName,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    CodDateIndicator(
                      date: classDate.day.toString(),
                      month: classDate.shortMonthName,
                    ),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      classDescription,
                      style: typos.body.copyWith(
                        fontSize: 8,
                        color: colors.beige,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
