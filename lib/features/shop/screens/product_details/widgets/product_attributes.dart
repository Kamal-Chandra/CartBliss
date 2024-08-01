import 'package:cart_bliss/common/styles/rounded_container.dart';
import 'package:cart_bliss/common/widgets/chips/choice_chip.dart';
import 'package:cart_bliss/common/widgets/products/product_cards/product_price_text.dart';
import 'package:cart_bliss/common/widgets/texts/product_title_text.dart';
import 'package:cart_bliss/common/widgets/texts/section_heading.dart';
import 'package:cart_bliss/utils/constants/colors.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:cart_bliss/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        RoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const SectionHeading(title: 'Variation', showActionButton: false),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(title: 'Price:', smallSize: true),
                          const SizedBox(width: TSizes.spaceBtwItems),
                          Text('\$25', style: Theme.of(context).textTheme.labelSmall!.apply(decoration: TextDecoration.lineThrough)),
                          const SizedBox(width: TSizes.spaceBtwItems / 2),
                          const ProductPriceText(price: '20', isLarge: true),
                        ],
                      ),
                      Row(
                        children: [
                          const ProductTitleText(title: 'Stock:', smallSize: true),
                          const SizedBox(width: TSizes.spaceBtwItems),
                          Text('Available', style: Theme.of(context).textTheme.labelSmall),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              const ProductTitleText(
                title: 'Description:\nThis is the Description of Product',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: TSizes.spaceBtwItems),
            const SectionHeading(title: 'Colors', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: TSizes.spaceBtwItems,
              children: [
                TChoiceChip(label: 'Green', selected: true, onSelected: (value) {}),
                TChoiceChip(label: 'Red', selected: false, onSelected: (value) {}),
                TChoiceChip(label: 'Blue', selected: false, onSelected: (value) {}),
                TChoiceChip(label: 'Yellow', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: TSizes.spaceBtwItems),
            const SectionHeading(title: 'Sizes', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: TSizes.spaceBtwItems,
              children: [
                TChoiceChip(label: 'S', selected: true, onSelected: (value) {}),
                TChoiceChip(label: 'M', selected: false, onSelected: (value) {}),
                TChoiceChip(label: 'L', selected: false, onSelected: (value) {}),
                TChoiceChip(label: 'XL', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
