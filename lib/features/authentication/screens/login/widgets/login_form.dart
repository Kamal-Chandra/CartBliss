import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';
import 'package:cart_bliss/navigation_menu.dart';
import 'package:cart_bliss/utils/constants/texts.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:cart_bliss/features/authentication/screens/signup/signup.dart';
import 'package:cart_bliss/features/authentication/screens/password_configuration/forgot_password.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwItems),
        child: Column(
          children: [
            // Email
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
        
            // Password
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash)
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields/2),
        
            // Remember Me & Forget Password
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    // Remember Me
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
                        const Text(TTexts.rememberMe)
                      ],
                    ),

                    // Forget Password
                    Expanded(
                      child: TextButton(
                        onPressed: () =>Get.to(()=>const ForgotPassword()),
                        child: const Text(TTexts.forgotPassword),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: TSizes.spaceBtwInputFields),

                // Sign In Button
                ElevatedButton(
                  onPressed: ()=>Get.to(()=>const NavigationMenu()),
                  child: const Text(TTexts.signIn),
                ),

                const SizedBox(height: TSizes.sm),

                // Create Account Button
                OutlinedButton(
                  onPressed: () => Get.to(() => const SignUpScreen()),
                  child: const Text(TTexts.createAccount),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}