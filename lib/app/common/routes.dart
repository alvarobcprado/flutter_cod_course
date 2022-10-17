import 'package:flutter/material.dart';
import 'package:flutter_cod_course/app/pages/auth/landing/landing_auth_page.dart';
import 'package:flutter_cod_course/app/pages/auth/signin/signin_page.dart';

abstract class CodRoutes {
  static const String landing = '/';
  static const String signin = '/signin';
  static const String signup = '/signup';
  static const String home = '/home';

  static final Map<String, WidgetBuilder> routes = {
    landing: (context) => const LandingAuthPage(),
    signin: (context) => const SigninPage(),
    signup: (context) => const SizedBox(),
    home: (context) => const SizedBox(),
  };
}
