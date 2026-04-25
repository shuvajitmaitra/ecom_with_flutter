import 'package:ecom_with_flutter/router/config/tab_config.dart';
import 'package:ecom_with_flutter/router/navigation/custom_tab_bar.dart';
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
      bottomNavigationBar: CustomTabBar(
        activeTab: activeTab,
        onTabSelected: (tab) => context.go(tabRootRoutes[tab]!),
      ),
    );
  }
}
