import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/common/assets_utils.dart';
import 'package:flutter_cod_course/app/common/routes.dart';

void main() {
  AssetsUtils.precacheImages();
  runApp(const CodApp());
}

class CodApp extends StatelessWidget {
  const CodApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: CodRoutes.routes,
    );
  }
}
