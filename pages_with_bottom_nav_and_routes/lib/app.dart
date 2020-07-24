import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/home/bottom_nav_bar/controller/bindings/bottom_nav_bar_binding.dart';
import 'pages/home/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BottomNavBarBinding(),
      theme: ThemeData.dark().copyWith(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/home', page: () => HomePage()),
      ],
    );
  }
}
