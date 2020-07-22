import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/auth_controller.dart';
import 'pages/home/home_page.dart';
import 'pages/login/login_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: AppPages.pages,
      // home: HomePage(),
    );
  }
}

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => GetBuilder<AuthController>(
        init: AuthController(),
        builder: (c) => c.user == null ? LoginPage() : HomePage(),
      ),
    ),
    GetPage(name: Routes.HOME, page: () => HomePage()),
    GetPage(name: Routes.LOGIN, page: () => LoginPage()),
  ];
}

abstract class Routes {
  static const INITIAL = '/';
  static const HOME = '/home';
  static const LOGIN = '/login';
}
