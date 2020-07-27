import 'package:get/get.dart';

import 'sign_out_view_controller.dart';

class SignOutBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SignOutViewController());
  }
}
