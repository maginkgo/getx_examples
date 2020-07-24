import 'package:get/get.dart';

import '../three_controller.dart';

class ThreeControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ThreeController());
  }
}
