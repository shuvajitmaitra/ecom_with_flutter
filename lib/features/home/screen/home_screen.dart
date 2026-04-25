import 'package:ecom_with_flutter/router/config/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ListTile(
            leading: const Icon(Icons.storefront_outlined),
            title: const Text('Featured products'),
            subtitle: const Text('Open the home details screen'),
            onTap: () => context.go(RoutesName.homeDetails),
          ),
          ListTile(
            leading: const Icon(Icons.local_offer_outlined),
            title: const Text('Today\'s offers'),
            subtitle: const Text('Open the offers route'),
            onTap: () => context.push(RoutesName.homeOffers),
          ),
          ListTile(
            leading: const Icon(Icons.local_offer_outlined),
            title: const Text('My Order'),
            subtitle: const Text('Open the offers route'),
            onTap: () => context.push(RoutesName.profileOrders),
          ),
        ],
      ),
    );
  }
}
