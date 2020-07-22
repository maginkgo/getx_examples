import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'four_controller.dart';

class FourPage extends StatelessWidget {
  final controller = Get.put(FourController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FourPage')),
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
