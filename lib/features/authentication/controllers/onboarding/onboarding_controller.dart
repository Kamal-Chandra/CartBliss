import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:cart_bliss/features/authentication/screens/login/login.dart';
import 'package:get_storage/get_storage.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  final currentPageIndex = 0.obs;

  // Update Current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // Jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // Update Current Index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      final storage = GetStorage();
      storage.write('isNew', false);
      Get.offAll(const LoginScreen());
    } else {
      currentPageIndex.value+=1;
      pageController.jumpToPage(currentPageIndex.value);
    }
  }

  // Update Current Index & jump to the last Page
  void skipPage() {
    currentPageIndex.value=2;
    pageController.jumpToPage(2);
  }
}