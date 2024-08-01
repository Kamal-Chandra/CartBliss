import 'package:cart_bliss/common/widgets/texts/section_heading.dart';
import 'package:cart_bliss/features/shop/screens/checkout/checkout.dart';
import 'package:cart_bliss/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:cart_bliss/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:cart_bliss/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:cart_bliss/features/shop/screens/product_details/widgets/product_metadata.dart';
import 'package:cart_bliss/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:cart_bliss/features/shop/screens/product_details/widgets/product_details_image_slider.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image Slider
            const ProductImageSlider(),

            // Product Details
            Padding(
              padding: const EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  // Rating & Share
                  const RatingAndShare(),

                  // Price, Title, Stock & Fund
                  const ProductMetaData(),

                  const SizedBox(height: TSizes.spaceBtwItems),

                  // Attributes
                  const ProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Checkout Button
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()=>Get.to(()=>const CheckoutScreen()), child: const Text('Checkout'))),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Description
                  const SectionHeading(title: 'Description', showActionButton: false),
                  const SizedBox(height: TSizes.xs,),
                  const ReadMoreText(
                    'This is the description of product it can be very large and this library is helpfull for this widget. So do use it.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show More',
                    trimExpandedText: '\nShow Less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  // Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems/2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionHeading(title: 'Reviews (203)', showActionButton: false),
                      IconButton(onPressed: ()=>Get.to(()=>const ProductReviewScreen()), icon: const Icon(Iconsax.arrow_right_3))
                    ],
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}