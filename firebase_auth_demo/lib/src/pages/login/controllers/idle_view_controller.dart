import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class IdleViewController extends GetxController {
  final firstField = TextEditingController();

  /// Observables
  final _isLoading = false.obs;
  bool get isLoading => this._isLoading.value;

  final _firstText = ''.obs;
  String get firstText => this._firstText.value;
  set firstText(String value) => this._firstText.value = value;

  final _authState = AuthState.idle.obs;

  // Eventos
  void onPressedGo() async {
    Get.focusScope.unfocus();
    firstText = firstText.trim().replaceAll(' ', '').toLowerCase();
    if (firstText.isValidEmail) {
      _toggleLoading();
      final exists = await _registered(firstText);
      _authState.value =
          exists ? AuthState.loginWithEmail : AuthState.registerWithEmail;
      _toggleLoading();
    } else if (firstText.isValidPhone) {
      _toggleLoading();
      await _registered(firstText);
      _authState.value = AuthState.idle;
      _toggleLoading();
    } else if (firstText.isValidUsername && firstText.length > 6) {
      _toggleLoading();
      await _registered(firstText);
      _authState.value = AuthState.idle;
      _toggleLoading();
    } else {
      final errorText = firstText.isEmpty ? 'Required' : 'Invalid';
      Get.snackbar(
        'Ups',
        errorText,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  Future<bool> _registered(String value) async {
    await Future.delayed(Duration(seconds: 1));
    return Random().nextBool();
  }

  void _toggleLoading() => _isLoading.value = !isLoading;
  void onPressedClearFirstField() {
    firstField.clear();
  }

  // GetX events
  @override
  void onInit() {
    firstField.addListener(() => firstText = firstField.text);
    Get.find<LoginController>().authState.bindStream(_authState.stream);
    Get.find<LoginController>().isLoading.bindStream(_isLoading.stream);
    super.onInit();
  }

  @override
  void onClose() {
    firstField.dispose();
    super.onClose();
  }
}

extension LoginValidators on String {
  static Pattern _username = r'^[a-zA-Z0-9][a-zA-Z0-9_.]+[a-zA-Z0-9]$';
  static Pattern _phone =
      r'^(0|\+|(\+[0-9]{2,4}|\(\+?[0-9]{2,4}\)) ?)([0-9]*|\d{2,4}-\d{2,4}(-\d{2,4})?)$';
  static Pattern _email =
      r'^[a-z0-9]+([-+._][a-z0-9]+){0,2}@.*?(\.(a(?:[cdefgilmnoqrstuwxz]|ero|(?:rp|si)a)|b(?:[abdefghijmnorstvwyz]iz)|c(?:[acdfghiklmnoruvxyz]|at|o(?:m|op))|d[ejkmoz]|e(?:[ceghrstu]|du)|f[ijkmor]|g(?:[abdefghilmnpqrstuwy]|ov)|h[kmnrtu]|i(?:[delmnoqrst]|n(?:fo|t))|j(?:[emop]|obs)|k[eghimnprwyz]|l[abcikrstuvy]|m(?:[acdeghklmnopqrstuvwxyz]|il|obi|useum)|n(?:[acefgilopruz]|ame|et)|o(?:m|rg)|p(?:[aefghklmnrstwy]|ro)|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|t(?:[cdfghjklmnoprtvwz]|(?:rav)?el)|u[agkmsyz]|v[aceginu]|w[fs]|y[etu]|z[amw])\b){1,2}$';

  bool get isValidUsername => RegExp(LoginValidators._username).hasMatch(this);
  bool get isValidPhone => RegExp(LoginValidators._phone).hasMatch(this);
  bool get isValidEmail => RegExp(LoginValidators._email).hasMatch(this);
}
