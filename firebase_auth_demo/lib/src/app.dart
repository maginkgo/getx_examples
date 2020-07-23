import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/bindings/auth_binding.dart';
import 'pages/home/home_page.dart';
import 'pages/login/login_page.dart';
import 'pages/splash/splash_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AuthBinding(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: AppPages.pages,
    );
  }
}

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page: () => SplashScreen()),
    GetPage(name: Routes.HOME, page: () => HomePage()),
    GetPage(name: Routes.LOGIN, page: () => LoginPage()),
  ];
}

abstract class Routes {
  static const INITIAL = '/';
  static const HOME = '/home';
  static const LOGIN = '/login';
}
