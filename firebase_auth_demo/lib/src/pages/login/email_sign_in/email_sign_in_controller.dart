import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailSignInController extends GetxController {
  final passwordField = TextEditingController();
  final _isLoading = false.obs;
  get isLoading => this._isLoading.value;

  final _obscuredPassword = true.obs;
  bool get obscuredPassword => this._obscuredPassword.value;
  set obscuredPassword(bool value) => this._obscuredPassword.value = value;

  void onSignIn() {}

  @override
  void onClose() {
    passwordField.dispose();
    super.onClose();
  }
}
