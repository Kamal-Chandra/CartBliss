import 'package:flutter/material.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:cart_bliss/utils/constants/texts.dart';
import 'package:cart_bliss/common/widgets/login_signup/form_divider.dart';
import 'package:cart_bliss/common/widgets/login_signup/social_buttons.dart';
import 'package:cart_bliss/features/authentication/screens/signup/widgets/signup_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                TTexts.signupTitle, 
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Form
              const SignUpForm(),

              // Divider
              const FormDivider(dividerText: 'Or Sign Up With'),
              const SizedBox(height: TSizes.spaceBtwBoxes),

              // Social Button
              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}