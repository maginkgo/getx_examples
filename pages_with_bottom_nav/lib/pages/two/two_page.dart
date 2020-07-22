import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'two_controller.dart';

class TwoPage extends StatelessWidget {
  final controller = Get.put(TwoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TwoPage')),
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
