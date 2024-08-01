
import 'package:cart_bliss/common/widgets/layout/grid_layout.dart';
import 'package:cart_bliss/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Dropdown
        Padding(
          padding: const EdgeInsets.only(top: TSizes.defaultSpace, left: TSizes.defaultSpace, right: TSizes.defaultSpace),
          child: DropdownButtonFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.sort),
            ),
            onChanged: (value) {},
            items: ['Name', 'Higher Price', 'Lower Price', 'Sale', 'Newest', 'Popularity']
            .map((option) => DropdownMenuItem(value:option, child: Text(option))).toList(),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
    
        // Products
        GridLayout(itemCount: 8, itemBuilder: (_, index) => const ProductCardVertical(), mainAxisExtent: 288)
      ],
    );
  }
}