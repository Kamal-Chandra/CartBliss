import 'package:cart_bliss/common/widgets/appbar/appbar.dart';
import 'package:cart_bliss/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(showBackArrow: true, title: Text('Add new address')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: 'Name', border: OutlineInputBorder())),
                const SizedBox(height: TSizes.defaultSpace),
                TextFormField(
                  decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_34), labelText: 'Street', border: OutlineInputBorder()),
                  maxLines: 3,
                  keyboardType: TextInputType.multiline,
                ),
                const SizedBox(height: TSizes.defaultSpace),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building), labelText: 'City', border: OutlineInputBorder())),
                const SizedBox(height: TSizes.defaultSpace),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity), labelText: 'State', border: OutlineInputBorder())),
                const SizedBox(height: TSizes.defaultSpace),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global), labelText: 'Country', border: OutlineInputBorder())),
                const SizedBox(height: TSizes.defaultSpace),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.location), labelText: 'Postal Code', border: OutlineInputBorder())),
                const SizedBox(height: TSizes.defaultSpace),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText: 'Phone Number', border: OutlineInputBorder())),
                const SizedBox(height: TSizes.defaultSpace),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Save'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}