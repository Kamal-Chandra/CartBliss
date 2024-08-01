import 'package:cart_bliss/features/shop/screens/sub_category/sub_category.dart';
import 'package:flutter/material.dart';
import 'package:cart_bliss/utils/constants/image_strings.dart';
import 'package:cart_bliss/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:get/get.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return VerticalImageText(image: TImages.shoeIcon, title: 'Shoes', onTap: ()=>Get.to(()=>const SubCategoriesScreen()), textColor: Colors.white);
        },
      ),
    );
  }
}
