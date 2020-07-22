import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/auth/login/login_page.dart';
import '../controllers/auth_controller.dart';
import '../pages/home/home_page.dart';

class Root extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get.find<AuthController>().user != null) ? HomePage() : LoginPage();
    });
  }
}
