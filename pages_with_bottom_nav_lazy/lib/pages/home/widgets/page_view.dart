import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import '../home_controller.dart/home_controller.dart';
import 'home_tab_nav.dart';

class PagesView extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return HomeScreenTab.values[controller.currentIndex].page;
    });
  }
}
