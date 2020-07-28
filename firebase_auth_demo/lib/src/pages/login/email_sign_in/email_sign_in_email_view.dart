import 'package:firebase_auth_demo/src/pages/login/email_sign_in/email_sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailSignInView extends StatelessWidget {
  final String email;

  const EmailSignInView(this.email);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login with email'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            EmailField(email),
            PasswordField(),
            SignInButton(),
          ],
        ),
      ),
    );
  }
}

class EmailField extends GetWidget<EmailSignInController> {
  final String email;

  EmailField(this.email);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: email,
      enabled: false,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        filled: true,
        helperText: '',
      ),
    );
  }
}

class PasswordField extends GetWidget<EmailSignInController> {
  @override
  Widget build(BuildContext context) => Obx(() {
        final obscuredField = controller.obscuredPassword;
        return TextFormField(
          controller: controller.passwordField,
          textAlign: TextAlign.center,
          obscureText: obscuredField,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: obscuredField ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
              onPressed: () => controller.obscuredPassword = !obscuredField,
            ),
            filled: true,
            helperText: '',
          ),
        );
      });
}

class SignInButton extends GetWidget<EmailSignInController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return RaisedButton(
        padding: EdgeInsets.zero,
        child: controller.isLoading
            ? SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : Text('Sign In'),
        color: Get.theme.colorScheme.secondaryVariant,
        onPressed: controller.isLoading ? null : controller.onSignIn,
        shape: StadiumBorder(),
      );
    });
  }
}
