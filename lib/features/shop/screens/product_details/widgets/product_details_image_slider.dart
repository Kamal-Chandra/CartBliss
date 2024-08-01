
import 'package:cart_bliss/common/widgets/Icons/circular_icon.dart';
import 'package:cart_bliss/common/widgets/appbar/appbar.dart';
import 'package:cart_bliss/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:cart_bliss/common/widgets/images/rounded_image.dart';
import 'package:cart_bliss/utils/constants/colors.dart';
import 'package:cart_bliss/utils/constants/image_strings.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:cart_bliss/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final bool dark = HelperFunctions.isDarkMode(context);
    return CustomCurvedEdge(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            // Main Large Image
            const SizedBox(
              height: 450,
              child: Padding(
                padding: EdgeInsets.all(TSizes.xs / 2),
                child: Image(
                  image: AssetImage(TImages.productImage1),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
            // Image Slider
            Positioned(
              bottom: 30,
              left: 15,
              right: 15,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (_, __) => const SizedBox(width: TSizes.spaceBtwItems),
                  itemCount: 6,
                  itemBuilder: (_, index) => RoundedImage(
                    width: 65,
                    border: Border.all(color: TColors.black),
                    padding: const EdgeInsets.all(TSizes.xs / 8),
                    backgroundColor: dark ? TColors.dark : TColors.white,
                    imageUrl: TImages.productImage1,
                  ),
                ),
              ),
            ),
    
            // AppBar Icons
            const TAppBar(
              color: TColors.black,
              showBackArrow: true,
              actions: [
                CircularIcon(icon: Iconsax.heart5, color: Colors.red),
    
              ],
            )
          ],
        ),
      ),
    );
  }
}