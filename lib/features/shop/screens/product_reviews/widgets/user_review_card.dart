import 'package:cart_bliss/common/styles/rounded_container.dart';
import 'package:cart_bliss/common/widgets/products/ratings/rating_bar_indicator.dart';
import 'package:cart_bliss/utils/constants/colors.dart';
import 'package:cart_bliss/utils/constants/image_strings.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:cart_bliss/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});
  
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(TImages.user)),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text('Sophia', style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems),

        // Reviews
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('30 July, 2024', style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems),

        const ReadMoreText(
          'This product is good. Excellent shopping experience. Deserve 4 stars, disappointed by seller experience but overall app is good. Excellent work by developers',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: '\nShow Less',
          trimCollapsedText: 'Show More',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        // Company Review
        RoundedContainer(
          backgroundColor: dark? TColors.darkerGrey: TColors.darkGrey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Everest Store', style: Theme.of(context).textTheme.titleMedium),
                    Text('30 July, 2024', style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                const ReadMoreText(
                  'This product is good. Excellent shopping experience. Deserve 4 stars, disappointed by seller experience but overall app is good. Excellent work by developers',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: '\nShow Less',
                  trimCollapsedText: 'Show More',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections)
      ],
    );
  }
}