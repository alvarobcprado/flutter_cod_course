import 'package:flutter_svg/flutter_svg.dart';

abstract class AssetsUtils {
  static const String logo = 'assets/images/Chief of Design svg.svg';
  static const String logoMono =
      'assets/images/Chief of Design Monocromatric svg.svg';
  static const String cardBackground = 'assets/images/Card Background.svg';

  static Future<void> precacheImages() async {
    await Future.wait(
      [
        precachePicture(
          ExactAssetPicture(
            SvgPicture.svgStringDecoderOutsideViewBoxBuilder,
            logo,
          ),
          null,
        ),
        precachePicture(
          ExactAssetPicture(
            SvgPicture.svgStringDecoderOutsideViewBoxBuilder,
            logoMono,
          ),
          null,
        ),
        precachePicture(
          ExactAssetPicture(
            SvgPicture.svgStringDecoderOutsideViewBoxBuilder,
            cardBackground,
          ),
          null,
        ),
      ],
    );
  }
}
