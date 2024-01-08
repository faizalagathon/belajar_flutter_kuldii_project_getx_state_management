import '../models/orang.dart';
import 'package:get/get.dart';

class OrangController extends GetxController {
  // Cara Ketiga
  // var orang = Orang();
  // void changeUpperCase() {
  //   orang.nama.value = orang.nama.value.toUpperCase();
  // }
  // void changeLowerCase() {
  //   orang.nama.value = orang.nama.value.toLowerCase();
  // }

  // Cara Keempat
  var orang = Orang(nama: 'faizal', umur: 17).obs;
  void changeUpperCase() {
    orang.update((val) {
      orang.value.nama = orang.value.nama.toString().toUpperCase();
    });
  }

  void changeLowerCase() {
    orang.update((val) {
      orang.value.nama = orang.value.nama.toString().toLowerCase();
    });
  }
}
