import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import '../home_controller.dart/home_controller.dart';
import '../tab_nav_items.dart';

class BottomNavBar extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: controller.currentIndex,
        onTap: (index) => controller.currentIndex = index,
        items: TabNavItems.items
            .map((tab) => BottomNavigationBarItem(
                  title: tab.title,
                  icon: tab.icon,
                ))
            .toList(),
      );
    });
  }
}
