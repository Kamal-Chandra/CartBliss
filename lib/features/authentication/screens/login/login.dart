import 'widgets/login_form.dart';
import 'widgets/login_header.dart';
import 'package:flutter/material.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:cart_bliss/utils/constants/texts.dart';
import 'package:cart_bliss/common/styles/spacing_styles.dart';
import 'package:cart_bliss/common/widgets/login_signup/form_divider.dart';
import 'package:cart_bliss/common/widgets/login_signup/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingwithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title & Sub-Title
              LoginHeader(),

              // Form
              LoginForm(),

              // Divider
              FormDivider(dividerText: TTexts.orSignInWith),

              SizedBox(height: TSizes.spaceBtwItems),
              
              // Footer
              SocialButtons()
            ]
          ),
        ),
      )
    );
  }
}