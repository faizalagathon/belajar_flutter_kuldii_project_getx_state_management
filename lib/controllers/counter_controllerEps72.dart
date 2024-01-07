import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs; /* Sama */
  // RxInt counter = 0; /* Sama */

  var isDark = false.obs;

  void changeTheme() => isDark.value = !isDark.value;

  void increment() => counter + 1;
  void decrement() => counter - 1;
}
