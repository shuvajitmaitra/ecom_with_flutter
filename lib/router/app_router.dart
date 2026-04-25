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
    ShellRoute(
      builder: (context, state, child) =>
          AppShell(location: state.uri.path, child: child),
      routes: [
        GoRoute(
          path: RoutesName.home,
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: RoutesName.homeDetails,
          builder: (context, state) => const HomeDetailsScreen(),
        ),
        GoRoute(
          path: RoutesName.homeOffers,
          builder: (context, state) => const HomeOffersScreen(),
        ),
        GoRoute(
          path: RoutesName.category,
          builder: (context, state) => const CategoryScreen(),
        ),
        GoRoute(
          path: RoutesName.category,
          builder: (context, state) => const CategoryProductsScreen(),
        ),
        GoRoute(
          path: RoutesName.categoryBrands,
          builder: (context, state) => const CategoryBrandsScreen(),
        ),
        GoRoute(
          path: RoutesName.cart,
          builder: (context, state) => const CartScreen(),
        ),
        GoRoute(
          path: RoutesName.cartCheckout,
          builder: (context, state) => const CartCheckoutScreen(),
        ),
        GoRoute(
          path: RoutesName.cartCoupons,
          builder: (context, state) => const CartCouponsScreen(),
        ),
        GoRoute(
          path: RoutesName.profile,
          builder: (context, state) => const ProfileScreen(),
        ),
        GoRoute(
          path: RoutesName.profileSettings,
          builder: (context, state) => const ProfileSettingsScreen(),
        ),
        GoRoute(
          path: RoutesName.profileOrders,
          builder: (context, state) => const ProfileOrdersScreen(),
        ),
      ],
    ),
  ],
);
