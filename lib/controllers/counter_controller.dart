import 'package:get/get.dart';

class CounterController extends GetxController {

  // Cara Kedua menggunakan GetX Reactive 
  // var count = 0.obs;
  // void increment() {
  //   count++;
  // }

  // Cara Ketiga menggunakan GetBuilder Simple
  var count = 0;
  void increment() {
    count++;
    update();
  }
}
