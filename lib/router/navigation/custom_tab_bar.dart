import 'package:ecom_with_flutter/router/config/tab_config.dart';
import 'package:ecom_with_flutter/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    required this.activeTab,
    required this.onTabSelected,
  });

  final AppTab activeTab;
  final ValueChanged<AppTab> onTabSelected;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final surfaceColor = isDark ? const Color(0xFF101216) : Colors.white;
    final borderColor = isDark ? Colors.white12 : const Color(0xFFE8EDF2);
    final shadowColor = isDark
        ? Colors.black.withValues(alpha: 0.24)
        : TColors.containerShadow;

    const items = <_TabBarItem>[
      _TabBarItem(
        tab: AppTab.home,
        label: 'Home',
        icon: Icons.home_outlined,
        activeIcon: Icons.home_filled,
      ),
      _TabBarItem(
        tab: AppTab.category,
        label: 'Category',
        icon: Icons.grid_view_outlined,
        activeIcon: Icons.grid_view_rounded,
      ),
      _TabBarItem(
        tab: AppTab.cart,
        label: 'Cart',
        icon: Icons.shopping_bag_outlined,
        activeIcon: Icons.shopping_bag,
      ),
      _TabBarItem(
        tab: AppTab.profile,
        label: 'Profile',
        icon: Icons.person_outline,
        activeIcon: Icons.person,
      ),
    ];

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Container(
        height: 82,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          color: surfaceColor,
          borderRadius: BorderRadius.circular(28),
          border: Border.all(color: borderColor),
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              blurRadius: 24,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Row(
          children: items
              .map(
                (item) => Expanded(
                  child: _CustomTabBarButton(
                    item: item,
                    isSelected: activeTab == item.tab,
                    onTap: () => onTabSelected(item.tab),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class _CustomTabBarButton extends StatelessWidget {
  const _CustomTabBarButton({
    required this.item,
    required this.isSelected,
    required this.onTap,
  });

  final _TabBarItem item;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final unselectedColor = isDark ? Colors.white70 : TColors.iconGreyColor;

    return AnimatedContainer(
      duration: Duration.zero,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        gradient: isSelected ? TColors.greenGradient : null,
        color: isSelected ? null : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: onTap,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  isSelected ? item.activeIcon : item.icon,
                  size: 20,
                  color: isSelected ? TColors.textWhite : unselectedColor,
                ),
                const SizedBox(height: 4),
                SizedBox(
                  width: double.infinity,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      item.label,
                      maxLines: 1,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: isSelected ? TColors.textWhite : unselectedColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TabBarItem {
  const _TabBarItem({
    required this.tab,
    required this.label,
    required this.icon,
    required this.activeIcon,
  });

  final AppTab tab;
  final String label;
  final IconData icon;
  final IconData activeIcon;
}
