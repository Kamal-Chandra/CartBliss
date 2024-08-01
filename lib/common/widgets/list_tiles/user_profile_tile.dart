import 'package:cart_bliss/features/personalization/screens/profile/profile.dart';
import 'package:cart_bliss/features/shop/screens/store/widgets/circular_image.dart';
import 'package:cart_bliss/utils/constants/colors.dart';
import 'package:cart_bliss/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ()=>Get.to(()=>const ProfileScreen()),
      leading: const CircularImage(image: TImages.user, width: 50, height: 50, padding: 0,),
      title: Text('Sophia', style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white)),
      subtitle: Text('sophia123@gmail.com', style: Theme.of(context).textTheme.bodySmall),
      trailing: IconButton(onPressed: (){}, icon: const Icon(Iconsax.edit, color: TColors.white)),
    );
  }
}