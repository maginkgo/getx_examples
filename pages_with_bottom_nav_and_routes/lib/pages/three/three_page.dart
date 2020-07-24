import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'three_controller.dart';

class ThreePage extends GetWidget<ThreeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ThreePage'), automaticallyImplyLeading: false),
      body: Container(
        child: Center(
          child: Obx(() => Text('${controller.counter}', style: Get.textTheme.headline1)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: controller.increment,
      ),
    );
  }
}
