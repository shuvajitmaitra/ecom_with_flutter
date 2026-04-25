import 'package:ecom_with_flutter/router/config/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeOffersScreen extends StatelessWidget {
  const HomeOffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Offers')),
      body: Center(
        child: Column(
          children: [
            Text('Home Offers Screen'),
            ElevatedButton(
              child: Text("My Order"),
              onPressed: () {
                context.go(RoutesName.profileOrders);
              },
            ),
          ],
        ),
      ),
    );
  }
}
