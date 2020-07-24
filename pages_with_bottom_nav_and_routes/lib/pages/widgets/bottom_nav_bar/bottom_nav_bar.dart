import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/bottom_nav_bar_controller.dart';
import 'home_tab_nav.dart';

class BottomNavBar extends GetWidget<BottomNavBarController> {
  final _key = ValueKey('bottom_nav_bar');
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return BottomNavigationBar(
        key: _key,
        type: BottomNavigationBarType.fixed,
        currentIndex: controller.currentIndex,
        onTap: controller.changeIndex,
        items: HomeScreenTab.values
            .map((tab) => BottomNavigationBarItem(
                  title: Text(tab.title),
                  icon: Icon(tab.icon),
                ))
            .toList(),
      );
    });
  }
}
