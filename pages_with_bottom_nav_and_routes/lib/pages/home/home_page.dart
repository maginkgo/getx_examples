import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../four/bindings/four_controller_binding.dart';
import '../four/four_page.dart';
import '../one/bindings/one_controller_binding.dart';
import '../one/one_page.dart';
import '../three/bindings/three_controller_binding.dart';
import '../three/three_page.dart';
import '../two/bindings/two_controller_binding.dart';
import '../two/two_page.dart';
import 'bottom_nav_bar/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: Routes.ONE,
        onGenerateRoute: (settings) {
          Widget page;
          Bindings binding;
          switch (settings.name) {
            case Routes.ONE:
              page = OnePage();
              binding = OneControllerBinding();
              break;
            case Routes.TWO:
              page = TwoPage();
              binding = TwoControllerBinding();
              break;
            case Routes.THREE:
              page = ThreePage();
              binding = ThreeControllerBinding();
              break;
            case Routes.FOUR:
              page = FourPage();
              binding = FourControllerBinding();
          }
          return GetPageRoute(
            page: () => page,
            binding: binding,
            transition: Transition.fadeIn,
          );
        },
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

abstract class Routes {
  static const ONE = '/';
  static const TWO = '/two';
  static const THREE = '/three';
  static const FOUR = '/four';
}
