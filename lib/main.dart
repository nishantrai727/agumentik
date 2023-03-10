import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './view/onboardingScreen.dart';
import './view/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/onboarding",
      getPages: [
        GetPage(name: "/onboarding", page: (() => OnboardingScreen())),
        GetPage(name: "/home", page: (() => HomeScreen()))
      ],
      home: OnboardingScreen(),
    );
  }
}
