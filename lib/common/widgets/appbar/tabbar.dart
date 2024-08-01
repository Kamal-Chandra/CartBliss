import 'package:flutter/material.dart';
import 'package:cart_bliss/utils/constants/colors.dart';
import 'package:cart_bliss/utils/device/device_utility.dart';
import 'package:cart_bliss/utils/helpers/helper_functions.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Material(
      color: dark? Colors.black: Colors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primary,
        labelColor: dark? TColors.white: TColors.primary,
        unselectedLabelColor: TColors.darkGrey,
      ),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}