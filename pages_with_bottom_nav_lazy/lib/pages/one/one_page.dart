import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'one_controller.dart';

class OnePage extends GetWidget<OneController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('OnePage')),
      body: Container(
        child: Center(
          child: Obx(() =>
              Text('${controller.counter}', style: Get.textTheme.headline1)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: controller.increment,
      ),
    );
  }
}
