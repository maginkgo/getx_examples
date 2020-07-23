import 'package:firebase_auth_demo/src/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LoginPage')),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.account_circle),
        onPressed: authController.setUser,
      ),
    );
  }
}
