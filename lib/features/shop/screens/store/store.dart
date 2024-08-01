import 'package:cart_bliss/features/shop/screens/brands/all_brands.dart';
import 'package:cart_bliss/features/shop/screens/store/widgets/category_tab.dart';
import 'package:cart_bliss/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:cart_bliss/utils/constants/colors.dart';
import 'package:cart_bliss/common/widgets/appbar/appbar.dart';
import 'package:cart_bliss/common/widgets/appbar/tabbar.dart';
import 'package:cart_bliss/utils/helpers/helper_functions.dart';
import 'package:cart_bliss/common/widgets/layout/grid_layout.dart';
import 'package:cart_bliss/common/widgets/texts/section_heading.dart';
import 'package:cart_bliss/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:cart_bliss/features/shop/screens/store/widgets/brand_card.dart';
import 'package:cart_bliss/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:get/get.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = HelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: const Text('Store'),
          actions: [
            CartCounterIcon(iconColor: dark ? TColors.white : TColors.dark),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverOverlapAbsorber(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  pinned: true,
                  floating: true,
                  automaticallyImplyLeading: false,
                  backgroundColor: dark ? Colors.black : Colors.white,
                  expandedHeight: 380,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Padding(
                      padding: EdgeInsets.zero,
                      child: ListView(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          const SizedBox(height: TSizes.spaceBtwItems / 2),
                          const SearchContainer(
                            text: 'Search in Store',
                            icon: Icons.search,
                          ),
                          const SizedBox(height: TSizes.spaceBtwSections / 2),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: TSizes.lg),
                            child: SectionHeading(
                              title: 'Featured Brands',
                              showActionButton: true,
                              onPressed: () => Get.to(() => const AllBrandsScreen()),
                            ),
                          ),
                          const SizedBox(height: TSizes.spaceBtwSections / 2),
                          GridLayout(
                            itemCount: 4,
                            mainAxisExtent: 75,
                            itemBuilder: (_, index) {
                              return BrandCard(
                                onTap: () {},
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  bottom: const TTabBar(
                    tabs: [
                      Tab(child: Text('Sports')),
                      Tab(child: Text('Clothes')),
                      Tab(child: Text('Cosmetics')),
                      Tab(child: Text('Electronics')),
                      Tab(child: Text('Furniture')),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              CategoryTab(image: [TImages.productImage1, TImages.productImage1, TImages.productImage1]),
              CategoryTab(image: [TImages.productImage1, TImages.productImage1, TImages.productImage1]),
              CategoryTab(image: [TImages.productImage1, TImages.productImage1, TImages.productImage1]),
              CategoryTab(image: [TImages.productImage1, TImages.productImage1, TImages.productImage1]),
              CategoryTab(image: [TImages.productImage1, TImages.productImage1, TImages.productImage1]),
            ],
          ),
        ),
      ),
    );
  }
}
