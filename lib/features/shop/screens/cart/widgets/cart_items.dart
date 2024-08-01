import 'package:cart_bliss/common/widgets/products/cart/add_remove_button.dart';
import 'package:cart_bliss/common/widgets/products/product_cards/product_price_text.dart';
import 'package:cart_bliss/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key, this.showAddRemoveButtons=true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        itemCount: 4,
        separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwSections),
        itemBuilder: (_, index) => Column(
          children: [
            const CartItem(),
      
            if (showAddRemoveButtons) const SizedBox(height: TSizes.spaceBtwItems),
            
            if (showAddRemoveButtons) const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 90),
                    ProductQuantityWithAddRemoveButton(),
                  ],
                ),
                ProductPriceText(price: '250', isLarge: true),
              ],
            ),
          ],
        ),
      ),
    );
  }
}