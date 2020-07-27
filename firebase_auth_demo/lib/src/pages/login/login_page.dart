import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import 'controllers/login_controller.dart';
import 'idle_view/idle_view.dart';
import 'login_with_email_view/login_with_email_view.dart';
import 'register_with_email_view/register_with_email_view.dart';
import 'widgets/linear_loading.dart';

class LoginPage extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(controller.authState.value.title)),
        bottom: LinearLoading(),
      ),
      body: Obx(() => controller.authState.value.view),
    );
  }
}

extension AuthViews on AuthState {
  String get title {
    String title;
    switch (this) {
      case AuthState.idle:
        title = 'Login';
        break;
      case AuthState.loginWithEmail:
        title = 'Login with Email';
        break;
      case AuthState.registerWithEmail:
        title = 'Register with Email';
        break;
    }
    return title;
  }

  Widget get view {
    Widget view;
    switch (this) {
      case AuthState.idle:
        view = IdleView();
        break;
      case AuthState.loginWithEmail:
        view = LoginWithEmailView();
        break;
      case AuthState.registerWithEmail:
        view = RegisterWithEmailView();
        break;
    }
    return view;
  }
}
