import 'package:flutter/material.dart';

class HomeOffersScreen extends StatelessWidget {
  const HomeOffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Offers')),
      body: const Center(child: Text('Home Offers Screen')),
    );
  }
}
