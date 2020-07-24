import 'package:get/get.dart';

import '../auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController());
  }
}
