import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/four/bindings/four_controller_binding.dart';
import 'pages/four/four_page.dart';
import 'pages/one/bindings/one_controller_binding.dart';
import 'pages/one/one_page.dart';
import 'pages/three/bindings/three_controller_binding.dart';
import 'pages/three/three_page.dart';
import 'pages/two/bindings/two_controller_binding.dart';
import 'pages/two/two_page.dart';
import 'pages/widgets/bottom_nav_bar/controller/bindings/bottom_nav_bar_binding.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BottomNavBarBinding(),
      theme: ThemeData.dark().copyWith(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: AppPages.pages,
      initialRoute: Routes.INITIAL,
    );
  }
}

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.ONE, page: () => OnePage(), binding: OneControllerBinding()),
    GetPage(name: Routes.TWO, page: () => TwoPage(), binding: TwoControllerBinding()),
    GetPage(name: Routes.THREE, page: () => ThreePage(), binding: ThreeControllerBinding()),
    GetPage(name: Routes.FOUR, page: () => FourPage(), binding: FourControllerBinding()),
  ];
}

abstract class Routes {
  static const INITIAL = Routes.ONE;
  static const ONE = '/one';
  static const TWO = '/two';
  static const THREE = '/three';
  static const FOUR = '/four';
}
