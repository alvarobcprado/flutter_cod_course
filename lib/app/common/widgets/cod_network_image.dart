import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/theme/cod_colors.dart';

class CodNetworkImage extends StatelessWidget {
  const CodNetworkImage({
    super.key,
    required this.urlImage,
    this.width,
    this.height,
    this.fit,
    this.loadingColor,
  });

  final String urlImage;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Color? loadingColor;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<CodColors>()!;
    return Image.network(
      urlImage,
      fit: fit ?? BoxFit.cover,
      errorBuilder: (context, error, stackTrace) => const SizedBox.expand(
        child: Placeholder(),
      ),
      frameBuilder: (_, child, frame, __) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: frame == null
              ? Center(
                  child: CircularProgressIndicator.adaptive(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      loadingColor ?? colors.purple,
                    ),
                  ),
                )
              : SizedBox.expand(child: child),
        );
      },
    );
  }
}
