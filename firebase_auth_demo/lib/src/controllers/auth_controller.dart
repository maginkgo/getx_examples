import 'package:firebase_auth_demo/src/models/user_model.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  Rx<UserModel> user;

  void setUser() async {
    await Future.delayed(Duration(seconds: 1));
    user = UserModel().obs;
    print(user);
  }
}

//
