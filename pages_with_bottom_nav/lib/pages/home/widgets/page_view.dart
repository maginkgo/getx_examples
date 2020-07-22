import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import '../home_controller.dart/home_controller.dart';
import '../tab_nav_items.dart';

class PagesView extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => IndexedStack(
          index: controller.currentIndex,
          children: [for (var tabItem in TabNavItems.items) tabItem.page],
        ));
  }
}
