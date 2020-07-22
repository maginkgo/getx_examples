import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/src/controllers/auth_controller.dart';

class HomePage extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Sign Out"),
          onPressed: () {
            // controller.signOut();
          },
        ),
      ),
    );
  }
}
