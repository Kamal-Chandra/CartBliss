import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:cart_bliss/common/widgets/appbar/appbar.dart';
import 'package:cart_bliss/features/shop/screens/checkout/checkout.dart';
import 'package:cart_bliss/features/shop/screens/cart/widgets/cart_items.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: const CartItems(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: ()=>Get.to(()=>const CheckoutScreen()),
          child: const Text('Checkout \$ 250'),
        ),
      ),
    );
  }
}