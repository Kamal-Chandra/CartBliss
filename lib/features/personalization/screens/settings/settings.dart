import 'package:cart_bliss/common/widgets/appbar/appbar.dart';
import 'package:cart_bliss/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:cart_bliss/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:cart_bliss/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:cart_bliss/common/widgets/texts/section_heading.dart';
import 'package:cart_bliss/features/personalization/screens/address/address.dart';
import 'package:cart_bliss/features/shop/screens/cart/cart.dart';
import 'package:cart_bliss/features/shop/screens/orders/orders.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isGeolocationEnabled = true;
  bool isSafeModeEnabled = true;
  bool isHdImageEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            const PrimaryHeaderContainer(
              child: Column(
                children: [
                  // AppBar
                  TAppBar(title: Text("Account")),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // User Profile Card
                  UserProfileTile(),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Account Settings
                  const SectionHeading(title: 'Account Settings', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SettingsMenuTile(icon: Iconsax.safe_home, title: 'Address', subtitle: 'Set shopping delivery address', onTap: ()=>Get.to(()=>const UserAddressScreen())),
                  SettingsMenuTile(icon: Iconsax.shopping_cart, title: 'Cart', subtitle: 'Add, remove products and move to checkout', onTap: ()=>Get.to(()=>const CartScreen())),
                  SettingsMenuTile(icon: Iconsax.bag_tick, title: 'Orders', subtitle: 'In-progress and Completed Orders', onTap: ()=>Get.to(()=>const OrderScreen())),
                  SettingsMenuTile(icon: Iconsax.bank, title: 'Bank Account', subtitle: 'Withdraw balance to registered bank account', onTap: () {}),
                  SettingsMenuTile(icon: Iconsax.discount_shape, title: 'Coupons', subtitle: 'List of all the discount coupons', onTap: () {}),
                  SettingsMenuTile(icon: Iconsax.notification, title: 'Notifications', subtitle: 'Manage Notification Settings', onTap: () {}),
                  SettingsMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subtitle: 'Manage data usage and connected accounts', onTap: () {}),

                  // App Settings
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const SectionHeading(title: 'App Settings', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  SettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subtitle: 'Upload Data to your Cloud Firebase', onTap: () {}),
                  SettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'Set recommendation based on location',
                    trailing: Switch(
                      value: isGeolocationEnabled,
                      onChanged: (value) {
                        setState(() {
                          isGeolocationEnabled = value;
                        });
                      },
                    ),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subtitle: 'Search result is safe for all ages',
                    trailing: Switch(
                      value: isSafeModeEnabled,
                      onChanged: (value) {
                        setState(() {
                          isSafeModeEnabled = value;
                        });
                      },
                    ),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD image quality',
                    subtitle: 'Set image quality to be seen',
                    trailing: Switch(
                      value: isHdImageEnabled,
                      onChanged: (value) {
                        setState(() {
                          isHdImageEnabled = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
