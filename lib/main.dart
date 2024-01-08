// ignore_for_file: prefer_const_constructors

import 'package:belajar_flutter_kuldii_project_getx_state_management/controllers/counter_controller.dart';
import 'package:belajar_flutter_kuldii_project_getx_state_management/controllers/orang_controller.dart';

import './models/orang.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // var count = 0.obs; // .obs agar bisa di observasi
  // void add() {
  //   count++;
  // }

  // Cara Kedua
  // var orang =   Orang(nama: 'agathon', umur: 17).obs;

  // Cara Ketiga
  // final orangC = Get.put(OrangController());

  // Cara Pertama menggunakan Obx Reactive
  // final counterC = Get.put(CounterController());

  // Cara Ketiga apabila ingin inisialisasi controller
  final countC = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child:
              // Obx(() => Text(
              //       // Cara Pertama
              //       // 'Nama Saya ${orang.nama.value}', // engga bisa '$orang.nama', harus '${orang.nama}'

              //       // Cara Ketiga
              //       // 'Nama Saya ${orangC.orang.nama}',

              //       // Cara Keempat
              //       // 'Nama Saya ${orangC.orang.value.nama}',

              //       // Cara Pertama menggunakan Obx Reactive
              //       // 'Angka ${counterC.count}',
              //       '',
              //       style: TextStyle(fontSize: 35),
              //     )),

              // Cara Kedua menggunakan GetX Reactive
              //     GetX<CounterController>(
              //   init: CounterController(),
              //   builder: (_) {
              //     return Text(
              //       'Angka ${_.count}',
              //       style: TextStyle(fontSize: 35),
              //     );
              //   },
              // ),
              // Cara Ketiga menggunakan GetBuilder Simple
              GetBuilder<CounterController>(
            // Apabila controller sdh di inisialisasi, engga perlu pake init
            // init: CounterController(),
            builder: (controller) {
              return Text(
                'Angka ${controller.count}',
                style: TextStyle(fontSize: 35),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Cara Pertama
            // orang.nama.value = orang.nama.value.toUpperCase();

            // Cara Kedua
            // orang.update((_) {
            //   orang.value.nama = orang.value.nama.toString().toUpperCase();
            // });

            // Cara Ketiga
            // orangC.changeUpperCase();

            // Cara Pertama menggunakan Obx Reactive
            // counterC.increment();

            // Cara Kedua menggunakan GetX Reactive
            // Get.find<CounterController>().increment();
            // Apabila controller sdh di inisialisasi, engga perlu pake init
            countC.increment();
          },
        ),
      ),
    );
  }
}
