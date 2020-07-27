import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sign_out_view_controller.dart';

class SignOutView extends GetWidget<SignOutViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Column(children: [UserField(), GoButton()]),
    );
  }
}

class GoButton extends GetWidget<SignOutViewController> {
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
            : Text('Go!'),
        color: Get.theme.colorScheme.secondaryVariant,
        onPressed: controller.isLoading ? null : controller.onPressedGo,
        shape: StadiumBorder(),
      );
    });
  }
}

class UserField extends GetWidget<SignOutViewController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextFormField(
        controller: controller.firstField,
        decoration: InputDecoration(
          helperText: 'Please, enter your username, phone or email',
          suffixIcon: IconButton(
            icon: Icon(Icons.close),
            onPressed: controller.onPressedClearFirstField,
          ),
          filled: true,
        ),
      ),
    );
  }
}
