import 'package:firebase_auth_demo/src/pages/login/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinearLoading extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext contextI) => GetX<LoginController>(builder: (c) {
        return c.isLoading.value
            ? LinearProgressIndicator(
                minHeight: 2,
                backgroundColor: Colors.grey[900],
              )
            : Container();
      });

  @override
  Size get preferredSize => Size.fromHeight(4);
}
