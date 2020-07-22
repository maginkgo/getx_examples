import 'package:firebase_auth_demo/src/models/user_model.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  Rx<UserModel> _user;
  UserModel get user => this._user?.value;
  set user(UserModel value) => this._user.value = value;
}
