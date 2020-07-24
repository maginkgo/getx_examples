import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../auth/controllers/auth_controller.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LoginPage')),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.account_circle),
        onPressed: () {
          Get.find<AuthController>().login();
        },
      ),
    );
  }
}
