import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamilton/features/home/view/home_view.dart';
import 'package:hamilton/utils/logic/di/di.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.fadeIn,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialBinding: DI(),
      home: const HomeView(),
    );
  }
}
