import 'package:cart_bliss/features/shop/screens/product_details/product_details.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:cart_bliss/common/styles/shadows.dart';
import 'package:cart_bliss/utils/constants/colors.dart';
import 'package:cart_bliss/utils/constants/image_strings.dart';
import 'package:cart_bliss/utils/helpers/helper_functions.dart';
import 'package:cart_bliss/common/styles/rounded_container.dart';
import 'package:cart_bliss/common/widgets/Icons/circular_icon.dart';
import 'package:cart_bliss/common/widgets/images/rounded_image.dart';
import 'package:cart_bliss/common/widgets/texts/product_title_text.dart';
import 'package:cart_bliss/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:cart_bliss/common/widgets/products/product_cards/product_price_text.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(()=> const ProductDetailsScreen()),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Thumbnail, Wishlist, Discount Tag
            RoundedContainer(
              width: 180,
              padding: const EdgeInsets.all(TSizes.xs / 2),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  const RoundedImage(imageUrl: TImages.productImage1),

                  // Sale Tag
                  Positioned(
                    top: TSizes.sm,
                    left: TSizes.sm,
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

            const SizedBox(height: TSizes.spaceBtwItems / 2),

            // Details
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(title: 'Nike Shoe', smallSize: true),
                  SizedBox(height: TSizes.spaceBtwItems / 2),

                  // Product Name & Brand
                  BrandTitleTextWithVerifiedIcon(title: 'Nike'),
                ],
              ),
            ),
            const Spacer(),

            // Price and Add to Cart
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: TSizes.sm),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ProductPriceText(
                    currencySign: '\$',
                    price: '35.0',
                    maxLines: 1,
                    isLarge: false,
                    lineThrough: false,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: TSizes.xs),
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
            ),
            const SizedBox(height: TSizes.xs),
          ],
        ),
      ),
    );
  }
}