import 'package:cart_bliss/common/styles/rounded_container.dart';
import 'package:cart_bliss/utils/constants/colors.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:cart_bliss/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return RoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(TSizes.md),
      backgroundColor: selectedAddress? TColors.primary.withOpacity(0.5): Colors.transparent,
      borderColor: selectedAddress? Colors.transparent: dark? TColors.darkerGrey: TColors.darkGrey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 2,
            top: 0,
            child: Icon(
              selectedAddress? Iconsax.tick_circle5: null,
              color: selectedAddress? dark? TColors.light: TColors.dark.withOpacity(0.7): null
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Street Address
              Text(
                'Sophia',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(height: TSizes.sm/2),

              // Phone Number
              const Text('+91 8850385032', maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: TSizes.sm/2),
              const Text('IIIT Nagpur, Butibori, Maharastra', softWrap: true),
            ],
          )
        ],
      ),
    );
  }
}