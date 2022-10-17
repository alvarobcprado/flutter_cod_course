import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cod_course/app/common/assets_utils.dart';
import 'package:flutter_cod_course/app/common/routes.dart';
import 'package:flutter_cod_course/app/common/theme/cod_colors.dart';
import 'package:flutter_cod_course/app/common/theme/cod_typography.dart';

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
      title: 'Chief of Design Courses',
      theme: ThemeData(
        extensions: [
          const CodColors.light(),
          CodTypography(),
        ],
      ),
      routes: CodRoutes.routes,
    );
  }
}
