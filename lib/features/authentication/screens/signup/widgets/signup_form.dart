import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';
import 'package:cart_bliss/utils/constants/texts.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:cart_bliss/utils/helpers/helper_functions.dart';
import 'package:cart_bliss/features/authentication/screens/signup/widgets/terms_and_conditions.dart';
import 'package:cart_bliss/features/authentication/screens/signup/verify_email.dart';

class SignUpForm extends StatelessWidget {

  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          const Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              SizedBox(width: 7),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwBoxes),

          // UserName
          const TextField(
            decoration: InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwBoxes),

          // Email
          const TextField(
            decoration: InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwBoxes),

          // Phone Number
          const TextField(
            decoration: InputDecoration(
              labelText: TTexts.phoneNumber,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwBoxes),

          // Password
          const TextField(
            decoration: InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwBoxes),

          // Terms & Conditions Checkbox
          TermsAndConditionsCheckbox(dark: dark),
          const SizedBox(height: TSizes.spaceBtwBoxes),

          // Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(()=>const VerifyEmailScreen()),
              child: const Text(TTexts.createAccount),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwBoxes),
        ],
      ),
    );
  }
}