import 'package:cart_bliss/common/styles/rounded_container.dart';
import 'package:cart_bliss/common/widgets/Icons/circular_icon.dart';
import 'package:cart_bliss/common/widgets/images/rounded_image.dart';
import 'package:cart_bliss/common/widgets/products/product_cards/product_price_text.dart';
import 'package:cart_bliss/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:cart_bliss/common/widgets/texts/product_title_text.dart';
import 'package:cart_bliss/features/shop/screens/product_details/product_details.dart';
import 'package:cart_bliss/utils/constants/colors.dart';
import 'package:cart_bliss/utils/constants/image_strings.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:cart_bliss/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(()=> const ProductDetailsScreen()),
      child: Container(
        width: 270,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.softGrey,
        ),
        child: Row(
          children: [
            // Thumbnail
            RoundedContainer(
              height: 120,
              padding: const EdgeInsets.all(TSizes.xs),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  // Thumbnail Image
                  const SizedBox(
                    height: 120,
                    width: 120,
                    child: RoundedImage(imageUrl: TImages.productImage1, applyImageRadius: true, fit: BoxFit.cover, borderRadius: TSizes.sm),
                  ),
      
                  // Sale Tag
                  Positioned(
                    top: TSizes.xs,
                    left: TSizes.xs,
                    child: RoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.6),
                      padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),
                      ),
                    ),
                  ),
      
                  // Favourite Icon
                  const Positioned(
                    top: TSizes.xs,
                    right: TSizes.xs,
                    child: CircularIcon(icon: Iconsax.heart5, color: Colors.red),
                  ),
                ],
              ),
            ),
      
            // Details
            SizedBox(
              width: 140,
              child: Padding(
                padding: const EdgeInsets.only(left: TSizes.sm, top: TSizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProductTitleText(title: 'Nike Shoes', smallSize: true),
                        SizedBox(height: TSizes.spaceBtwItems / 2),
                        BrandTitleTextWithVerifiedIcon(title: 'Nike'),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Price
                        const Flexible(child: ProductPriceText(price: '250', isLarge: true, maxLines: 2)),
      
                        // Add to Cart
                        Padding(
                          padding: const EdgeInsets.only(right: TSizes.sm, bottom: TSizes.sm),
                          child: Container(
                            padding: const EdgeInsets.all(TSizes.xs),
                            decoration: const BoxDecoration(
                              color: TColors.dark,
                              borderRadius: BorderRadius.all(Radius.circular(TSizes.productImageRadius)),
                            ),
                            child: const SizedBox(
                              height: TSizes.iconLg,
                              width: TSizes.iconLg,
                              child: Center(
                                child: Icon(
                                  Iconsax.add,
                                  color: TColors.white,
                                  size: TSizes.lg * 1.2,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}