
import 'package:flutter/material.dart';
import 'package:cart_bliss/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';

class OverallProductRating extends StatelessWidget {
  const OverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Text(
            "4.5",
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RatingProgressIndicator(text: '5', value: 0.5),
              RatingProgressIndicator(text: '4', value: 0.25),
              RatingProgressIndicator(text: '3', value: 0.15),
              RatingProgressIndicator(text: '2', value: 0.10),
              RatingProgressIndicator(text: '1', value: 0.10),
            ],
          ),
        ),
      ],
    );
  }
}