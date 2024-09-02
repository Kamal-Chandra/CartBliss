import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';
import 'package:cart_bliss/utils/constants/texts.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:cart_bliss/utils/validators/validation.dart';
import 'package:cart_bliss/utils/helpers/helper_functions.dart';
import 'package:cart_bliss/features/authentication/controllers/signup/signup_controller.dart';
import 'package:cart_bliss/features/authentication/screens/signup/widgets/terms_and_conditions.dart';

class SignUpForm extends StatelessWidget {

  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    final controller = Get.put(SignUpController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) => Validator.validateEmptyText(TTexts.firstName, value),
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: 7),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) => Validator.validateEmptyText(TTexts.lastName, value),
                  decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwBoxes),

          // UserName
          TextFormField(
            controller: controller.username,
            validator: (value)=>Validator.validateEmptyText(TTexts.username, value),
            decoration: const InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwBoxes),

          // Email
          TextFormField(
            controller: controller.email,
            validator: (value)=>Validator.validateEmail(value),
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwBoxes),

          // Phone Number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => Validator.validatePhoneNumber(value),
            decoration: const InputDecoration(
              labelText: TTexts.phoneNumber,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwBoxes),

          // Password
          Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value)=>Validator.validatePassword(value),
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                labelText: TTexts.password,
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  onPressed: () => controller.hidePassword.value = !controller.hidePassword.value,
                  icon: Icon(controller.hidePassword.value? Iconsax.eye_slash: Iconsax.eye)
                )
              ),
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
              onPressed: ()=>controller.signUp(),
              child: const Text(TTexts.createAccount),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwBoxes),
        ],
      ),
    );
  }
}