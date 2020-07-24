import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/bottom_nav_bar_controller.dart';
import 'home_tab_nav.dart';

class BottomNavBar extends GetWidget<BottomNavBarController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        selectedItemColor: Get.theme.colorScheme.secondary,
        unselectedItemColor: Colors.white,
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
