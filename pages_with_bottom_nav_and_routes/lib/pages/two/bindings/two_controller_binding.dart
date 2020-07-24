import 'package:get/get.dart';

import '../two_controller.dart';

class TwoControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TwoController());
  }
}
