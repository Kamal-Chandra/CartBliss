
import 'package:cart_bliss/common/styles/rounded_container.dart';
import 'package:cart_bliss/utils/constants/colors.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:cart_bliss/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CouponCode extends StatelessWidget {
  const CouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final bool dark=HelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.all(TSizes.md),
      child: RoundedContainer(
        showBorder: true,
        backgroundColor: dark? TColors.dark: TColors.light,
        padding: const EdgeInsets.only(top: TSizes.sm, bottom: TSizes.sm, right: TSizes.sm, left: TSizes.md),
        child: Row(
          children: [
            Flexible(
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter Promo Code',
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),
      
            // Buttons
            SizedBox(
              width: 70,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  foregroundColor: dark? TColors.white.withOpacity(0.8): TColors.dark.withOpacity(0.8)
                ),
                child: const Text('Apply')
              )
            )
          ],
        ),
      ),
    );
  }
}