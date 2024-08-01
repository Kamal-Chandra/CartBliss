import 'package:cart_bliss/common/widgets/appbar/appbar.dart';
import 'package:cart_bliss/common/widgets/layout/grid_layout.dart';
import 'package:cart_bliss/common/widgets/texts/section_heading.dart';
import 'package:cart_bliss/features/shop/screens/brands/brand_products.dart';
import 'package:cart_bliss/features/shop/screens/store/widgets/brand_card.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.zero,
          child: Column(
            children: [
              // Heading
              const Padding(
                padding: EdgeInsets.only(left: TSizes.lg),
                child: SectionHeading(title: 'Brands', showActionButton: false),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Brands
              GridLayout(itemCount: 8, mainAxisExtent: 80, itemBuilder: (context, index)=>BrandCard(onTap: ()=>Get.to(()=>const BrandProducts()), showBorder: true))
            ],
          ),
        ),
      ),
    );
  }
}