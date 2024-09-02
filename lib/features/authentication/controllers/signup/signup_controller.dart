import 'package:cart_bliss/data/repositories/authentication/authentication_repository.dart';
import 'package:cart_bliss/features/authentication/screens/signup/verify_email.dart';
import 'package:cart_bliss/data/repositories/user/user_repository.dart';
import 'package:cart_bliss/common/widgets/user_model/user_model.dart';
import 'package:cart_bliss/utils/popups/fullscreen_loader.dart';
import 'package:cart_bliss/utils/constants/image_strings.dart';
import 'package:cart_bliss/utils/helpers/network_manager.dart';
import 'package:cart_bliss/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final email = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  final GlobalKey<FormState> signupFormKey = GlobalKey<FormState>(); // Form Key for validation
  
  Future<void> signUp() async {
    try {
      // Start Loading
      FullScreenLoader.openLoadingDialog('We are processing your information', TImages.darkAppLogo);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      // Form Validation
      if(!signupFormKey.currentState!.validate()) return;

      // Privacy Policy
      if (!privacyPolicy.value) {
        Loaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message: 'In order to create account accept privacy policy & Terms of Use.'
        );
        return;
      }

      // Register user in the Firebase Authentication and Save user data in firebase
      final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());

      // Save authenticated user data in firebase firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        userName: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: ''
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      FullScreenLoader.stopLoading();
      Loaders.successSnackBar(title: 'Congratulations', message: 'Your account has been created! Verify email to continue.');
      Get.to(()=>const VerifyEmailScreen());

    } catch (e) {
      FullScreenLoader.stopLoading();
      Loaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}