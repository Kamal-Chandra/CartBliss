import 'package:cart_bliss/common/widgets/appbar/appbar.dart';
import 'package:cart_bliss/common/widgets/products/ratings/rating_bar_indicator.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'widgets/progress_indicator_and_rating.dart';
import 'package:flutter/material.dart';

import 'widgets/user_review_card.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Ratings and reviews are verified and are from people who use the same type of device that you use."
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              
              // Overall Product Ratings
              const OverallProductRating(),
              const SizedBox(height: TSizes.spaceBtwItems),

              const TRatingBarIndicator(rating: 4.5),
              Text("5,683", style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections),

              // User Reviews List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              

            ],
          ),
        ),
      ),
    );
  }
}