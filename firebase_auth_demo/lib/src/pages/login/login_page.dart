import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import 'controllers/login_controller.dart';
import 'idle_view/idle_view.dart';
import 'widgets/linear_loading.dart';

class LoginPage extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LoginPage'), bottom: LinearLoading()),
      body: Obx(() => controller.authState.value.view),
    );
  }
}

extension AuthViews on AuthState {
  Widget get view {
    Widget view;
    switch (this) {
      case AuthState.idle:
        view = IdleView();
        break;
      case AuthState.loginWithEmail:
        view = Placeholder();
        break;
      case AuthState.registerWithEmail:
        view = Placeholder();
        break;
    }
    return view;
  }
}
