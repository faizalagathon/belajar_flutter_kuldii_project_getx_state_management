// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final countC = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // NOTE 
              // Menggunakan id hanya bisa di GetBuilder
              // Jadi di Obx dan Getx engga bisa
              GetBuilder<CountController>(
                id: 'joni',
                builder: (_) {
                  return Text(
                    'Joni ${countC.count}',
                    style: TextStyle(fontSize: 25),
                  );
                },
              ),
              GetBuilder<CountController>(
                id: 'panjul',
                builder: (_) {
                  return Text(
                    'Panjul ${countC.count}',
                    style: TextStyle(fontSize: 25),
                  );
                },
              ),
              GetBuilder<CountController>(
                builder: (_) {
                  return Text(
                    'Umum ${countC.count}',
                    style: TextStyle(fontSize: 25),
                  );
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => countC.add(),
          child: Text(
            '\$',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}

class CountController extends GetxController {
  var count = 0;

  void add() {
    count++;
    // update(); // Update Yang tidak mempunyai id
    update(['hello']); // Update Yang hanya mempunyai id 'hello'
    update(['joni', 'panjul']); // Update Yang hanya mempunyai id 'joni' dan 'panjul'
  }
}
