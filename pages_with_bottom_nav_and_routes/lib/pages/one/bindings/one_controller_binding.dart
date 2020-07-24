import 'package:get/get.dart';

import '../one_controller.dart';

class OneControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(OneController());
  }
}
