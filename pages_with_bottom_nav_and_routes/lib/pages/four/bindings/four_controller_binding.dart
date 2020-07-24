import 'package:get/get.dart';

import '../four_controller.dart';

class FourControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FourController());
  }
}
