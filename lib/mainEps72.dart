// ignore_for_file: prefer_const_constructors

import './controllers/counter_controllerEps72.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  final counterC = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => MaterialApp(
          theme: counterC.isDark.value ? ThemeData.dark() : ThemeData.light(),
          home: HomePage(),
        ));
  }
}

// Bisa Full Stateless
class HomePage extends StatelessWidget {
  // const HomePage({super.key});

  // final counterC = Get.put(CounterController());
  final c = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(() => Text(
              'Angka ${c.counter}',
              style: TextStyle(fontSize: 35),
            )),
      ),
      floatingActionButton:
          // FloatingActionButton(onPressed: () => counterC.increment(),
          // FloatingActionButton(onPressed: () => counterC.decrement()),
          FloatingActionButton(onPressed: () => c.changeTheme()),
    );
  }
}
