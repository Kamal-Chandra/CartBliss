import 'package:cart_bliss/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:cart_bliss/utils/constants/colors.dart';
import 'package:cart_bliss/utils/device/device_utility.dart';
import 'package:cart_bliss/utils/helpers/helper_functions.dart';

class OnBoardingNextWidget extends StatelessWidget {
  const OnBoardingNextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: DeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark?TColors.primary:Colors.black
        ),
        child: const Icon(Iconsax.arrow_right_3)
      )
    );
  }
}