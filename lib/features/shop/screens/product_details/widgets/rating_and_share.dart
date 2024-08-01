
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RatingAndShare extends StatelessWidget {
  const RatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Iconsax.star5, color: Colors.amber, size: TSizes.lg),
            const SizedBox(width: TSizes.sm),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: '5.0', style: Theme.of(context).textTheme.bodyLarge),
                  const TextSpan(text: '  '),
                  const TextSpan(text: '(268)')
                ]
              )
            ),
          ],
        ),
        IconButton(onPressed: (){}, icon: const Icon(Icons.share, size: TSizes.iconMd,))
      ],
    );
  }
}