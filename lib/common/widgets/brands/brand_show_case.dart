import 'package:flutter/material.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:cart_bliss/utils/constants/colors.dart';
import 'package:cart_bliss/utils/helpers/helper_functions.dart';
import 'package:cart_bliss/common/styles/rounded_container.dart';
import 'package:cart_bliss/common/widgets/images/rounded_image.dart';
import 'package:cart_bliss/features/shop/screens/store/widgets/brand_card.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      child: Column(
        children: [
          
          // Brands With Products Count
          BrandCard(onTap: () {}, showBorder: false),

          // Brand Top 3 Products Image
          Padding(
            padding: const EdgeInsets.only(bottom: TSizes.sm),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: images.map((image) => brandTopProductImageWidget(image, context)).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return RoundedContainer(
      padding: const EdgeInsets.all(TSizes.xs),
      height: 100,
      backgroundColor: dark ? TColors.darkerGrey : TColors.light,
      child: RoundedImage(imageUrl: image),
    );
  }
}