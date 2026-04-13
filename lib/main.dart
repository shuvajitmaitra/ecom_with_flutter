import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Text('Hello World!'), Icon(Iconsax.home_2_copy)],
          ),
        ),
      ),
    );
  }
}
