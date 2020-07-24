import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pages_with_bottom_nav/pages/widgets/bottom_nav_bar/bottom_nav_bar.dart';

import 'two_controller.dart';

class TwoPage extends GetWidget<TwoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TwoPage')),
      body: Container(
        child: Center(
          child: Obx(() {
            return Text('${controller.counter}', style: Get.textTheme.headline1);
          }),
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
