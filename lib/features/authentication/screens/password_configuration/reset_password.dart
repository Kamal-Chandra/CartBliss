import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cart_bliss/utils/constants/texts.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:cart_bliss/utils/constants/image_strings.dart';
import 'package:cart_bliss/utils/helpers/helper_functions.dart';
import 'package:cart_bliss/features/authentication/screens/login/login.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(()=>const LoginScreen()),
            icon: const Icon(
              CupertinoIcons.clear,
              color: Colors.blue,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            Image(
              image: const AssetImage(TImages.deliveredEmailIllustration),
              width: HelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            // Title & SubTitle
            Text(
              TTexts.changePasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            Text(
              TTexts.changePasswordSubtitle,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            // Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(TTexts.done),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: const Text(TTexts.resendEmail),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems)
          ],
        ),
      ),
    );
  }
}