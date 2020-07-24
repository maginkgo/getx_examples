import 'package:get/get.dart';
import 'package:pages_with_bottom_nav/pages/widgets/bottom_nav_bar/home_tab_nav.dart';

class BottomNavBarController extends GetxController {
  final _currentIndex = 0.obs;
  int get currentIndex => this._currentIndex.value;
  void changeIndex(int value) {
    this._currentIndex.value = value;
    Get.toNamed(HomeScreenTab.values[value].page);
  }
}
