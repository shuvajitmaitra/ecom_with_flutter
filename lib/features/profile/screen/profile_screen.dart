import 'package:ecom_with_flutter/router/config/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Account settings'),
            onTap: () => context.go(RoutesName.profileSettings),
          ),
          ListTile(
            leading: const Icon(Icons.receipt_long_outlined),
            title: const Text('My orders'),
            onTap: () => context.go(RoutesName.profileOrders),
          ),
        ],
      ),
    );
  }
}
