import 'package:cart_bliss/utils/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:cart_bliss/utils/helpers/helper_functions.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:cart_bliss/utils/constants/colors.dart';
import 'package:cart_bliss/utils/constants/image_strings.dart';
import 'package:cart_bliss/common/styles/rounded_container.dart';
import 'package:cart_bliss/features/shop/screens/store/widgets/circular_image.dart';
import 'package:cart_bliss/common/widgets/texts/brand_title_text_with_verified_icon.dart';

class BrandCard extends StatelessWidget {
  final VoidCallback onTap;

  const BrandCard({
    super.key,
    required this.onTap,
    this.showBorder = true,
  });
  
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
        padding: const EdgeInsets.only(left: TSizes.sm, top: TSizes.md, bottom: TSizes.md),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            CircularImage(
              height: 45,
              width: 45,
              image: TImages.shoeIcon,
              backgroundColor: Colors.transparent,
              overlayColor: dark ? TColors.white : TColors.black,
            ),
            const SizedBox(width: TSizes.spaceBtwBoxes / 2),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const BrandTitleTextWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 Products',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
