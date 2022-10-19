import 'package:flutter/cupertino.dart';

class CodColoredBoxColumn extends StatelessWidget {
  const CodColoredBoxColumn({
    super.key,
    required this.boxColor,
    required this.boxSize,
    required this.boxPadding,
    required this.children,
    this.boxBorderRadius = const BorderRadius.vertical(
      top: Radius.circular(32),
    ),
  });

  final Color boxColor;
  final Size boxSize;
  final EdgeInsetsGeometry boxPadding;
  final BorderRadius boxBorderRadius;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: boxBorderRadius,
      ),
      height: boxSize.height,
      width: boxSize.width,
      child: SingleChildScrollView(
        padding: boxPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }
}
