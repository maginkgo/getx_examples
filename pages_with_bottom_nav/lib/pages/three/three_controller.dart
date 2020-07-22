import 'package:get/get.dart';

class ThreeController extends GetxController {
  final _counter = 0.obs;
  int get counter => this._counter.value;
  void increment() => _counter.value++;

  @override
  void onInit() async {
    // print('onInit - ThreeController');
    await Future.delayed(Duration(milliseconds: 500));
    _counter.value = 3;
    super.onInit();
  }

  @override
  void onClose() {
    print('onClose - ThreeController');
    super.onClose();
  }
}
