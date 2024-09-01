import 'package:get/get.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import 'package:flutter/material.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:cart_bliss/utils/constants/image_strings.dart';
import 'package:cart_bliss/common/widgets/layout/grid_layout.dart';
import 'package:cart_bliss/common/widgets/texts/section_heading.dart';
import 'package:cart_bliss/features/shop/screens/all_products/all_products.dart';
import 'package:cart_bliss/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:cart_bliss/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:cart_bliss/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:cart_bliss/common/widgets/custom_shapes/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Primary Header Container
            const PrimaryHeaderContainer(
              child: Column(
                children: [
                  // AppBar
                  HomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // Search Bar
                  SearchContainer(text: 'Search in Store', icon: Icons.search),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // Categories Section
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Heading
                        SectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                        ),
                        SizedBox(height: TSizes.spaceBtwBoxes),

                        // Categories List
                        HomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Carousel
            const PromoSlider(
              banners: [
                TImages.promobanner1,
                TImages.promobanner2,
                TImages.promobanner3
              ],
            ),

            // Heading
            Padding(
              padding: const EdgeInsets.only(left: TSizes.lg, top: TSizes.lg, right: TSizes.lg),
              child: SectionHeading(title: 'Popular Products', onPressed: ()=>Get.to(()=>const AllProducts()))
            ),

            // Product Grid
            GridLayout(itemCount: 4, itemBuilder: (_, index)=>const ProductCardVertical(), mainAxisExtent: 288),
          ],
        ),
      ),
    );
  }
}