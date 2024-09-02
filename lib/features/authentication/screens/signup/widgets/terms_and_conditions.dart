import 'package:cart_bliss/features/authentication/controllers/signup/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:cart_bliss/utils/constants/texts.dart';
import 'package:cart_bliss/utils/constants/colors.dart';
import 'package:get/get.dart';

class TermsAndConditionsCheckbox extends StatelessWidget {
  TermsAndConditionsCheckbox({
    super.key,
    required this.dark,
  });

  final bool dark;
  final controller = SignUpController.instance;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx( ()=>Checkbox(
              value: controller.privacyPolicy.value,
              onChanged: (value) => controller.privacyPolicy.value = !controller.privacyPolicy.value,
            ),
          ),
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '\t${TTexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: '${TTexts.privacyPolicy}\n',
                  style: Theme.of(context).textTheme.bodyMedium?.apply(color: dark ? TColors.white : TColors.primary),
                ),
                TextSpan(
                  text: '\tand ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: TTexts.termsOfUse,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}