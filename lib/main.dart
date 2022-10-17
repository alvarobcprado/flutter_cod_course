import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cod_course/app/common/assets_utils.dart';
import 'package:flutter_cod_course/app/common/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AssetsUtils.precacheImages();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
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
