import 'package:cart_bliss/common/widgets/texts/section_heading.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: TSizes.spaceBtwItems),
        SectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: (){}),
        Text('Sophia', style: Theme.of(context).textTheme.bodyLarge),

        const SizedBox(height: TSizes.spaceBtwItems/2),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('+91 8645674569', style: Theme.of(context).textTheme.bodyMedium),
          ]
        ),
        const SizedBox(height: TSizes.spaceBtwItems/2),

        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Expanded(child: Text('IIIT Nagpur, Butibori, Maharastra', style: Theme.of(context).textTheme.bodyMedium, softWrap: true)),
          ]
        ),


      ],
    );
  }
}