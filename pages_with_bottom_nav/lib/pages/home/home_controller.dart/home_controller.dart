import 'package:get/get.dart';

class HomeController extends GetxController {
  final _currentIndex = 0.obs;
  int get currentIndex => this._currentIndex.value;
  set currentIndex(int value) => this._currentIndex.value = value;
}
