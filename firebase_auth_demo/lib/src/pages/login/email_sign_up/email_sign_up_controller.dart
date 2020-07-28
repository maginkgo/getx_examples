import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class EmailSignUpController extends GetxController {
  final passwordField = TextEditingController();
  final passwordCheckerField = TextEditingController();

  final _isLoading = false.obs;
  get isLoading => this._isLoading.value;

  final _obscuredPassword = true.obs;
  bool get obscuredPassword => this._obscuredPassword.value;
  set obscuredPassword(bool value) => this._obscuredPassword.value = value;

  final _obscuredPasswordChecker = true.obs;
  bool get obscuredPasswordChecker => this._obscuredPasswordChecker.value;
  set obscuredPasswordChecker(bool value) => this._obscuredPasswordChecker.value = value;

  void onSignUp() {}

  @override
  void onClose() {
    passwordField.dispose();
    passwordCheckerField.dispose();
    super.onClose();
  }
}
