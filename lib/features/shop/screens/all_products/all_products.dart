import 'package:cart_bliss/common/widgets/appbar/appbar.dart';
import 'package:cart_bliss/common/widgets/products/sortable/sortable_products.dart';
import 'package:flutter/material.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        title: Text('Popular Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.zero,
          child: SortableProducts(),
        ),
      ),
    );
  }
}