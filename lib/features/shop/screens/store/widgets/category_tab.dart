import 'package:cart_bliss/common/widgets/layout/grid_layout.dart';
import 'package:cart_bliss/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter/material.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:cart_bliss/common/widgets/texts/section_heading.dart';
import 'package:cart_bliss/common/widgets/brands/brand_show_case.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    super.key,
    required this.image,
  });

  final List<String> image;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children:[
        Padding(
          padding: const EdgeInsets.only(top: TSizes.defaultSpace * 3, left: TSizes.md, right: TSizes.md),
          child: Column(
            children: [
              // Brands
              BrandShowCase(images: image),
              const SizedBox(height: TSizes.spaceBtwBoxes * 2),
        
              // Products
              SectionHeading(title: 'You Might Like', onPressed: (){}),
              const SizedBox(height: TSizes.spaceBtwBoxes * 2),

            ]
          ),
        ),
        GridLayout(itemCount: 4, mainAxisExtent: 288, itemBuilder: (_, index)=>const ProductCardVertical())
      ]
    );
  }
}