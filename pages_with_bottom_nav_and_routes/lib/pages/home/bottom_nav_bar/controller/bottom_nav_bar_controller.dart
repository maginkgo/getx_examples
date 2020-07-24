import 'package:get/get.dart';

import '../home_tab_nav.dart';

class BottomNavBarController extends GetxController {
  final _currentIndex = 0.obs;
  int get currentIndex => this._currentIndex.value;
  void changeIndex(int value) {
    this._currentIndex.value = value;
    Get.toNamed(HomeScreenTab.values[value].page, id: 1);
  }
}
