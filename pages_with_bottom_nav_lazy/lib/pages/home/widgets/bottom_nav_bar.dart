import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import '../home_controller.dart/home_controller.dart';
import 'home_tab_nav.dart';

class BottomNavBar extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: controller.currentIndex,
        onTap: (index) => controller.currentIndex = index,
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
