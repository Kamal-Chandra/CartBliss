import 'package:cart_bliss/common/widgets/appbar/appbar.dart';
import 'package:cart_bliss/common/widgets/texts/section_heading.dart';
import 'package:cart_bliss/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:cart_bliss/features/shop/screens/store/widgets/circular_image.dart';
import 'package:cart_bliss/utils/constants/image_strings.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircularImage(image: TImages.user, width: 80, height: 80),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),
                  ]
                )
              ),

              // Details
              const SizedBox(height: TSizes.spaceBtwBoxes/2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwBoxes),

              // Profile Information
              const SectionHeading(title: 'Profile Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwBoxes/2),

              ProfileMenu(title: 'Name', value: 'Sophia', onPressed: (){}),
              ProfileMenu(title: 'User Name', value: 'sophia58', onPressed: (){}),

              const SizedBox(height: TSizes.spaceBtwBoxes),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwBoxes),
              
              // Personal Information
              const SectionHeading(title: 'Personal Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwBoxes/2),

              ProfileMenu(title: 'User ID', value: '4564865', icon:Iconsax.copy, onPressed: (){}),
              ProfileMenu(title: 'E-mail', value: 'sophia@gmail.com', onPressed: (){}),
              ProfileMenu(title: 'Phone', value: '+91 8385454753', onPressed: (){}),
              ProfileMenu(title: 'Gender', value: 'Female', onPressed: (){}),
              ProfileMenu(title: 'Date of Birth', value: '29-07-2000', onPressed: (){}),

              const Divider(),
              const SizedBox(height: TSizes.spaceBtwBoxes),

              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text('Close Account', style: TextStyle(color: Colors.red))
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}