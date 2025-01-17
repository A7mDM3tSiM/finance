import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:on_boarding/core/theme/theme.dart';
import 'package:on_boarding/screens/onboarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: lightTheme,
      home: const OnboardingScreen(),
    );
  }
}
