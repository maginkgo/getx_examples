import 'package:get/get.dart';

enum AuthState {
  idle,
  registerWithEmail,
  loginWithEmail,
}

class LoginController extends GetxController {
  /// Observables
  final authState = AuthState.idle.obs;

  final isLoading = false.obs;

  // Eventos
  void changeState(state) {
    print(state);
  }

  // GetX events
  @override
  void onInit() {
    ever(authState, changeState);
    super.onInit();
  }
}
