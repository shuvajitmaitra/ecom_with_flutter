import 'package:ecom_with_flutter/router/config/routes_name.dart';

enum AppTab { home, category, cart, profile }

//Main Tabs
const Map<AppTab, String> tabRootRoutes = {
  AppTab.home: RoutesName.home,
  AppTab.category: RoutesName.category,
  AppTab.cart: RoutesName.cart,
  AppTab.profile: RoutesName.profile,
};

//Screens Under the Tab
const Map<String, AppTab> routeOwnership = {
  RoutesName.home: AppTab.home,
  RoutesName.homeDetails: AppTab.home,
  RoutesName.homeOffers: AppTab.home,
  RoutesName.category: AppTab.category,
  RoutesName.categoryProducts: AppTab.category,
  RoutesName.categoryBrands: AppTab.category,
  RoutesName.cart: AppTab.cart,
  RoutesName.cartCheckout: AppTab.cart,
  RoutesName.cartCoupons: AppTab.cart,
  RoutesName.profile: AppTab.profile,
  RoutesName.profileSettings: AppTab.profile,
  RoutesName.profileOrders: AppTab.profile,
};
