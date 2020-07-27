import 'package:firebase_auth_demo/src/pages/login/controllers/idle_view_controller.dart';
import 'package:firebase_auth_demo/src/pages/login/controllers/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
    Get.put(IdleViewController());
  }
}
