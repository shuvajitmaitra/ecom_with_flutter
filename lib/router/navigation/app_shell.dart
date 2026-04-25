import 'package:ecom_with_flutter/router/config/tab_config.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppShell extends StatelessWidget {
  final Widget child;
  final String location;
  const AppShell({super.key, required this.child, required this.location});

  AppTab get _activeTab => routeOwnership[location] ?? AppTab.home;

  @override
  Widget build(BuildContext context) {
    final activeTab = _activeTab;
    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: AppTab.values.indexOf(activeTab),
        onDestinationSelected: (index) {
          final tab = AppTab.values[index];
          context.go(tabRootRoutes[tab]!);
        },
        destinations: [
          const NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            selectedIcon: Icon(Icons.home_filled),
          ),
          const NavigationDestination(
            icon: Icon(Icons.grid_view_outlined),
            selectedIcon: Icon(Icons.grid_view_rounded),
            label: 'Category',
          ),
          const NavigationDestination(
            icon: Icon(Icons.shopping_bag_outlined),
            selectedIcon: Icon(Icons.shopping_bag),
            label: 'Cart',
          ),
          const NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
