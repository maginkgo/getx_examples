import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import 'controllers/login_controller.dart';
import 'email_sign_in/email_sign_in_binding.dart';
import 'email_sign_in/email_sign_in_email_view.dart';
import 'email_sign_up/email_sign_up_binding.dart';
import 'email_sign_up/email_sign_up_view.dart';
import 'sign_out/sign_out_binding.dart';
import 'sign_out/sign_out_view.dart';

class LoginPage extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(1),
      initialRoute: AuthState.SIGN_OUT,
      onGenerateRoute: (settings) {
        Widget view;
        Bindings binding;
        switch (settings.name) {
          case AuthState.SIGN_OUT:
            view = SignOutView();
            binding = SignOutBinding();
            break;
          case AuthState.EMAIL_SIGN_IN:
            view = EmailSignInView(settings.arguments);
            binding = EmailSignInBinding();
            break;
          case AuthState.EMAIL_SIGN_UP:
            view = EmailSignUpView(settings.arguments);
            binding = EmailSignUpBinding();
        }
        return GetPageRoute(
          page: () => view,
          binding: binding,
          transition: Transition.rightToLeft,
        );
      },
    );
  }
}

abstract class AuthState {
  static const SIGN_OUT = '/';
  static const EMAIL_SIGN_IN = '/email-sign-in';
  static const EMAIL_SIGN_UP = '/email-sign-up';
}
