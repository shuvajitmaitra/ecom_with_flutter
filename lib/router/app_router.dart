import 'package:ecom_with_flutter/features/cart/screen/cart_checkout_screen.dart';
import 'package:ecom_with_flutter/features/cart/screen/cart_coupons_screen.dart';
import 'package:ecom_with_flutter/features/cart/screen/cart_screen.dart';
import 'package:ecom_with_flutter/features/category/screen/category_brands_screen.dart';
import 'package:ecom_with_flutter/features/category/screen/category_products_screen.dart';
import 'package:ecom_with_flutter/features/category/screen/category_screen.dart';
import 'package:ecom_with_flutter/features/home/screen/home_details_screen.dart';
import 'package:ecom_with_flutter/features/home/screen/home_offers_screen.dart';
import 'package:ecom_with_flutter/features/home/screen/home_screen.dart';
import 'package:ecom_with_flutter/features/profile/screen/profile_orders_screen.dart';
import 'package:ecom_with_flutter/features/profile/screen/profile_screen.dart';
import 'package:ecom_with_flutter/features/profile/screen/profile_settings_screen.dart';
import 'package:ecom_with_flutter/router/config/routes_name.dart';
import 'package:ecom_with_flutter/router/navigation/app_shell.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  navigatorKey: Get.key,
  initialLocation: RoutesName.home,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          AppShell(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutesName.home,
              builder: (context, state) => const HomeScreen(),
              routes: [
                GoRoute(
                  path: 'details',
                  builder: (context, state) => const HomeDetailsScreen(),
                ),
                GoRoute(
                  path: 'offers',
                  builder: (context, state) => const HomeOffersScreen(),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutesName.category,
              builder: (context, state) => const CategoryScreen(),
              routes: [
                GoRoute(
                  path: 'products',
                  builder: (context, state) => const CategoryProductsScreen(),
                ),
                GoRoute(
                  path: 'brands',
                  builder: (context, state) => const CategoryBrandsScreen(),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutesName.cart,
              builder: (context, state) => const CartScreen(),
              routes: [
                GoRoute(
                  path: 'checkout',
                  builder: (context, state) => const CartCheckoutScreen(),
                ),
                GoRoute(
                  path: 'coupons',
                  builder: (context, state) => const CartCouponsScreen(),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutesName.profile,
              builder: (context, state) => const ProfileScreen(),
              routes: [
                GoRoute(
                  path: 'settings',
                  builder: (context, state) => const ProfileSettingsScreen(),
                ),
                GoRoute(
                  path: 'orders',
                  builder: (context, state) => const ProfileOrdersScreen(),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);
