import 'package:firebase_auth_demo/src/pages/login/controllers/login_controller.dart';
import 'package:get/get.dart';

import '../auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
    Get.put(LoginController());
  }
}
