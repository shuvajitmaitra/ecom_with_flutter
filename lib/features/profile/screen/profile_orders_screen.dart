import 'package:flutter/material.dart';

class ProfileOrdersScreen extends StatelessWidget {
  const ProfileOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Orders')),
      body: const Center(child: Text('Profile Orders Screen')),
    );
  }
}
