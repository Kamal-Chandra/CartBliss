import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:cart_bliss/utils/constants/colors.dart';
import 'package:cart_bliss/common/widgets/images/rounded_image.dart';
import 'package:cart_bliss/features/shop/controllers/home_controller.dart';
import 'package:cart_bliss/common/widgets/custom_shapes/containers/circularContainer.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners.map((url) => RoundedImage(imageUrl: url)).toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        ),

        const SizedBox(height: TSizes.spaceBtwItems),

        Obx(() => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < banners.length; i++)
              CircularContainer(
                width: TSizes.lg,
                height: TSizes.xs,
                backgroundColor: controller.carouselCurrentIndex.value == i ? TColors.primary : Colors.grey,
                margin: const EdgeInsets.only(right: TSizes.md),
              ),
          ],
        )),
      ],
    );
  }
}
