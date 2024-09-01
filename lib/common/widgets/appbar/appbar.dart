  import 'package:cart_bliss/utils/constants/colors.dart';
  import 'package:cart_bliss/utils/helpers/helper_functions.dart';
  import 'package:get/get.dart';
  import 'package:iconsax/iconsax.dart';
  import 'package:flutter/material.dart';
  import 'package:cart_bliss/utils/constants/sizes.dart';
  import 'package:cart_bliss/utils/device/device_utility.dart';

  class TAppBar extends StatelessWidget implements PreferredSizeWidget {
    const TAppBar({
      super.key,
      this.title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.actions,
      this.color=TColors.primary,
      this.leadingOnPressed,
    });

    final Widget? title;
    final bool showBackArrow;
    final IconData? leadingIcon;
    final List<Widget>? actions;
    final Color color;
    final VoidCallback? leadingOnPressed;

    @override
    Widget build(BuildContext context) {
      final dark = HelperFunctions.isDarkMode(context);
      final titleStyle = dark
          ? Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white)
          : Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.black);
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
        child: AppBar(
          automaticallyImplyLeading: false,
          leading: showBackArrow
              ? IconButton(onPressed: () => Get.back(), icon: Icon(Iconsax.arrow_left, color: color))
              : leadingIcon != null
                  ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon))
                  : null,
          title: title != null
              ? DefaultTextStyle(
                  style: titleStyle ?? const TextStyle(),
                  child: title!,
                )
              : null,
          actions: actions,
        ),
      );
    }

    @override
    Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
  }