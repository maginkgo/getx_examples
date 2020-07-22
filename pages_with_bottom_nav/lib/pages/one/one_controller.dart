import 'package:get/get.dart';

class OneController extends GetxController {
  final _counter = 0.obs;
  int get counter => this._counter.value;
  void increment() => _counter.value++;

  @override
  void onInit() async {
    // print('onInit - OneController');
    await Future.delayed(Duration(milliseconds: 500));
    _counter.value = 1;
    super.onInit();
  }

  @override
  void onClose() {
    print('onClose - OneController');
    super.onClose();
  }
}
