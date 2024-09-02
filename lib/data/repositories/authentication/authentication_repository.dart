import 'package:cart_bliss/features/authentication/screens/onboarding/onboarding.dart';
import 'package:cart_bliss/features/authentication/screens/login/login.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:cart_bliss/utils/exceptions/exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect () async {
    deviceStorage.writeIfNull('isNew', true);
    deviceStorage.read('isNew') != true ? Get.offAll(()=>const LoginScreen()) : Get.offAll(()=>const OnBoardingScreen());
  }

  // Register using Email and Password
  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch(e) {
      throw TFirebaseAuthException(e.code);
    } on FirebaseException catch(e) {
      throw TFirebaseException(e.code);
    } on FormatException catch(_) {
      throw const FormatException();
    } on PlatformException catch(e) {
      throw TPlatformException(e.code);
    } catch(e) {
      throw 'Something went wrong. Please try again.';
    }
  }
}