import 'package:cart_bliss/common/widgets/appbar/appbar.dart';
import 'package:cart_bliss/common/widgets/images/rounded_image.dart';
import 'package:cart_bliss/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:cart_bliss/common/widgets/texts/section_heading.dart';
import 'package:cart_bliss/utils/constants/image_strings.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Sports'), showBackArrow: true),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Banner
              const RoundedImage(imageUrl: TImages.promobanner1, applyImageRadius: true, width: double.infinity),

              const SizedBox(height: TSizes.spaceBtwSections),

              // Sub Categories
              Column(
                children: [
                  // Heading
                  SectionHeading(title: 'Sports Equipments', onPressed: (){}),
                  const SizedBox(height: TSizes.spaceBtwItems/2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const SizedBox(width: TSizes.spaceBtwItems),
                      itemBuilder: (context, index) => const ProductCardHorizontal(),
                    ),
                  )

                ],
              )

            ],
          ),
        ),
      )
    );
  }
}