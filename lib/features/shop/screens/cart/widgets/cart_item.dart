import 'package:cart_bliss/common/widgets/images/rounded_image.dart';
import 'package:cart_bliss/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:cart_bliss/common/widgets/texts/product_title_text.dart';
import 'package:cart_bliss/utils/constants/colors.dart';
import 'package:cart_bliss/utils/constants/image_strings.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:cart_bliss/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    final bool dark = HelperFunctions.isDarkMode(context);
    return Row(
      children: [
        // Image
        RoundedImage(
          imageUrl: TImages.productImage1,
          width: 75,
          height: 75,
          padding: EdgeInsets.zero,
          backgroundColor: dark ? TColors.darkerGrey : TColors.light,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
    
        // Title, Price & Size
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleTextWithVerifiedIcon(title: 'Nike'),
              const ProductTitleText(title: 'Sports Shoes', maxLines: 1),
    
              // Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Color: ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Red', style: Theme.of(context).textTheme.bodyLarge),
                    const TextSpan(text: '   '),
                    TextSpan(text: 'Size: ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: '10', style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}