import 'package:ecom_with_flutter/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:ecom_with_flutter/utils/theme/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      routerConfig: appRouter,
    );
  }
}
