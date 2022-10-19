import 'package:flutter_svg/flutter_svg.dart';

abstract class AssetsUtils {
  static const String logo = 'assets/images/Chief of Design svg.svg';
  static const String logoMono =
      'assets/images/Chief of Design Monocromatic svg.svg';
  static const String cardBackground = 'assets/images/Card Background.svg';
  static const String cardColors = 'assets/images/Card Colors.svg';
  static const String cardGestalt = 'assets/images/Card Gestalt.svg';
  static const String cardTypography = 'assets/images/Card Typography.svg';
  static const String cardGrid = 'assets/images/Card Grid.svg';

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
        precachePicture(
          ExactAssetPicture(
            SvgPicture.svgStringDecoderOutsideViewBoxBuilder,
            cardColors,
          ),
          null,
        ),
        precachePicture(
          ExactAssetPicture(
            SvgPicture.svgStringDecoderOutsideViewBoxBuilder,
            cardGestalt,
          ),
          null,
        ),
        precachePicture(
          ExactAssetPicture(
            SvgPicture.svgStringDecoderOutsideViewBoxBuilder,
            cardTypography,
          ),
          null,
        ),
        precachePicture(
          ExactAssetPicture(
            SvgPicture.svgStringDecoderOutsideViewBoxBuilder,
            cardGrid,
          ),
          null,
        ),
      ],
    );
  }
}
