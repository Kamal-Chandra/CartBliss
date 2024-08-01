import 'package:cart_bliss/common/styles/rounded_container.dart';
import 'package:cart_bliss/common/widgets/products/product_cards/product_price_text.dart';
import 'package:cart_bliss/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:cart_bliss/common/widgets/texts/product_title_text.dart';
import 'package:cart_bliss/features/shop/screens/store/widgets/circular_image.dart';
import 'package:flutter/material.dart';
import 'package:cart_bliss/utils/constants/enums.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:cart_bliss/utils/constants/colors.dart';
import 'package:cart_bliss/utils/constants/image_strings.dart';
import 'package:cart_bliss/utils/helpers/helper_functions.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = HelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price and Sale Price
        Row(
          children: [
            RoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary,
              padding: const EdgeInsets.symmetric(
                horizontal: TSizes.sm,
                vertical: TSizes.xs,
              ),
              child: Text(
                '25%',
                style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('\$100', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: TSizes.spaceBtwItems),
            const ProductPriceText(price: '75', isLarge: true),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/1.5),

        // Title
        const ProductTitleText(title: 'Nike Jordan'),
        const SizedBox(height: TSizes.spaceBtwItems/1.5),

        // Stock Status
        Row(
          children: [
            const ProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('Available', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: TSizes.spaceBtwItems/1.5),
          ]
        ),
        const SizedBox(height: TSizes.spaceBtwItems/1.5),

        // Brand
        Row(
          children: [
            CircularImage(
              image: TImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: dark? TColors.white: TColors.black,
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            const BrandTitleTextWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.large),
          ],
        )

      ],
    );
  }
}