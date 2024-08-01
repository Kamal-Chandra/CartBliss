import 'package:cart_bliss/common/widgets/appbar/appbar.dart';
import 'package:cart_bliss/features/shop/screens/orders/widgets/order_list_items.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Orders', style: Theme.of(context).textTheme.headlineMedium)),

      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        // Orders
        child: OrderListItems(),
      )

    );
  }
}