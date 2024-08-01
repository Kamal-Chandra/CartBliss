// ignore_for_file: unused_import

import 'package:cart_bliss/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:cart_bliss/utils/theme/theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:cart_bliss/features/authentication/screens/onboarding/onboarding.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const OnBoardingScreen()
    );
  }
}