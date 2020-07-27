// import 'package:firebase_auth_demo/src/auth/providers/auth_provider.dart';
import 'package:get/get.dart';

// import '../repositories/auth_repository.dart';

class AuthController extends GetxController {
  // final _authRepository = AuthRepository(FirebaseAuthProvider());

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

  // void login() async {
  //   await _authRepository.login();
  //   getUser();
  // }

  // void logout() async {
  //   await _authRepository.logout();
  //   getUser();
  // }

  void getUser() {
    // var user = _authRepository.user;
    // isLogged = user != null;
    isLogged = false;
  }

  @override
  void onInit() {
    getUser();
    super.onInit();
  }

  @override
  void onStart() {
    ever(_isLogged, authNavegation);
    super.onStart();
  }
}
