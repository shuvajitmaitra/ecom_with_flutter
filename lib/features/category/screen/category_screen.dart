import 'package:ecom_with_flutter/router/config/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Category')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ListTile(
            leading: const Icon(Icons.inventory_2_outlined),
            title: const Text('Browse products'),
            onTap: () => context.go(RoutesName.categoryProducts),
          ),
          ListTile(
            leading: const Icon(Icons.workspace_premium_outlined),
            title: const Text('Top brands'),
            onTap: () => context.go(RoutesName.categoryBrands),
          ),
        ],
      ),
    );
  }
}
