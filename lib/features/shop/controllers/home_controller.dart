import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  // Initialize the reactive variable
  var carouselCurrentIndex = 0.obs;

  // Method to update the current index
  void updatePageIndicator(int index) {
    carouselCurrentIndex.value = index;
  }
}