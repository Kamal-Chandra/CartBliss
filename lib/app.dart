import 'package:cart_bliss/bindings/general_bindings.dart';
import 'package:cart_bliss/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:cart_bliss/utils/theme/theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      home: const Scaffold(
        backgroundColor: TColors.primary,
        body: Center(
          child: CircularProgressIndicator(color: TColors.white)
        ),
      )
    );
  }
}