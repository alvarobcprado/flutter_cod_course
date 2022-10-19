import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/theme/cod_colors.dart';
import 'package:flutter_cod_course/app/common/theme/cod_typography.dart';
import 'package:flutter_cod_course/app/common/view_utils.dart';
import 'package:flutter_cod_course/app/common/widgets/cod_network_image.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.urlImage,
    required this.onTapExit,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String urlImage;
  final VoidCallback onTapExit;

  @override
  Widget build(BuildContext context) {
    final typos = Theme.of(context).extension<CodTypography>()!;
    final colors = Theme.of(context).extension<CodColors>()!;
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 32.toSize(),
        horizontal: 24.toSize(),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: onTapExit,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Sair ',
                      style: typos.body.copyWith(
                        color: colors.beige,
                        fontSize: 12,
                      ),
                    ),
                    Icon(
                      Icons.logout,
                      color: colors.beige,
                      size: 16,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 72.toSize(),
                width: 72.toSize(),
                decoration: BoxDecoration(
                  color: colors.orange,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: colors.orange,
                    width: 2.toSize(),
                    strokeAlign: StrokeAlign.outside,
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      urlImage,
                    ),
                  ),
                ),
                clipBehavior: Clip.antiAlias,
                child: CodNetworkImage(
                  urlImage: urlImage,
                ),
              ),
              SizedBox(
                width: 16.toSize(),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: typos.titleH2.copyWith(color: colors.beige),
                    ),
                    Text(
                      subtitle,
                      style: typos.body.copyWith(color: colors.beige),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
