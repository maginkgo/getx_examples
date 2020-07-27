import 'package:get/get.dart';

import 'email_sign_up_controller.dart';

class EmailSignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(EmailSignUpController());
  }
}
