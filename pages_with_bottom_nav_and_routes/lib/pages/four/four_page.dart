import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'four_controller.dart';

class FourPage extends GetWidget<FourController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FourPage'), automaticallyImplyLeading: false),
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
