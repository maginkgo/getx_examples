import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pages_with_bottom_nav/pages/widgets/bottom_nav_bar/bottom_nav_bar.dart';

import 'three_controller.dart';

class ThreePage extends GetWidget<ThreeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ThreePage')),
      body: Container(
        child: Center(
          child: Obx(() => Text('${controller.counter}', style: Get.textTheme.headline1)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: controller.increment,
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
