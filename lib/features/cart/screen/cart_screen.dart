import 'package:ecom_with_flutter/router/config/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cart')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ListTile(
            leading: const Icon(Icons.payment_outlined),
            title: const Text('Proceed to checkout'),
            onTap: () => context.go(RoutesName.cartCheckout),
          ),
          ListTile(
            leading: const Icon(Icons.discount_outlined),
            title: const Text('Apply coupon'),
            onTap: () => context.go(RoutesName.cartCoupons),
          ),
        ],
      ),
    );
  }
}
