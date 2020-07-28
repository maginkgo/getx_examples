import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'email_sign_up_controller.dart';

class EmailSignUpView extends StatelessWidget {
  final String email;

  const EmailSignUpView(this.email);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up with email'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            EmailField(email),
            PasswordField(),
            PasswordCheckerField(),
            SignUpButton(),
          ],
        ),
      ),
    );
  }
}

class EmailField extends GetWidget<EmailSignUpController> {
  final String email;

  EmailField(this.email);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: email,
      enabled: false,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        helperText: '',
        filled: true,
      ),
    );
  }
}

class PasswordField extends GetWidget<EmailSignUpController> {
  @override
  Widget build(BuildContext context) => Obx(() {
        final obscuredField = controller.obscuredPassword;
        return TextFormField(
          textAlign: TextAlign.center,
          obscureText: obscuredField,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: obscuredField ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
              onPressed: () => controller.obscuredPassword = !obscuredField,
            ),
            helperText: '',
            filled: true,
          ),
        );
      });
}

class PasswordCheckerField extends GetWidget<EmailSignUpController> {
  @override
  Widget build(BuildContext context) => Obx(() {
        final obscuredField = controller.obscuredPasswordChecker;
        return TextFormField(
          textAlign: TextAlign.center,
          obscureText: obscuredField,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: obscuredField ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
              onPressed: () => controller.obscuredPasswordChecker = !obscuredField,
            ),
            helperText: '',
            filled: true,
          ),
        );
      });
}

class SignUpButton extends GetWidget<EmailSignUpController> {
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
            : Text('Sign up'),
        color: Get.theme.colorScheme.secondaryVariant,
        onPressed: controller.isLoading ? null : controller.onSignUp,
        shape: StadiumBorder(),
      );
    });
  }
}
