import 'package:ecom_with_flutter/features/authentication/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecom_with_flutter/utils/theme/theme.dart';
import 'package:get/get.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: OnboardingScreen(),
    );
  }
}
