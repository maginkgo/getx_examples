import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart/home_controller.dart';
import 'widgets/bottom_nav_bar.dart';
import 'widgets/page_view.dart';

class HomePage extends StatelessWidget {
  final c = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PagesView(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
