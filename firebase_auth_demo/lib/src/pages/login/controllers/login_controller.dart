import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/widgets.dart';

enum AuthState {
  idle,
  registerWithEmail,
  loginWithEmail,
}

class LoginController extends GetxController {
  final pageController = PageController();
  final firstField = TextEditingController();

  /// Observables
  final _isLoading = false.obs;
  bool get isLoading => this._isLoading.value;
  set isLoading(bool value) => this._isLoading.value = value;

  final _firstText = ''.obs;
  String get firstText => this._firstText.value;
  set firstText(String value) => this._firstText.value = value;

  final _authState = AuthState.idle.obs;
  AuthState get authState => this._authState.value;
  set authState(AuthState value) => this._authState.value = value;

  // Eventos
  void onPressedFab() {
    pageController.nextPage(duration: Duration(milliseconds: 400), curve: Curves.easeInOut);
  }

  void onPressedGo() async {
    Get.focusScope.unfocus();
    firstText = firstText.trim().replaceAll(' ', '').toLowerCase();
    if (firstText.isValidEmail) {
      _toggleLoading();
      final exists = await registered(firstText);
      authState = exists ? AuthState.loginWithEmail : AuthState.registerWithEmail;
      _toggleLoading();
    } else if (firstText.isValidPhone) {
      _toggleLoading();
      await registered(firstText);
      authState = AuthState.idle;
      _toggleLoading();
    } else if (firstText.isValidUsername && firstText.length > 6) {
      _toggleLoading();
      await registered(firstText);
      authState = AuthState.idle;
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

  Future<bool> registered(String value) async {
    await Future.delayed(Duration(seconds: 1));
    return Random().nextBool();
  }

  void changeState(state) {
    print(state);
  }

  void _toggleLoading() => isLoading = !isLoading;
  void onPressedClearFirstField() {
    final foo = Get.focusScope.nearestScope;
    Get.focusScope.unfocus();
    firstField.clear();
    foo.autofocus(node)
  }

  // GetX events
  @override
  void onInit() {
    firstField.addListener(() => firstText = firstField.text);
    ever(_authState, changeState);
    super.onInit();
  }

  @override
  void onClose() {
    firstField.dispose();
    pageController.dispose();
    super.onClose();
  }
}

extension LoginValidators on String {
  static Pattern username = r'^[a-zA-Z0-9][a-zA-Z0-9_.]+[a-zA-Z0-9]$';
  static Pattern phone = r'^(0|\+|(\+[0-9]{2,4}|\(\+?[0-9]{2,4}\)) ?)([0-9]*|\d{2,4}-\d{2,4}(-\d{2,4})?)$';
  static Pattern email =
      r'^[a-z0-9]+([-+._][a-z0-9]+){0,2}@.*?(\.(a(?:[cdefgilmnoqrstuwxz]|ero|(?:rp|si)a)|b(?:[abdefghijmnorstvwyz]iz)|c(?:[acdfghiklmnoruvxyz]|at|o(?:m|op))|d[ejkmoz]|e(?:[ceghrstu]|du)|f[ijkmor]|g(?:[abdefghilmnpqrstuwy]|ov)|h[kmnrtu]|i(?:[delmnoqrst]|n(?:fo|t))|j(?:[emop]|obs)|k[eghimnprwyz]|l[abcikrstuvy]|m(?:[acdeghklmnopqrstuvwxyz]|il|obi|useum)|n(?:[acefgilopruz]|ame|et)|o(?:m|rg)|p(?:[aefghklmnrstwy]|ro)|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|t(?:[cdfghjklmnoprtvwz]|(?:rav)?el)|u[agkmsyz]|v[aceginu]|w[fs]|y[etu]|z[amw])\b){1,2}$';

  bool get isValidUsername => RegExp(LoginValidators.username).hasMatch(this);
  bool get isValidPhone => RegExp(LoginValidators.phone).hasMatch(this);
  bool get isValidEmail => RegExp(LoginValidators.email).hasMatch(this);
}
