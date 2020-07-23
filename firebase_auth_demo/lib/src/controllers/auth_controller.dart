import 'package:firebase_auth_demo/src/models/user_model.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  UserModel user;

  final _isLogged = false.obs;
  bool get isLogged => this._isLogged.value;
  set isLogged(bool value) => this._isLogged.value = value;

  void authNavegation(logged) {
    if (logged) {
      Get.offNamed('/home');
    } else {
      Get.offNamed('/login');
    }
  }

  Future<void> login() async {
    await Future.delayed(Duration(seconds: 1));
    // user = UserModel(id: '123', name: 'Marcos');
    isLogged = user != null;
  }

  @override
  void onInit() {
    login();
    ever(_isLogged, authNavegation);
    super.onInit();
  }
}
