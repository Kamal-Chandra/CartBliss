import 'package:cart_bliss/common/widgets/appbar/appbar.dart';
import 'package:cart_bliss/common/widgets/products/sortable/sortable_products.dart';
import 'package:cart_bliss/features/shop/screens/store/widgets/brand_card.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Nike'),
        showBackArrow: true
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Brand Detail
              BrandCard(onTap: ()=>Get.to(()=>const BrandProducts())),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Sortable Products
              const SortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}