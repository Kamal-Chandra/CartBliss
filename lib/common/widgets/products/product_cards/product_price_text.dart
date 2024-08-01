import 'package:flutter/material.dart';

class ProductPriceText extends StatelessWidget {
  const ProductPriceText({
    super.key,
    this.currencySign = '\$',
    required this.price,
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrough = false,
  });

  final String currencySign;
  final String price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = isLarge
        ? Theme.of(context).textTheme.headlineSmall!
        : Theme.of(context).textTheme.bodyMedium!;

    if (lineThrough) {
      textStyle = textStyle.copyWith(decoration: TextDecoration.lineThrough);
    }

    return Text(
      '$currencySign$price',
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: textStyle,
    );
  }
}