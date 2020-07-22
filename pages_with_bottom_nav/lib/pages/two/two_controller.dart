import 'package:get/get.dart';

class TwoController extends GetxController {
  final _counter = 0.obs;
  int get counter => this._counter.value;
  void increment() => _counter.value++;

  @override
  void onInit() async {
    // print('onInit - TwoController');
    await Future.delayed(Duration(milliseconds: 500));
    _counter.value = 2;
    super.onInit();
  }

  @override
  void onClose() {
    print('onClose - TwoController');
    super.onClose();
  }
}
